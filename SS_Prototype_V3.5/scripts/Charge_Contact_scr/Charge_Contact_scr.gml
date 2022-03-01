// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Charge_Contact(){
	if(actionCooldown > 0){
		if(instance_place(x, y, Player_obj)){
			idle = false
		}
		
		if(!idle){
			hspeed = extDamage * sign(hspeed)
			if(place_meeting(x + (offset * 5), y, Solid_super_obj)){
				actionCooldown = 0
			}
		}
		
	}else if(actionCooldown == 0){
		idle = true
	}
}