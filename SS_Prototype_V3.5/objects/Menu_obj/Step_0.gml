/// @description Insert description here
// You can write your code in this editor

if(counter < 30){
	counter ++
}else{
	counter = 0
}	

if keyboard_check_pressed(global.keybinds[0]){
	if(curInd > 0)
		curInd --
	else
		curInd = array_length(arr) - 1
}

if keyboard_check_pressed(global.keybinds[2]){
	if(curInd < array_length(arr) - 1)
		curInd ++
	else
		curInd = 0
}

// 1, 3
if(keyboard_check_pressed(global.keybinds[1])){
	if(!is_string(arr[curInd][1])){
		//var tmp = arr[curInd][1](-1)
	}
}

if(keyboard_check_pressed(global.keybinds[3])){
	if(!is_string(arr[curInd][1])){
		//var tmp = arr[curInd][1](1)
	}
}

if(keyboard_check_pressed(global.keybinds[4])){
	if(!is_string(arr[curInd][1])){
		var tmp = arr[curInd][1]()
		if(is_array(tmp)){
			array_push(last, arr)
			array_push(lastInd, curInd)
			arr = tmp
			curInd = 0
		}
	}
}

if(keyboard_check_pressed(global.keybinds[7])){
	if(array_length(last) > 0){
		arr = array_pop(last)
		curInd = array_pop(lastInd)
	}
}