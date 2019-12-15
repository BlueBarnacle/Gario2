///@description Execute state
scr_input_keyboard();
script_execute(state);
if debug_mode && DebugInputDeath {
	hp = 0;	
}
if hp <= 0 && obj_gario.image_index > 2 && cooldown_gario_death == 0 && InputInteract {
	room_goto(rm_lvlselect);
}

cooldown_gario_death -= 1;
cooldown_gario_death = max(cooldown_gario_death, 0);