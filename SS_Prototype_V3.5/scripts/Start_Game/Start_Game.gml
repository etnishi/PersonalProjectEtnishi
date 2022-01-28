// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Start_Game(){
	if(argument_count == 0)
		room_goto(global.playerArr[1])
}