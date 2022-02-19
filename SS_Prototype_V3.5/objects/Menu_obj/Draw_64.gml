/// @description Insert description here
// You can write your code in this editor

var xoff = camera_get_view_width(view_camera[0]) / 2
var yoff = camera_get_view_height(view_camera[0])
var off = room_height / 12
yoff = (yoff - (off * (array_length(arr) - 1) ) ) / 2
var tscale = 768 / room_height
if(inSeq == ""){
	draw_set_halign(fa_center)
	for(var i = 0; i < array_length(arr); i++){
		draw_text_transformed(xoff, yoff + (i * off), arr[i][0], tscale, tscale, 0)
		if(i == curInd && array_length(arr) > 1){
			draw_sprite(Marker_spr, counter / 15, xoff - 64, yoff -4 + (i * off))
			if(is_string(arr[i][2]))
				draw_text_transformed(xoff, yoff + (off / 3) + (i * off), arr[i][2], tscale, tscale, 0)
			else
				draw_text_transformed(xoff, yoff + (off / 3) + (i * off), arr[i][2](), tscale, tscale, 0)
		}
	}
	if(array_length(last) > 0){
		draw_sprite_ext(Cone_spr, 0, xoff - 600, yoff - 250, 0.2, 0.2, 0, c_white, 1) // todo add back button marker
		draw_text(xoff - 553, yoff - 248, "<Esc>")
	}
}