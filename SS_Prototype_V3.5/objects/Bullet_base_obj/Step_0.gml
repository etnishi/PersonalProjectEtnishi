/// @description Insert description here
// You can write your code in this editor
// arr [ damage, speed, cooldown, cost, range, bonusScripts]
range --


image_angle = direction

for(var i = 0; i < array_length(arr[5]); i++){
	arr[5][i]()
}

if (firstStep){
	firstStep = false
	range = arr[4]
	speed = arr[1]
}


if(friendly){
	var ins = instance_place(x,y,Enemy_super_obj)
	if(ins && !array_contains(damaged, ins)){
		if(ins.vulnerable){
			array_push(damaged, ins)
			ins.damageCooldown = ins.cooldownRate 
			
		}
		if(!pierce)
			instance_destroy()
	}
}else{
	var ins = instance_place(x,y,Player_obj)
	if(ins && !array_contains(damaged, ins)){
		if(ins.vulnerable){
			array_push(damaged, ins)
			ins.damageCooldown = ins.cooldownRate
			
		}
		if(!pierce)
			instance_destroy()
	}
}

if(!pass)
	if(place_meeting(x,y,Solid_super_obj))
		instance_destroy()


if(range < 0)
	instance_destroy()