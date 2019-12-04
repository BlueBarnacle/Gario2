/// @description Get hp
maxhp = obj_gario.maxhp*hpb;
hp = obj_gario.hp*hpb;
if obj_gario.sprite_index = spr_gario_death && obj_gario.image_index == 3{
	if k <= 0 {
		room_restart();
	} else if k > 0{
		k--	
	}
}