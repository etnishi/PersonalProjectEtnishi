// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Create_upgrade(xpos, ypos, scr, argu, spr, indx){
	if(global.playerArr[16][0][indx] == 0){
		var ins = instance_create_layer(xpos, ypos, "Instances", Upgrade_base_obj)
		ins.funct = scr
		ins.arg = argu
		ins.insSprite = spr
		ins.ind = indx
	
		return ins
	}
}