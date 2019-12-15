scr_input_keyboard();
selection += (InputMenuUp-InputMenuDown);

if selection < 0 {
	selection = 1;
}
if selection > 1{
	selection = 0;
}

if selection == 0 {
	x = 206;
	y = 260;
	if InputJump {
		room_goto(rm_lvlselect);
	}
}

if selection == 1 {
	x = 174
	y = 306
	if InputJump {
		room_goto(rm_options);
	}
}
if InputMenuUp || InputMenuDown {
	audio_play_sound(snd_select,1,0);	
}
