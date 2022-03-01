/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y, Player_obj)){
	if(desc != ""){
		array_push(Notification_obj.messages, desc)
	}
	if(funct != ""){
		if(arg != ""){
			funct(arg)
		}else{
			funct()
		}
	}
	global.playerArr[16][arrInd][ind] ++
	
	instance_destroy()
	
}

event_inherited()