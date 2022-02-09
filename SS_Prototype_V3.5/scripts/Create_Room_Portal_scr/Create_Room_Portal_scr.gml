// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Create_Room_Portal(xpos, ypos, xtar, ytar, roomtar){
	var ins = instance_create_layer(xpos, ypos, "Instances", Room_portal_obj)
	ins.xTarg = xtar
	ins.yTarg = ytar
	ins.targRoom = roomtar
	
	return ins
}