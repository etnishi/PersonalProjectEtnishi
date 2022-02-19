// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function New_Game(){
	if(argument_count == 0){
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
		global.playerArr[11] = []		// swing bonuses 
		global.playerArr[12] = [15, 10, 20, 50, 512, [Light_Tracking, Speed_up]]	// alt gun		[ damage, speed, cooldown, cost, range, bonusScripts]
		global.playerArr[13] = []		// alt gun bonuses can include stronger bonuses 
		global.playerArr[14] = [0, 0, 0, 1, 0, 0]
		global.playerArr[15] = [0, 0, 0, 0, 0]
		global.playerArr[16] = [[0, 0, 0, 0, 0, 0, 0, 0, 0]]
		Start_Game()
	}
}