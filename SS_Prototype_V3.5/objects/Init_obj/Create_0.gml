/// @description Insert description here
// You can write your code in this editor

global.dirLocation = ""	// working_directory

global.config = []
global.config[0] = 1366		// x size
global.config[1] = 768		// y size
global.config[2] = false	// fullscreen
global.config[3] = 100		// Main Volume

global.saveSlot = 0			// out of 3 with 0 being reserved for temp / auto

global.keybinds = []
global.keybinds[0] = ord("W")
global.keybinds[1] = ord("A")
global.keybinds[2] = ord("S")
global.keybinds[3] = ord("D")
global.keybinds[4] = ord("E")
global.keybinds[5] = vk_space
global.keybinds[6] = vk_lshift
global.keybinds[7] = vk_escape
global.keybinds[8] = true		// mouse and keyboard t or controller ariming  f
global.keybinds[9] = true		// mouse and keyboard t or controller movement f

global.playerArr = []
global.playerArr[0] = random_range(10000, 99999)	// ID
global.playerArr[1] = TestRoom	// curRoom
global.playerArr[2] = 100		// xpos
global.playerArr[3] = 100		// ypos
global.playerArr[4] = 100		// max health
global.playerArr[5] = 100		// cur health
global.playerArr[6] = 20		// max energy
global.playerArr[7] = 20		// cur energy
global.playerArr[8] = 9			// top speed
global.playerArr[9] = 8			// jump height	
global.playerArr[10] = []		// gun			[ damage, speed, cooldown, cost, range, bonusScripts]
global.playerArr[11] = []		// gun bonuses 
								// bonusScript can add targeting or split the shot into three or increase damage
global.playerArr[12] = []		// alt gun		same as gun but more costly and longer cooldown
global.playerArr[13] = []		// alt gun bonuses can include stronger bonuses 
global.playerArr[14] = [1, 1, 1, 1]		// abilities active
//	List[dash, verticalMotion, slowFall, swim, ]
global.playerArr[15] = [0, 0, 0, 0, 0]		// abilities passive / reactive
/*	List[noDrag, hotRes, chillRes, dodgeJump, dodgeDash]
		Resistance stuff
		0 none, 1 1/2 from attacks + reduced from passive, 2 1/4 from attacks + none from passive
		only one resistance can be active at once
		activates if none are active and damage taken applies to it
		ex. neutral > takes fire damage > hotRes activates > chillRes can't activate until hot wares off
		
*/
show_debug_message("Directory is: " + working_directory)

if(!loadConf())
	saveConf()

if(!loadKeys())
	saveKeys()

window_set_fullscreen(global.config[2])
room_goto(MenuRoom)