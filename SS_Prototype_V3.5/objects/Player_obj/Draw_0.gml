/// @description Insert description here
// You can write your code in this editor
if(!vulnerable)
	image_alpha = 0.9
else
	image_alpha = 1

draw_self()

if(r_dir){
	armXoff = -16
	f_dir = 1
}else if(l_dir){
	armXoff = 80
	f_dir = 0
}

if(dashing == 1){
	effect_create_above(ef_ring, x + 32, y + 16, 1, c_white)
}

if(battleStance > 10 )
	draw_sprite_ext(Player_arm_spr, 9, x + armXoff, y - 16, 1, 1, aimAngle, c_white, 1)
else
	draw_sprite_ext(Player_arm_spr, battleStance, x + armXoff, y - 16, 1, 1, 270, c_white, 1)


