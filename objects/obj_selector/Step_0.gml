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
		room_goto(rm_test);
	}
}

if selection == 1 {
	x = 174
	y = 306
	if InputJump {
		room_goto(rm_options);
	}
}
