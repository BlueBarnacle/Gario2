/// @description Insert description here
// You can write your code in this editor

if is_dead {
	if mspd > 0 {
		mspd -= 0.2;			
	}
	if mspd < 0 {
		mspd += 0.2;	
	}
	
	if is_dead_anim && is_dead_anim_tick > 0 {
		is_dead_anim_tick -= 1;
	}
	else if is_dead_anim && is_dead_anim_tick == 0 {
		is_dead_anim = false;
		sprite_index = red_roomba_dead;
	}
	else {
		if y > 50000 {
			instance_destroy();	
		}
		else {
			
			if place_meeting(x+obj_gario.mspd, y, obj_gario) {
				mspd = 6 * sign(obj_gario.mspd);	
			}
		}
	}
	
	image_xscale = death_dir;
}
else {
	if place_meeting(x+3*mspd, y, obj_solid) {
		mspd *= -1;	
	}
	
	if mspd > 0 {
		if collision_line(bbox_right,y,bbox_right+range,y,obj_gario,false,false) && obj_gario.hp > 0 {
			scr_gario_dmg(3);
		}
	}
	else{
		if collision_line(bbox_left,y,bbox_left-range,y,obj_gario,false,false) && obj_gario.hp > 0 {
			scr_gario_dmg(3);
		}
	}

	if place_meeting(x,y-4,obj_gario) && obj_gario.phy_linear_velocity_y > 0 {
		obj_gario.phy_linear_velocity_y = -200;
		is_dead_anim = true;
		is_dead = true;
		phy_linear_velocity_y = -400;
		sprite_index = red_roomba_elec;
		death_dir = sign(mspd);
		audio_play_sound(snd_roomba_death,1,0);
	}
		
	image_xscale = sign(mspd);
		
}

phy_position_x += mspd;
image_speed = 1;