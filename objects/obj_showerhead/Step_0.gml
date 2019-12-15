/// @description Insert description here
// You can write your code in this editor
if spray_every == 0 {
	spray_anim_tick = 48;
	spray_every = 300;
	sprite_index = spr_showerhead_spray;
	var i;
	for (i = 0; i < spray_num_drops; i++) {
		randomize();
		instance_create_depth(bbox_left+irandom_range(0, 20),bbox_bottom+irandom_range(0, 32),300,obj_green_goo);
	}
}

if spray_anim_tick == 0 {
	sprite_index = spr_showerhead;
}

spray_every -= 1;
spray_every = max(spray_every, 0);
spray_anim_tick -= 1;	
spray_anim_tick = max(spray_anim_tick, 0);