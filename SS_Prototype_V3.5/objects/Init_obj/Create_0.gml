/// @description Insert description here
// You can write your code in this editor

global.dirLocation = ""	// working_directory

global.config = []
init_config()

global.keybinds = []
Init_keybinds()

global.playerArr = []
Init_player_arr()

global.grav = [270, 1]

global.playerSpawn = [0, 0, ""]
//show_debug_message("Directory is: " + working_directory)

if(!loadConf())
	saveConf()

if(!loadKeys())
	saveKeys()

loadPlayer(global.config[4])

window_set_fullscreen(global.config[2])
room_goto(MenuRoom)