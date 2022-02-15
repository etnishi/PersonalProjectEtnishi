/// @description Insert description here
// You can write your code in this editor

draw_self()

if(!idle){
	draw_sprite(Marker_spr, 0, x, y - 24)
}
draw_text(x, y, string(actionCooldown))
draw_line_width_color(x + centerX, y + centerY, x + centerX + (offset * extDamage * 20), y + centerY, 6, c_red, c_red)