///scr_gario_dmg(dmg)
dmg = argument0;

if obj_gario.invframe == 0 {
	obj_gario.hp =- dmg
	audio_play_sound(snd_hit,1,0);
	obj_gario.obj_invframe = 45;
}