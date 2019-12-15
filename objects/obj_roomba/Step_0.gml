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
		sprite_index = roomba_dead;
	}
	else {
		if y > 50000 {
			instance_destroy();	
			show_debug_message("Death is bad.");
		}
		else {
			if rectangle_in_rectangle(bbox_left,bbox_bottom,x,bbox_top,obj_gario.x, obj_gario.bbox_bottom, obj_gario.bbox_right, obj_gario.y) {
				mspd = 6;	
			}
			else if rectangle_in_rectangle(x,bbox_bottom,bbox_right,bbox_top,obj_gario.bbox_left, obj_gario.bbox_bottom, obj_gario.x, obj_gario.y) {
				mspd = -6;	
			}
		}
	}
	
	image_xscale = death_dir;
}
else {
	if is_shooting && is_shooting_anim_tick > 0 {
		mspd = 0;
		
		if place_meeting(x,y-4,obj_gario) && obj_gario.phy_linear_velocity_y > 0 {
			obj_gario.phy_linear_velocity_y = -200;
			is_dead_anim = true;
			is_dead = true;
			phy_linear_velocity_y = -100;
			show_debug_message("Inside death spot.");
			sprite_index = roomba_elec;
		}
		
		if is_shooting_anim_tick == 32 {
			if collision_line(x,y,x+(j*death_dir),y,obj_gario,false,false) && obj_gario.hp > 0 {
				scr_gario_dmg(4);
			}
			if (point_in_rectangle(obj_gario.x, obj_gario.y, x - window_get_width()/2, y - window_get_height()/2, x + window_get_width()/2, y + window_get_height()/2)) {
				audio_play_sound(snd_roomba_shoot,1,0);
			}
		}
		
		image_xscale = death_dir;
		
		is_shooting_anim_tick -= 1;
	}
	else if is_shooting && is_shooting_anim_tick == 0 {
		mspd = death_dir;
		sprite_index = roomba_idle;
		
		image_xscale = death_dir;
		is_shooting = false;
	}
	else {
		if place_meeting(x+3*mspd, y, obj_solid) {
			mspd *= -1;	
		} else if !place_meeting(x+19*mspd, y+16, obj_solid) {
			mspd *= -1;	
		} else

		if place_meeting(x,y-4,obj_gario) && obj_gario.phy_linear_velocity_y > 0 {
			obj_gario.phy_linear_velocity_y = -200;
			is_dead_anim = true;
			is_dead = true;
			phy_linear_velocity_y = -100;
			show_debug_message("Inside death spot.");
			sprite_index = roomba_elec;
			death_dir = sign(mspd);
			audio_play_sound(snd_roomba_death,1,0);
		}
		
		image_xscale = sign(mspd);
		
		randomize();
		if irandom(56) == 0{
			death_dir = sign(mspd);
			if collision_line(x,y,x+(range*death_dir),y,obj_solid,false,false){
				show_debug_message("Solid in range");
				for (j = range; j > 0; j--) {
					if !(collision_line(x,y,x+(j*death_dir),y,obj_solid,false,false)) {
						k = 1;
						break
					}
				} 
			} else {
				j = range;
				k = 1;
			}
			if (collision_line(x,y,x+(j*death_dir),y,obj_gario,false,false)) {
				sprite_index = roomba_shoot;
				mspd = 0;
				is_shooting_anim_tick = 60;
				is_shooting = true;
			} 
		}
	}
}

phy_position_x += mspd;
image_speed = 1;