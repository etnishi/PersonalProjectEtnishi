/// @description Player character Step Event
/*
this is the step event for the playable character.
This contains input checking for keyboard and mouse for actions such as moving jumping swimming 
dashing and attacking.
it also checks for interactions with ladders

*/


if(keyboard_check_pressed(ord("P"))){
	show_debug_message("Debug Break")
	knockback = 30
}
if(keyboard_check_pressed(ord("L"))){
	show_debug_message("Debug Reset")
	room_restart()
}

if(battleStance > 0)
	battleStance --

if(global.keybinds[8]){	// ranged attacking aim / shoot
	aimAngle = point_direction( x + armXoff, y - 16, mouse_x, mouse_y)
	if(mouse_check_button_pressed(mb_left)){
		// arr [ damage, speed, cooldown, cost, range, bonusScripts]
		//lengthdir_x(32, direction + 45)
		// arr [ damage, charge, cooldown, range, bonusScripts]
		Create_Swing(x, y, r_dir, [10, 45, 60, 2, []])
	}
	if(mouse_check_button_pressed(mb_right)){
		// arr [ damage, speed, cooldown, cost, range, bonusScripts]
		battleStance = 120
		create_Bullet( x + armXoff + lengthdir_x(80, aimAngle), y - 16 + lengthdir_y(80, aimAngle), aimAngle, [15, 10, 20, 50, 512, [Light_Tracking, Speed_up]])
		
	}
}else{
	// controller aiming input
}
if(dashing > 0){
	dashing --
}

if(global.keybinds[9]){	// 0 w, 1 a, 2 s, 3 d
	var lIn = keyboard_check(global.keybinds[1])
	var rIn = keyboard_check(global.keybinds[3])
	
	var uIn = keyboard_check(global.keybinds[0])
	var dIn = keyboard_check(global.keybinds[2])
	
	if(knockback <= 0){
		if(dashing <= 40){
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
			
			if(uIn != dIn){
				if(uIn){
					u_dir = true
					d_dir = false
					if(place_meeting(x, y, Water_obj) and (global.playerArr[14][3] = 1)){
						vspeed = -11
					}
				}else if(dIn){
					u_dir = false
					d_dir = true
					if(place_meeting(x, y, Water_obj) and (global.playerArr[14][3] = 2)){
						vspeed = 9
					}
				}
			}else{
				u_dir = false
				d_dir = false
			}
		
			if(grounded or (place_meeting(x, y, Water_obj) and (global.playerArr[14][3] = 2))){	// Abilities that require being grounded (can be used unrestricted in water if can swim level 2) 
				if(keyboard_check_pressed(global.keybinds[5])){
					jumpTimer = global.playerArr[9]
					vspeed = -20
				}
			}else{
				
			}
			
			if(jumpTimer > 0){
				jumpTimer --
				if(keyboard_check(global.keybinds[5])){
					vspeed -= 1
				}
				if(keyboard_check_released(global.keybinds[5])){
					jumpTimer = 0
					vspeed += -(vspeed / 2)
				}
			}else{
				if(global.playerArr[14][2] > 0 && vspeed > 0){
					if(keyboard_check(global.keybinds[5]) and (global.playerArr[14][2] = 1)){
						vspeed -= 0.95
						if(vspeed > 4)
							vspeed -= 0.06
					}
				}
			}
			
		}else{
			if(dashing > 40){
				if(u_dir and (global.playerArr[14][1] = 1)){
					vspeed = -21
				}else if(d_dir and (global.playerArr[14][1] = 1)){
					vspeed = 19
				}else if(r_dir){
					vspeed = -1
					hspeed = 30
				}else if(l_dir){
					vspeed = -1
					hspeed = -30
				}
			}
		}
		
	}else{
		knockback --
	}
	
	if(keyboard_check_pressed(global.keybinds[6])){
		if(dashing == 0 and (global.playerArr[14][0] = 1) )
			dashing = 50
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

if(place_meeting(x, y - 32, Water_obj) and (global.playerArr[14][3] = 1)){
	vspeed -= 1
	if(place_meeting(x, y - 64, Water_obj) and (global.playerArr[14][3] = 1)){
		vspeed -=0.7
	}
}

var ladd = instance_place(x, y, Ladder_obj)
if(ladd){
	if(uIn or dIn){
		onLadder = ladd
		x = ladd.x
	}
	if(onLadder != ""){
		vspeed = -1
		grounded = true
		if(uIn){
			vspeed = -5
		}else if(dIn){
			vspeed = 5
		}
	}
}else{
	onLadder = ""
}

var rec = instance_place(x, y, Recall_point_obj)
if( rec ){
	xRecall = rec.x - (sprite_width / 2)
	yRecall = rec.y - sprite_height
}

var baddie = instance_place(x,y,Enemy_super_obj)
if(baddie){
	motion_set(point_direction(baddie.x + baddie.centerX,0, x + sprite_width/2, 0), 10)
	motion_add(90 , 5)
	knockback = 10
}

event_inherited() // solid object collision

if(!curAlive){
	
}

global.playerArr[5] = curHealth

/*
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
*/
