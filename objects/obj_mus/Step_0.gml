/// @description  ass
if instance_exists(obj_gario) {
	if obj_gario.hp > 0 {
		if room == rm_lvlselect && !(audio_is_playing(mus_titletheme)) {
			audio_stop_all();
			audio_play_sound(mus_titletheme,1,true);
		}
		if (room == rm_world_3 || room == rm_world_2 || room == rm_world_1) && !(audio_is_playing(mus_ground)){
			audio_stop_all();
			audio_play_sound(mus_ground,1,true);
		}
	} else if obj_gario.image_index > 2 && !(audio_is_playing(snd_death)) && !(audio_is_playing(mus_death)) {
		audio_stop_all();
		audio_play_sound(mus_death,1,true);
	}
} else if room == rm_mainmenu && !(audio_is_playing(mus_titletheme)) {
	audio_stop_all();
	audio_play_sound(mus_titletheme,1,true);
}
	
