/// @description Insert description here
// You can write your code in this editor

if(focusTarg == 0 and (instance_exists(Player_obj))){
	
	if(distance_to_object(Player_obj) > 60)
		move_towards_point(Player_obj.x + 32, Player_obj.y + 16, 60)
	else if(distance_to_object(Player_obj) > 30)
		move_towards_point(Player_obj.x + 32, Player_obj.y + 16, 30)
	else {
		x = Player_obj.x + 32
		y = Player_obj.y + 16
	}
}else if(focusTarg == 1 and (instance_exists(Player_obj))){
	if(distance_to_point(targX, targY) > 40)
		move_towards_point(targX, targY, 20 )
	else{
		x = targX
		y = targY
	}
}else if(focusTarg == 2){
	
}