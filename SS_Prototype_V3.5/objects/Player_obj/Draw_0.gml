/// @description Insert description here
// You can write your code in this editor

draw_self()

armXoff = 0
if(r_dir){
	armXoff = 64
}else if(l_dir){
	armXoff = 0
}

draw_sprite_ext(Player_arm_spr, 0, x + armXoff, y + 45, 1, 1, aimAngle, c_white, 1)
