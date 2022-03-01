// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Unlock_Door(ins){
	ins.locked = false
}

function Unlock_Story_Door(skey){
	global.playerArr[16][3][skey] ++
}