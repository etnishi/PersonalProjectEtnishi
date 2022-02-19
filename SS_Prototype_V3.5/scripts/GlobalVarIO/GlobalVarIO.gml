// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saveConf(){
	var out = json_stringify(global.config)
	var file = file_text_open_write(global.dirLocation + "\config");
	file_text_write_string(file, out);
	file_text_close(file);
}

function loadConf(){
	if(file_exists(global.dirLocation + "\config")){
		var file = file_text_open_read(global.dirLocation + "\config");
		global.config = json_parse(file_text_read_string(file))
		file_text_close(file);
		return true
	}else
		return false
}

function saveKeys(){
	var out = json_stringify(global.keybinds)
	var file = file_text_open_write(global.dirLocation + "\keybinds");
	file_text_write_string(file, out);
	file_text_close(file);
}

function loadKeys(){
	if(file_exists(global.dirLocation + "\keybinds")){
		var file = file_text_open_read(global.dirLocation + "\keybinds");
		global.keybinds = json_parse(file_text_read_string(file))
		file_text_close(file);
		return true
	}else
		return false	
}

function savePlayer(slot){
	var typ = "\pl_"
	if(slot == 0)
		typ = "\Auto_"
	var out = json_stringify(global.playerArr)
	var file = file_text_open_write(global.dirLocation + "\saves" + typ + "Player_Save_" + string(slot));
	file_text_write_string(file, out);
	file_text_close(file);
}

function loadPlayer(slot){
	var typ = "\pl_"
	if(slot == 0)
		typ = "\Auto_"
	if(file_exists(global.dirLocation + "\saves" + typ + "Player_Save_" + string(slot))){
		var file = file_text_open_read(global.dirLocation + "\saves" + typ + "Player_Save_" + string(slot));
		global.playerArr = json_parse(file_text_read_string(file))
		file_text_close(file);
		return true
	}else
		return false
}
