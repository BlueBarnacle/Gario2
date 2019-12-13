/// @description Gario Move
scr_input_keyboard();

//Horizontal Mechanism
dir = InputRight - InputLeft;
phy_position_x += dir*mspd;
if dir != 0 {
	sprite_index = spr_gario_walk;
	image_xscale = dir;
	vel = 1;
} else {
	sprite_index = spr_gario_idle;
}

//Jumping Mechanism
if InputJump && position_meeting(x,y+(sprite_height/2)+1,obj_parent_solid) {
	phy_linear_velocity_y = -400;
}

if phy_linear_velocity_y > 0 {
	sprite_index = spr_gario_fall
} else if phy_linear_velocity_y < 0 {
	sprite_index = spr_gario_jump
}

//Death
if invframe == 0 && (place_meeting(x+1,y-4,obj_moomba) || place_meeting(x-1,y-4,obj_moomba)){
	hp--
	invframe = 45;
}
if hp == 0 {
	invframe = 0;
	state = scr_state_death();
}
hp = min(maxhp,hp);
hp = max(0,hp);
invframe --;
invframe = max(invframe,0);

if invframe <= 0 {
	image_alpha = 1;	
} else {
	image_alpha = 0.5;	
}