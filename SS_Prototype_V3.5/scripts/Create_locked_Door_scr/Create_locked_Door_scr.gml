// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Create_locked_Door(xpos, ypos, kx, ky, nd){
	// creates a door that requires a key within the room. Is reset when room is reset
	var ins = instance_create_layer(xpos, ypos, "Instances", Door_obj)
	ins.locked = true
	
	var ins2 = instance_create_layer(kx, ky, "Instances", Key_obj)
	ins2.desc = "Temporarily Opened nearby Door"
	ins2.arg = ins
	ins2.ind = nd
	ins2.arrInd = 1
}

function Create_Story_locked_Door(xpos, ypos, skey){
	// creates a door that is unlocked if story key is obtained
	var ins = instance_create_layer(xpos, ypos, "Instances", Door_obj)
	if(global.playerArr[16][3][skey] == 0){
		ins.locked = true
	}
}