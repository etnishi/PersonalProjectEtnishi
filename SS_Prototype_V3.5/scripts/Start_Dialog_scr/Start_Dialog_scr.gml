// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Start_Dialog(lin){
	if(!instance_exists(Dialog_obj)){
		var ins = instance_create_layer(0, 0, "Front_Instances", Dialog_obj)
		ins.lines = lin
		return ins
	}else{
		return -1
	}
}