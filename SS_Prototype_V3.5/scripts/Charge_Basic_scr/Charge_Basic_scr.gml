// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Charge_Basic(){
	if(actionCooldown > 0){
		if(collision_line(x + centerX, y + centerY, x + centerX + (offset * extDamage * 20), y + centerY, Player_obj, false, false)){
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