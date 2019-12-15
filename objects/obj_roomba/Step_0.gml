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
			
			if place_meeting(x+obj_gario.mspd, y, obj_gario) {
				mspd = 6 * sign(obj_gario.mspd);	
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
			var i;
			for (i = 0; i < 50; i++) {
				if place_meeting(x+3*i*death_dir, y, obj_gario) {
					obj_gario.hp -= 8;
					i = 50;
				}
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
		}

		if place_meeting(x,y-4,obj_gario) && obj_gario.phy_linear_velocity_y > 0 {
			obj_gario.phy_linear_velocity_y = -200;
			is_dead_anim = true;
			is_dead = true;
			phy_linear_velocity_y = -100;
			show_debug_message("Inside death spot.");
			sprite_index = roomba_elec;
			death_dir = sign(mspd);
		}
		
		image_xscale = sign(mspd);
		
		randomize();
		if irandom(119) == 0 {
			sprite_index = roomba_shoot;
			death_dir = sign(mspd);
			mspd = 0;
			is_shooting_anim_tick = 60;
			is_shooting = true;
		}
	}
}

phy_position_x += mspd;
image_speed = 1;