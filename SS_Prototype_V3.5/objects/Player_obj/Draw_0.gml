/// @description Insert description here
// You can write your code in this editor

draw_self()

if(r_dir){
	armXoff = -16
}else if(l_dir){
	armXoff = 80
}

draw_sprite_ext(Player_arm_spr, 0, x + armXoff, y - 16, 1, 1, aimAngle, c_white, 1)
