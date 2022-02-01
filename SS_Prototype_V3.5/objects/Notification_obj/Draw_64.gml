/// @description Insert description here
// You can write your code in this editor
var xoff = camera_get_view_width(view_camera[0]) / 2
var yoff = camera_get_view_height(view_camera[0]) / 2
//var off = room_height / 12
var line = ""

if(curFocus != ""){
	line = toIndex(curFocus, curLine)
}

draw_text(xoff, yoff, line)

//draw_text(xoff, yoff, "TEST")