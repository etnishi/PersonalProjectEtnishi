// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Init_player_arr(){
	global.playerArr[0] = random_range(10000, 99999)	// ID
	global.playerArr[1] = Cave_start_0	// curRoom
	global.playerArr[2] = 64		// xpos
	global.playerArr[3] = 0			// ypos
	global.playerArr[4] = 120		// max health
	global.playerArr[5] = 120		// cur health
	global.playerArr[6] = 20		// max energy
	global.playerArr[7] = 20		// cur energy
	global.playerArr[8] = 9			// top speed
	global.playerArr[9] = 4			// jump height	
	global.playerArr[10] = [10, 45, 60, 2, []]		// swing		[ damage, charge, cooldown, range, bonusScripts]
	global.playerArr[11] = ""		// block / parry scripts 
									// bonusScript can add targeting or split the shot into three or increase damage
	global.playerArr[12] = [15, 10, 20, 50, 512, [Split_three, Light_Tracking, Speed_up]]	// alt gun		[ damage, speed, cooldown, cost, range, bonusScripts]
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
	global.playerArr[16] = [[0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0]]
	//		event flags	0 upgrade array, 1 health Up array, 2 

}