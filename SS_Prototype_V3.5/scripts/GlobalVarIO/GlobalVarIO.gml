// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function saveConf(){
	var out = json_stringify(global.config)
	var file = file_text_open_write(working_directory + "\config");
	file_text_write_string(file, out);
	file_text_close(file);
}

function loadConf(){
	if(file_exists(working_directory + "\config")){
		var file = file_text_open_read(working_directory + "\config");
		global.config = json_parse(file)
	}
}

function saveKeys(){
	var out = json_stringify(global.keybinds)
	var file = file_text_open_write(working_directory + "\keybinds");
	file_text_write_string(file, out);
	file_text_close(file);
}

function loadKeys(){
	if(file_exists(working_directory + "\keybinds")){
		var file = file_text_open_read(working_directory + "\keybinds");
		global.keybinds = json_parse(file)
	}
}

function savePlayer(){
	var out = json_stringify(global.playerArr)
	var file = file_text_open_write(working_directory + "\pl_" + string(global.playerArr[0]) + string(global.saveSlot));
	file_text_write_string(file, out);
	file_text_close(file);
}

function loadPlayer(){
	if(file_exists(working_directory + "\pl_" + string(global.playerArr[0]) + string(global.saveSlot))){
		var file = file_text_open_read(working_directory + "\pl_" + string(global.playerArr[0]) + string(global.saveSlot));
		global.playerArr = json_parse(file)
	}
}
