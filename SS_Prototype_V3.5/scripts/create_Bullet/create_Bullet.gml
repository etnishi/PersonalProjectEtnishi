// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_Bullet(xpos, ypos, ang, barr){
	var ins = instance_create_layer(xpos,ypos,"Instances", Bullet_base_obj)
	ins.direction = ang
	ins.arr = barr
	return ins
}
