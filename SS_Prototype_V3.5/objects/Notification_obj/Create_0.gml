/// @description Insert description here
// You can write your code in this editor

messages = []

curFocus = ""

curLine = 0

saved_shot = ""

pauseWhile = true

function toIndex(str, ind){
	var out = ""
	for(var i = 1; i <= ind; i ++){
		out += string_char_at(str, i)
	}
	return out
}