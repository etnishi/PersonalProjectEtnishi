// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function toIndex(str, ind){
	var out = ""
	for(var i = 1; i <= ind; i ++){
		out += string_char_at(str, i)
	}
	return out
}