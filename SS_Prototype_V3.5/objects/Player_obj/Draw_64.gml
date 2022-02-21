/// @description Insert description here
// You can write your code in this editor

if(drawGUI){
	var xoff = camera_get_view_width(view_camera[0]) / 2
	var yoff = camera_get_view_height(view_camera[0]) / 2
	
	scale = curHealth / 100
	
	if(scale > 1){
		scale = 1
	}
	
	draw_sprite_ext(Bar_spr, 0, 64, 32, 1, 1, 0, c_blue, 1)
	
	draw_sprite_ext(Bar_spr, 0, 64, 32, scale, 1, 0, c_aqua, 1)
	
	if(curHealth > 100){
		scale = (curHealth - 100) / (100)
		draw_sprite_ext(Bar_spr, 0, 64, 32, scale, 1, 0, c_purple, 1)
	}
	
	draw_text_color(90, 38, string(curHealth), c_black, c_black, c_black, c_black, 1)
	
	draw_sprite_ext(Bar_Outline_spr, 0, 64, 32, 1, 1, 0, c_black, 1)
}