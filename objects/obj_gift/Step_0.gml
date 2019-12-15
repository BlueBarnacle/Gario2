/// @description Insert description here
// You can write your code in this editor
switch type {
	case 0:
		presents = 1;
		break;
	case 1:
		presents = 2;
		break;	
	case 2:
		presents = 5;
		break;
	case 3:
		presents = 10;
		break;
}
image_index = type;
if place_meeting(x,y,obj_gario){
	global.totalpresents += presents
	audio_play_sound(snd_pickup,1,0);
	instance_destroy();	
}