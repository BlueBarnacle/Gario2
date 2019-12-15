/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_gario) && obj_gario.invframe == 0 && obj_gario.hp > 0{
	scr_gario_dmg(10);
	with (obj_gario) {
		physics_apply_force(other.x,other.y,200,200);
	}
}