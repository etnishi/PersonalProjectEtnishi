/// @description Insert description here
// You can write your code in this editor
// arr [ damage, charge, cooldown, range, bonusScripts]

image_xscale = arr[3]

if(Step < 30){
	Step ++
}else{
	Step = 1
}

if(charge > arr[1]){
	if(friendly){
		if(place_meeting(x, y, Enemy_super_obj)){
		
		}
	}else{
		if(place_meeting(x, y, Player_obj)){
		
		}
	}
}else{
	if(dir){
		image_angle = 0
	}else{
		image_angle = 180
	}
}

if(charge > (arr[1] + 5)){
	instance_destroy()
}

charge ++
