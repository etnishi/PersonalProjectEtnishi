/// @description Insert description here
// You can write your code in this editor

global.dirLocation = ""	// working_directory

global.config = []
global.config[0] = 1366		// x size
global.config[1] = 768		// y size
global.config[2] = false	// fullscreen
global.config[3] = 100		// Main Volume
global.config[4] = 1		// Last Save used. Index out of 3 with 0 being reserved for temp / auto


global.keybinds = []
global.keybinds[0] = ord("W")
global.keybinds[1] = ord("A")
global.keybinds[2] = ord("S")
global.keybinds[3] = ord("D")
global.keybinds[4] = ord("E")	// Interact key
global.keybinds[5] = vk_space
global.keybinds[6] = vk_lshift
global.keybinds[7] = vk_escape
global.keybinds[8] = true		// mouse and keyboard t or controller ariming  f
global.keybinds[9] = true		// mouse and keyboard t or controller movement f
global.keybinds[10] = mb_left	
global.keybinds[11] = mb_right	
global.keybinds[12] = mb_middle
global.keybinds[13] = ord("F")

global.playerArr = []
global.playerArr[0] = random_range(10000, 99999)	// ID
global.playerArr[1] = Cave_start_0	// curRoom
global.playerArr[2] = 64		// xpos
global.playerArr[3] = 0			// ypos
global.playerArr[4] = 100		// max health
global.playerArr[5] = 100		// cur health
global.playerArr[6] = 20		// max energy
global.playerArr[7] = 20		// cur energy
global.playerArr[8] = 9			// top speed
global.playerArr[9] = 4			// jump height	
global.playerArr[10] = [10, 45, 60, 2, []]		// swing		[ damage, charge, cooldown, range, bonusScripts]
global.playerArr[11] = ""		// block / parry scripts 
								// bonusScript can add targeting or split the shot into three or increase damage
global.playerArr[12] = [15, 10, 20, 50, 512, [Light_Tracking, Speed_up]]	// alt gun		[ damage, speed, cooldown, cost, range, bonusScripts]
global.playerArr[13] = ""		// alt gunscript. This can be anything. Haven't thought up yet
global.playerArr[14] = [0, 0, 0, 1, 0, 0]	// abilities active
//	List[dash, verticalMotion, slowFall, swim, ]
global.playerArr[15] = [0, 0, 0, 0, 0]		// abilities passive / reactive
//	List[noDrag, hotRes, chillRes, dodgeJump, dodgeDash]
/*		Resistance stuff
		0 none, 1 1/2 from attacks + reduced from passive, 2 1/4 from attacks + none from passive
		only one resistance can be active at once
		activates if none are active and damage taken applies to it
		ex. neutral > takes fire damage > hotRes activates > chillRes can't activate until hot wares off
*/
global.playerArr[16] = [[0, 0, 0, 0, 0, 0, 0, 0, 0]]
//		event flags	0 upgrade array, 1 health Up array

global.grav = [270, 1]

global.playerSpawn = [0, 0, ""]
show_debug_message("Directory is: " + working_directory)

if(!loadConf())
	saveConf()

if(!loadKeys())
	saveKeys()

loadPlayer(global.config[4])

window_set_fullscreen(global.config[2])
room_goto(MenuRoom)