/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y, Player_obj)){
	canSave = true
}else{
	canSave = false
}

if(canSave and (saveCooldown == 0)){
	if(keyboard_check(global.keybinds[4])){
		saveCooldown = 200
		Update_location()
		savePlayer(global.config[4])
	}
}

if(saveCooldown > 0){
	saveCooldown --
}