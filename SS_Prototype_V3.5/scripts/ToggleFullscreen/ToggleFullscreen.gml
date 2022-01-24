// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ToggleFullscreen(){
	if(argument_count > 0){
		if(argument[0] > 0){
			global.config[2] = true
		}else{
			global.config[2] = false
		}
		window_set_fullscreen(global.config[2])
	}
}