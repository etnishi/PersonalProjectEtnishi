// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Options_Menu(){
	var arr = []
	arr[0] = CreateEle("Fullscreen", ToggleFullscreen, GetFullscreen)
	arr[1] = CreateEle("Volume", VolumeMain, GetVolume)
	return arr
}