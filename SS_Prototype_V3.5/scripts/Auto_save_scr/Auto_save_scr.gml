// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Auto_save(){
	Update_location()
	savePlayer(0)
}

function Update_location(){
	global.playerArr[1] = room
	global.playerArr[2] = Player_obj.x
	global.playerArr[3] = Player_obj.y
}