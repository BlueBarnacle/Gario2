/// @description Insert description here
// You can write your code in this editor
scr_input_keyboard();
if !door_unlocked && global.world7unlock && InputInteract && rectangle_in_rectangle(obj_gario.bbox_left, obj_gario.bbox_bottom, obj_gario.bbox_right, obj_gario.bbox_top, bbox_left, bbox_bottom, bbox_right, bbox_top) {
		sprite_index = spr_door_unlocked;
		audio_play_sound(snd_door_toggle,1,0);
		door_toggle_cooldown = 90;
		door_unlocked = true;
		
}
else if rectangle_in_rectangle(obj_gario.bbox_left, obj_gario.bbox_bottom, obj_gario.bbox_right, obj_gario.bbox_top, bbox_left, bbox_bottom, bbox_right, bbox_top) && InputInteract && door_toggle_cooldown == 0 {
		global.world8unlock = true;
		room_goto(rm_lvlselect);
}

door_toggle_cooldown -= 1;
door_toggle_cooldown = max(door_toggle_cooldown, 0);