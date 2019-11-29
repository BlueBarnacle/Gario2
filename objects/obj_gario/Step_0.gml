/// @description Gario Move
scr_input_keyboard();

//Horizontal Mechanism
hmov = InputRight - InputLeft;
phy_position_x += hmov*4;
if hmov != 0 {
	sprite_index = spr_gario_walk;
	image_xscale = hmov;
} else {
	sprite_index = spr_gario_idle;
}

//Jumping Mechanism
if InputJump and place_meeting(x,y+1,obj_solid) {
	 phy_linear_velocity_y = -300;
}

if phy_linear_velocity_y > 0 {
	sprite_index = spr_gario_fall
} else if phy_linear_velocity_y < 0 {
	sprite_index = spr_gario_jump
}
