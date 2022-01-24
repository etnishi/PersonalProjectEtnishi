// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateEle(){
	var arr = []
	arr[0] = "Name"		if(argument_count>0)	arr[0] = argument[0]
	arr[1] = "Function"	if(argument_count>1)	arr[1] = argument[1]
	arr[2] = "Desc"		if(argument_count>2)	arr[2] = argument[2]
	arr[3] = "Font"		if(argument_count>3)	arr[3] = argument[3]
	
	return arr
}