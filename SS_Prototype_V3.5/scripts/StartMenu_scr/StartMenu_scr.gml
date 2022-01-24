// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StartMenu(xpos, ypos, menuE){// o element is previous arr
	var ind = instance_create_layer(xpos, ypos, "Instances", Menu_obj)
	ind.menuElements = menuE
}