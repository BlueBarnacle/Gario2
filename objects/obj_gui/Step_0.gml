/// @description Get hp
scr_input_keyboard();
maxhp = obj_gario.maxhp*hpb;
hp = obj_gario.hp*hpb;

if instance_exists(obj_gario) {
    if obj_gario.hp <= 0 {
        death = 1;
    }
}
if death {
    fade_timer += 1;
    fade_timer = min(fade_timer,fade_timer_max)
}
if death && InputJump {
    room_restart();
}
if layer_exists("Background_1"){
	layer_x("Background_1",obj_gario.x/10)
}
if layer_exists("Background_2"){
	layer_x("Background_2",obj_gario.x/8)
}