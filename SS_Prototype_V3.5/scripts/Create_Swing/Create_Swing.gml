// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Create_Swing(xpos, ypos, ang, barr){
	var ins = instance_create_layer(xpos,ypos,"Instances", Swing_base_obj)
	ins.dir = ang
	ins.arr = barr
	ins.src = id
	return ins
}