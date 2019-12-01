if place_meeting(x+mspd,y,obj_solid){
	mspd *= -1;
}

if place_meeting(x,y-4,obj_gario){
	instance_destroy();
}
if place_meeting(x,y+(sprite_height/2)+1,obj_moomba) {
	image_speed = 0;
}
phy_position_x += mspd;
image_speed = 1;
image_xscale = sign(mspd);