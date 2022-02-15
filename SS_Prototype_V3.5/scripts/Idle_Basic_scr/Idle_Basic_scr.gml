// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Idle_Basic(){
	if(idle){
		if(actionCooldown > 0){
			if(actionRand > 2){
				
				if(!place_meeting(x + ( offset), y, Solid_super_obj)){
					if(abs(hspeed) <= 2)
						hspeed += 0.5 * offset
				}else{
					if(Cdir == 0){
						Cdir = 1
					}else{
						Cdir = 0
					}
				}
			}
		}else{
			hspeed = 0
			actionCooldown = floor(random_range(100, 300))
			actionRand = floor(random_range(0, 10))
			Cdir = floor(random_range(0, 1))
		}
	}
}