/// @description Insert description here
// You can write your code in this editor

if(curFocus = ""){
	if((array_length(messages) > 0)){
		curFocus = array_pop(messages)
	}
}else{
	if(curLine < string_length(curFocus)){
		curLine ++
	}
}

if(keyboard_check_pressed(global.keybinds[4])){
	if(curLine < string_length(curFocus)){
		curLine = string_length(curFocus)
	}else{
		curFocus = ""
		curLine = 0
	}
}

