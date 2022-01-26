// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Light_Tracking(){
	if(Step == 0){
		if(friendly){	//	collision_line(x, y, mouse_x, mouse_y, Enemy_super_obj, false, true)
			targ = collision_circle(mouse_x, mouse_y, 128, Enemy_super_obj, false, true)
		}else{			//	collision_line(x, y, mouse_x, mouse_y, Player_obj, false, true)
			targ = collision_circle(mouse_x, mouse_y, 128, Player_obj, false, true)
		}	
	}else{
		if(targ != noone){
			var dir = point_direction(x, y, targ.x, targ.y)
			var dif = dir - direction
			if(abs(dif) < 90){
				direction += min( 0.3, abs(dif) ) * sign(dif);
			}
		}
	}
}