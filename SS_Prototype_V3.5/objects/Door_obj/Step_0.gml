/// @description Insert description here
// You can write your code in this editor

if(lockInd != -1){
	if(global.playerArr[16][3][lockInd] == 0){
		locked = true
	}else{
		locked = false
	}
}

if(!locked){
	if(collision_circle(xstart + 32, ystart - 80, 160, Player_obj, false, true)){
		if(y > (ystart - 160)){
			y -= 14
		}
	}else{
		if(y < (ystart)){
			y += 14
		}
	}
}