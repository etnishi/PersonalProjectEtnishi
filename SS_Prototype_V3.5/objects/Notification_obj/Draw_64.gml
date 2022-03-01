/// @description Insert description here
// You can write your code in this editor
var xoff = camera_get_view_width(view_camera[0]) / 2
var yoff = camera_get_view_height(view_camera[0]) / 2
var off =  camera_get_view_height(view_camera[0]) / 12
var tscale = 768 /  camera_get_view_height(view_camera[0])
var line = ""
draw_set_halign(fa_center)



if(curFocus != ""){
	if(pauseWhile){
		if(saved_shot == ""){
			saved_shot = sprite_create_from_surface(application_surface, 0, 0, camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), false, false, 0, 0)
			instance_deactivate_all(true)		
		}
		if(saved_shot != ""){
			draw_sprite(saved_shot, 0, 0, 0)
		}
	}
	line = toIndex(curFocus, curLine)
	draw_sprite_ext(Notification_box_spr, 0, xoff, yoff, tscale, tscale, 0, c_white, 1)
	draw_text_ext_transformed(xoff, yoff, line, 16, (xoff / 4), tscale, tscale, 0)
	if(curLine == string_length(curFocus)){
		draw_sprite(Next_icon_spr, 0, xoff + 110, yoff + 64)
	}
}else{
	if(saved_shot != ""){
		sprite_delete(saved_shot)
		saved_shot = ""
	}
}

//draw_text(xoff, yoff, line)	1366

//draw_text_transformed(xoff, yoff + (off / 3), line, tscale, tscale, 0)

//draw_text(xoff, yoff, "TEST")

//camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])