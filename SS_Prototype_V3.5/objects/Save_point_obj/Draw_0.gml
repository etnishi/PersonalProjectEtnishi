/// @description Insert description here
// You can write your code in this editor

draw_self()

if(canSave and (saveCooldown == 0)){
	draw_sprite(Next_icon_spr, 0, x + 16, Player_obj.y - 64)
}

if(saveCooldown > 175){
	effect_create_above(ef_spark,x + 32, y - 6, 5, c_white)
}