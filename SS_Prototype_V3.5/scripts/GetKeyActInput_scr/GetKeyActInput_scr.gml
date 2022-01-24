// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetKeyActInput(){
	var curIn = -1
	
	switch(keyboard_key){
		case global.keybinds[6]:
			curIn = 6
			break
		case global.keybinds[5]:
			curIn = 5
			break
		default:
			curIn = -1
			break
	}
	
	return curIn
}