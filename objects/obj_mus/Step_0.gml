/// @description  ass
if room == rm_mainmenu && !(audio_is_playing(mus_titletheme)) {
	audio_stop_all();
	audio_play_sound(mus_titletheme,1,true);
}
if room == rm_test && !(audio_is_playing(mus_ground)) &&  obj_gario.hp > 0 {
	audio_stop_all();
	audio_play_sound(mus_ground,1,true);
}
if room == rm_lvlselect && !(audio_is_playing(mus_titletheme)) {
	audio_stop_all();
	audio_play_sound(mus_titletheme,1,true);
}
if instance_exists(obj_gario) && obj_gario.hp <= 0 && obj_gario.image_index > 2 && !(audio_is_playing(snd_death)) && !(audio_is_playing(mus_death)){
	audio_stop_all();
	audio_play_sound(mus_death,1,true);
}