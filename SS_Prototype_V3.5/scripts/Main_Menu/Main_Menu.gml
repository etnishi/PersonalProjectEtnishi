// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Main_Menu(){
	var arr = []
	arr[0] = CreateEle("Continue", Start_Game)
	arr[1] = CreateEle("New Game", New_Game)
	arr[2] = CreateEle("Load Game", Load_Game_Menu)
	arr[3] = CreateEle("Options", Options_Menu)
	
	inSeq = layer_sequence_create("Front_Instances", 0, 0, opening_seq)
	revSeq = rev_opening_seq
	return arr
}

