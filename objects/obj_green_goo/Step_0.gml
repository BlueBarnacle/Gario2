/// @description Insert description here
// You can write your code in this editor
if collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_top,obj_gario,false,false) {
		scr_gario_dmg(2);
}

if lifetime == 0 {
	instance_destroy();	
}

lifetime -= 1;