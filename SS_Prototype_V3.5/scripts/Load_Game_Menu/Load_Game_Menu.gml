// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Load_Game_Menu(){
	var arr = []
	arr[0] = CreateEle("Auto", Start_Load_Game)
	arr[1] = CreateEle("Slot 1", Start_Load_Game)
	arr[2] = CreateEle("Slot 2", Start_Load_Game)
	arr[3] = CreateEle("Slot 3", Start_Load_Game)
	return arr
}