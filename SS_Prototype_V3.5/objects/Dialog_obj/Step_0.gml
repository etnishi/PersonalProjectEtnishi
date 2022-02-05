/// @description Insert description here
// You can write your code in this editor

if(curInd < string_length(lines[curLine][0])){
	curInd += scrSpd
}

if(keyboard_check_pressed(global.keybinds[4])){
	if(curInd < string_length(lines[curLine][0])){
		curInd = string_length(lines[curLine][0])
	}else{
		if(curLine < array_length(lines) -1 ){
			curLine ++
		}else{
			instance_destroy()
		}
		curInd = 0
	}
}
