/// @description Gravity and Collision
// You can write your code in this editor

if(damageCooldown > 0){
	vulnerable = false
	damageCooldown --
}else{
	vulnerable = true
}

if(vspeed < 20 && doGrav){
	vspeed += 1
}

var tempH = abs(hspeed)
var tempV = abs(vspeed)
if(doCollision){
	for(var h = 0; h < abs(hspeed); h ++){
		if(place_meeting(x + ((1 + h) * sign(hspeed)), y, Solid_super_obj)){
			tempH --
		}
	}
	for(var v = 0; v < abs(vspeed); v++){
		if(place_meeting(x, y + ((1 + v) * sign(vspeed)), Solid_super_obj)){
			tempV --
		}
	}
}
hspeed = tempH * sign(hspeed)
vspeed = tempV * sign(vspeed)