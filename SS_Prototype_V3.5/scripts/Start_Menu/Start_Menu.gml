// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Start_Menu(){
	var arr = []
	arr[0] = CreateEle("Start", Main_Menu)
	arr[1] = CreateEle("Exit", game_end)
	return arr
}