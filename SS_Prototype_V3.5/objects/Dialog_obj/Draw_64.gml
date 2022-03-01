/// @description Insert description here
// You can write your code in this editor

var xoff = camera_get_view_width(view_camera[0]) / 2
var yoff = camera_get_view_height(view_camera[0]) - 116
var tscale = 768 /  camera_get_view_height(view_camera[0])

var line = lines[curLine][0]

draw_set_halign(fa_left)

if(line != ""){
	line = toIndex(line, curInd)
	draw_sprite_ext(Dialog_box_spr, 0, xoff - 256, yoff + 16, tscale, tscale, 0, c_white, 1)
	if(lines[curLine][1] != ""){
		draw_sprite_ext(Dialog_portrait_spr, 0, xoff - 250, yoff + 16, tscale, tscale, 0, c_white, 1)
		draw_sprite(lines[curLine][1], 0, xoff - 334, yoff + 26)
	}
	if(lines[curLine][2] != ""){
		draw_sprite_ext(Dialog_name_spr, 0, xoff - 256, yoff + 22, tscale, tscale, 0, c_white, 1)
		draw_text_ext_transformed( xoff - 250, yoff - 3 , lines[curLine][2], 16, 220, tscale, tscale, 0)
	}
	draw_text_ext_transformed(xoff - 247, yoff + 22, line, 16, 490, tscale, tscale, 0)
}
