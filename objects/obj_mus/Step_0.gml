/// @description Insert description here
// You can write your code in this editor
if room == rm_mainmenu && !(audio_is_playing(mus_titletheme)) {
	audio_stop_all();
	audio_play_sound(mus_titletheme,1,true);
}
if room == rm_test && !(audio_is_playing(mus_ground)) {
	audio_stop_all();
	audio_play_sound(mus_ground,1,true);
}