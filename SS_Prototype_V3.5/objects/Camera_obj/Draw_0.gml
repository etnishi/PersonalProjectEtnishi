/// @description Insert description here
// You can write your code in this editor

if(doDark == 1){
	draw_sprite(Screen_shadow_spr, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]))
}else if(doDark == 2){
	draw_sprite(Screen_shadow_light_spr, 0, Player_obj.x + 32, Player_obj.y + 32 )
}