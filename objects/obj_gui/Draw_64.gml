image_xscale = 8;
image_yscale = 8;
draw_sprite_ext(spr_health_base,0,offset,offset,guiScale,guiScale,0,c_white,1);
draw_sprite_ext(spr_gario_gui,ceil(hp*4/maxhp),4*guiScale+offset,6*guiScale+offset,guiScale*3/4,guiScale*3/4,0,c_white,1);
for (i = 0; i < maxhp-2; i++) {
	draw_sprite_ext(spr_health_center,0,35*guiScale+i*guiScale+offset,4*guiScale+offset,guiScale,guiScale,0,c_white,1);
}
draw_sprite_ext(spr_health_end,0,35*guiScale+(maxhp-2)*guiScale+offset,4*guiScale+offset,guiScale,guiScale,0,c_white,1);
for (j = 0; j < hp; j++) {
	draw_sprite_ext(spr_health_bar,0,34*guiScale+j*guiScale+offset,7*guiScale+offset,guiScale,guiScale,0,c_white,1);
}