/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y, Player_obj)){
	if(instance_exists(Camera_obj)){
		Camera_obj.focusTarg = 1
		Camera_obj.targX = x
		Camera_obj.targY = y
	}
}else{
		Camera_obj.focusTarg = 0
		Camera_obj.targX = -1
		Camera_obj.targY = -1
}