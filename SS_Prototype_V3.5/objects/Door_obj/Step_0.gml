/// @description Insert description here
// You can write your code in this editor

if(!locked){
	if(collision_circle(xstart + 32, ystart - 80, 160, Player_obj, false, true)){
		if(y > (ystart - 160)){
			y -= 8
		}
	}else{
		if(y < (ystart)){
			y += 8
		}
	}
}