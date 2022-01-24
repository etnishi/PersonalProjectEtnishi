// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function array_contains(arr, search){
	for(var i = 0; i < array_length(arr); i ++){
		if(arr[i] == search)
			return true
	}
	return false
}