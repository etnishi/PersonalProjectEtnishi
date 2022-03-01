// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Progressive_jump(){
	if(global.playerArr[9] == 4){
		global.playerArr[9] = 16
	}else{
		global.playerArr[15][3] ++
	}	
}