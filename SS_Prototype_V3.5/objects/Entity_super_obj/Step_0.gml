/// @description Gravity and Collision
// You can write your code in this editor

if(damageCooldown > 0){
	vulnerable = false
	damageCooldown --
}else{
	vulnerable = true
}

if(vspeed < 20 && doGrav){
	motion_add(global.grav[0], global.grav[1])
}

if(!canSwim){
	if(place_meeting(x, y, Water_obj)){
		hspeed = hspeed / 2
		vspeed = vspeed / 1.2
	}
}

var mWater = instance_place(x, y, Moving_Water_obj)
if(mWater){
	motion_add(mWater.image_angle, 3)
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
		}else if((vspeed >= 0 and onLadder == "") and collision_line(x, y + height + ((1 + v) * sign(vspeed)), x + width, y + height + ((1 + v) * sign(vspeed)), OneWay_Floor_obj, false, true)){
			tempV --
		}
	}
}
hspeed = tempH * sign(hspeed)
vspeed = tempV * sign(vspeed)

if(place_meeting(x + hspeed, y + vspeed, Solid_super_obj)){
	hspeed = 0
	vspeed = 0
}

if(place_meeting(x, y + 4, Solid_super_obj) or place_meeting(x, y + 4, OneWay_Floor_obj)){
	grounded = true
	if(abs(vspeed) < 1 and !place_meeting(x, y, Water_obj)){
		vspeed = 0
	}
}else{
	grounded = false
}

if(place_meeting(x + 2, y, Solid_super_obj) or place_meeting(x - 2, y, Solid_super_obj)){
	walled = true
}else{
	walled = false
}

if(curHealth <= 0){
	curAlive = false
}

var dam = instance_place(x, y, Entity_attack_super_obj)
if(dam){
	if(dam.friendly != side){
		if(vulnerable){
			curHealth -= dam.damage
			knockback = dam.damage * 10
			damageCooldown = dam.damage * 50
			motion_add(dam.direction, dam.damage * 10)
			motion_add(90, dam.damage * 10)
		}
	}
	if(place_meeting(x, y, Entity_damage_env_super_obj)){
		curHealth -= 20
		x = xRecall
		y = yRecall
		speed = 0
	}
}