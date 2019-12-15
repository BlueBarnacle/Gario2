if is_dead && is_dead_anim_tick > 0 {
	is_dead_anim_tick -= 1;
	if is_dead_anim_tick == 0 {
		instance_destroy();	
	}
}
else {
	if place_meeting(x+mspd,y,obj_solid){
		mspd *= -1;
	}
	if place_meeting(x,y-4,obj_gario) && obj_gario.phy_linear_velocity_y > 0 {
		obj_gario.phy_linear_velocity_y = -200;
		sprite_index = spr_moomba_squash;
		is_dead = true;
		audio_play_sound(snd_moomba_squash,1,0);
	} else if place_meeting(x,y,obj_gario) {
		scr_gario_dmg(1);
	}
	if place_meeting(x,y+(sprite_height/2)+1,obj_moomba) {
		image_speed = 0;
	}
	phy_position_x += mspd;
	image_speed = 1;
	image_xscale = sign(mspd);
}