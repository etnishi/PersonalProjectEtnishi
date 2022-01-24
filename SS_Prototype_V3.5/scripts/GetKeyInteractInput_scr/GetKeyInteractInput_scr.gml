// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetKeyInteractInput(){
	var curIn = -1
	
	switch(keyboard_key){
		case global.keybinds[4]:
			curIn = 4
			break
	}
	
	return curIn
}