/// @description Player Step Event
// You can write your code in this editor


if(global.keybinds[8]){	// ranged attacking aim / shoot
	aimAngle = point_direction( x + armXoff, y - 16, mouse_x, mouse_y)
	if(mouse_check_button_pressed(mb_left)){
		// arr [ damage, speed, cooldown, cost, range, bonusScripts]
		//lengthdir_x(32, direction + 45)
		//create_Bullet( x + armXoff + lengthdir_x(90, aimAngle), y + 45 + lengthdir_y(90, aimAngle), aimAngle, [5, 30, 10, 10, 60, [Split_three]])
	}
	if(mouse_check_button_pressed(mb_right)){
		// arr [ damage, speed, cooldown, cost, range, bonusScripts]
		create_Bullet( x + armXoff + lengthdir_x(80, aimAngle), y - 16 + lengthdir_y(80, aimAngle), aimAngle, [15, 10, 20, 50, 512, [Light_Tracking, Speed_up]])
		
	}
}else{
	// controller aiming input
}

if(global.keybinds[9]){	// 0 w, 1 a, 2 s, 3 d
	var lIn = keyboard_check(global.keybinds[1])
	var rIn = keyboard_check(global.keybinds[3])
	if(dashing <= 20){
		if(lIn != rIn){
			if(lIn){
				r_dir = false
				l_dir = true
				hspeed = -global.playerArr[8]
			}else if(rIn){
				l_dir = false
				r_dir = true
				hspeed = global.playerArr[8]
			}
		}else{
			hspeed = 0
		}
	}else{
		dashing --
		if(dashing > 20){
			vspeed = -1
			if(r_dir){
				hspeed = 30
			}else if(l_dir){
				hspeed = -30
			}
		}
	}
	
	if(keyboard_check_pressed(global.keybinds[6])){
		dashing = 30
	}
	
	if(grounded){
		if(keyboard_check_pressed(global.keybinds[5])){
			jumpTimer = global.playerArr[9]
			vspeed = -20
		}
	}
	if(jumpTimer > 0){
		jumpTimer --
		if(keyboard_check(global.keybinds[5])){
			vspeed -= 1
		}
		if(keyboard_check_released(global.keybinds[5])){
			jumpTimer = 0
			vspeed += 15
		}
	}else{
		if(global.playerArr[14][2] > 0 && vspeed > 0){
			if(keyboard_check(global.keybinds[5])){
				vspeed -= 0.95
			}
		}
	}
	
	
	if(keyboard_check_pressed(global.keybinds[0])){
		u_dir = true
	}else if(keyboard_check_released(global.keybinds[0])){
		u_dir = false
	}
	
	if(keyboard_check_pressed(global.keybinds[2])){
		d_dir = true
	}else if(keyboard_check_released(global.keybinds[2])){
		d_dir = false
	}
	
	
}else{
	
}



event_inherited()




/*
global.playerArr[0] = 123456	// ID
global.playerArr[1] = "Name"	// name
global.playerArr[2] = 100		// max health
global.playerArr[3] = 100		// cur health
global.playerArr[4] = 20		// max energy
global.playerArr[5] = 20		// cur energy
global.playerArr[6] = 10		// top speed
global.playerArr[7] = 10		// jump height
*/