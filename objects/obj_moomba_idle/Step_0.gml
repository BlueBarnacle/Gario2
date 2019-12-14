if place_meeting(x+mspd,y,obj_solid){
	mspd *= 1;
}

if place_meeting(x,y-4,obj_gario) && obj_gario.phy_linear_velocity_y > 0 {
	obj_gario.phy_linear_velocity_y = -200;
	instance_destroy();
}
if place_meeting(x,y+(sprite_height/2)+1,obj_moomba_idle) {
	image_speed = 0;
}
image_speed = 1;
image_xscale = sign(mspd);
