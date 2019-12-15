///@description Execute state
scr_input_keyboard();
script_execute(state);
if debug_mode && DebugInputDeath {
	hp = 0;	
}
