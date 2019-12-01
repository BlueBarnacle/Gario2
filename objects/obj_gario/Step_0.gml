/// @description Gario Move
scr_input_keyboard();

//Horizontal Mechanism
dir = InputRight - InputLeft;
phy_position_x += dir*mspd;
if dir != 0 {
	sprite_index = spr_gario_walk;
	image_xscale = dir;
} else {
	sprite_index = spr_gario_idle;
}

//Jumping Mechanism
if InputJump && place_meeting(x,y+1,obj_solid) {
	 phy_linear_velocity_y = -300;
}

if phy_linear_velocity_y > 0 {
	sprite_index = spr_gario_fall
} else if phy_linear_velocity_y < 0 {
	sprite_index = spr_gario_jump
}

//Death
if place_meeting(x+1,y-4,obj_moomba) || place_meeting(x-1,y-4,obj_moomba){
	room_restart();
}