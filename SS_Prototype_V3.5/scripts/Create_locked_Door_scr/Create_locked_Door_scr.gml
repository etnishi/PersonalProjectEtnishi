// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Create_locked_Door(xpos, ypos, kx, ky){
	var ins = instance_create_layer(xpos, ypos, "Instances", Door_obj)
	ins.locked = true
	
	var ins2 = instance_create_layer(kx, ky, "Instances", Key_obj)
	ins2.arg = ins
}