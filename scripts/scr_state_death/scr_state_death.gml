/// @description Gario Dead
sprite_index = spr_gario_death;
hp = 0;
audio_stop_all();
audio_play_sound(snd_death,1,false);
obj_gario.cooldown_gario_death = 240;
