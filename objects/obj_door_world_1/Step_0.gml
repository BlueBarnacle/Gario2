/// @description Insert description here
// You can write your code in this editor
if global.world1unlock &&  i <= 0{
		sprite_index = spr_door_unlocked;
		
		scr_input_keyboard();
		
		if rectangle_in_rectangle(obj_gario.bbox_left, obj_gario.bbox_bottom, obj_gario.bbox_right, obj_gario.bbox_top, bbox_left, bbox_bottom, bbox_right, bbox_top) && InputInteract {
			//warp code!
			room_goto(rm_world_1);
		}
}