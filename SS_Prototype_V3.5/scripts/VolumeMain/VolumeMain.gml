// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function VolumeMain(){
	if(argument_count > 0){
		if(argument[0] > 0){
			if(global.config[3] < 100)
				global.config[3] += 5
		}else{
			if(global.config[3] > 0)
				global.config[3] -= 5
		}
	}
}