/// @description Insert description here
// You can write your code in this editor

var ins = collision_circle(x + xCenter, y + yCenter, 160, Player_obj, false, true)

if(ins and (array_length(dialogLines) > 0)){
	playerRange = true
}else{
	playerRange = false
}

if(playerRange){
	if(keyboard_check_pressed(global.keybinds[4])){
		if(inDialog == ""){
			inDialog = Start_Dialog(dialogLines)
		}
	}
}else{
	if(inDialog != ""){
		instance_destroy(inDialog)
		inDialog = ""
	}
}

if(inDialog != ""){
	if(!instance_exists(inDialog)){
		inDialog = ""
		if(postDialogScr != ""){
			postDialogScr()
		}
	}
}

event_inherited()