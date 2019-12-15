/// @description Insert description here
// You can write your code in this editor
if is_dead {
	if mspd > 0 {
		mspd -= 0.3;			
	}
	if mspd < 0 {
		mspd += 0.3;	
	}
	if -0.3 <= mspd && 0.3 >= mspd {
		mspd = 0;	
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
			if rectangle_in_rectangle(bbox_left,bbox_bottom,x,bbox_top,obj_gario.x, obj_gario.bbox_bottom, obj_gario.bbox_right, obj_gario.y) && obj_gario.phy_linear_velocity_y <= 0 {
				mspd = 4;	
			}
			else if rectangle_in_rectangle(x,bbox_bottom,bbox_right,bbox_top,obj_gario.bbox_left, obj_gario.bbox_bottom, obj_gario.x, obj_gario.y) && obj_gario.phy_linear_velocity_y <= 0 {
				mspd = -4;	
			}
			else if rectangle_in_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_top,obj_gario.bbox_left, obj_gario.bbox_bottom, obj_gario.bbox_right, obj_gario.y) && obj_gario.phy_linear_velocity_y > 0 {
				obj_gario.phy_linear_velocity_y = -550;
				audio_play_sound(snd_gario_superjump,1,0);
			}
		}
	}
	
	image_xscale = death_dir;
}
else {
	if place_meeting(x,y-4,obj_gario) && obj_gario.phy_linear_velocity_y > 0 {
		obj_gario.phy_linear_velocity_y = -550;
		is_dead_anim = true;
		is_dead = true;
		phy_linear_velocity_y = -280;
		sprite_index = red_roomba_elec;
		death_dir = sign(mspd);
		audio_play_sound(snd_roomba_death,1,0);
	} else if mspd > 0 {
		if collision_line(bbox_right,y,bbox_right+(range*sign(mspd)),y,obj_gario,false,false) && obj_gario.hp > 0 {
			scr_gario_dmg(3);
		}
	}
	if place_meeting(x+3*mspd, y, obj_solid) {
		mspd *= -1;	
	}
	
	
		
	image_xscale = sign(mspd);
		
}

phy_position_x += mspd;
image_speed = 1;