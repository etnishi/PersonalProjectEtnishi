
function GetKeyMovInput(){
	// wasd space shift e 
	var curIn = -1
	
	if(keyboard_check(global.keybinds[0])){// w up
		curIn = 0
	}	
	if(keyboard_check(global.keybinds[2])){// s down
		curIn = 2
	}	
	if(keyboard_check(global.keybinds[1]) xor keyboard_check(global.keybinds[3])){
		if(keyboard_check(global.keybinds[1])){// a left
			curIn = 1
		}	
		if(keyboard_check(global.keybinds[3])){// d right
			curIn = 3
		}	
	}
	
	return curIn
}