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

if(global.keybinds[8]){	// ranged attacking aim / shoot / parry / block
	aimAngle = point_direction( x + armXoff, y - 16, mouse_x, mouse_y)
	if(mouse_check_button_pressed(global.keybinds[10])){
		// arr [ damage, speed, cooldown, cost, range, bonusScripts]
		// lengthdir_x(32, direction + 45)
		// arr [ damage, charge, cooldown, range, bonusScripts]
		if(global.playerArr[14][4] > 0){
			Create_Swing(x, y, r_dir, global.playerArr[10])
		}
	}
	if(mouse_check_button_pressed(global.keybinds[11])){
		// arr [ damage, speed, cooldown, cost, range, bonusScripts]
		if(global.playerArr[14][5] > 0){
			battleStance = 120
			create_Bullet( x + armXoff + lengthdir_x(80, aimAngle), y - 16 + lengthdir_y(80, aimAngle), aimAngle, global.playerArr[12])
		}
	}
	if(mouse_check_button(global.keybinds[11])){
		if(global.playerArr[13] != ""){
			shotCharge ++
			battleStance = 120
			global.playerArr[13]()
		}
	}
	if(mouse_check_button_released(global.keybinds[11])){
		if(shotCharge > 60){
			// temp placeholder for charge shot script
			shotCharge = 0
			if(global.playerArr[13] != ""){
				global.playerArr[13]()
			}
		}
		shotCharge = 0
	}
	
	if(mouse_check_button(global.keybinds[12])){ //global.playerArr[11]
		if(global.playerArr[11] != ""){
			if(blockCharge < 90){
				blockCharge ++
			}
			if(blockCharge == 1){
				
			}
		}
	}
	if(mouse_check_button_released(global.keybinds[12])){
		if(blockCharge > 0)
			blockCharge = round(blockCharge / 2)
	}
}else{
	// controller aiming input
}
if(blockCharge > 0){	// blocking cooldown
	blockCharge --
}

if(dashing > 0){
	dashing --
}

if(global.keybinds[9]){	// 0 w, 1 a, 2 s, 3 d
	var lIn = keyboard_check(global.keybinds[1])
	var rIn = keyboard_check(global.keybinds[3])
	
	var uIn = keyboard_check(global.keybinds[0])
	var dIn = keyboard_check(global.keybinds[2])
	
	var spIn = keyboard_check(global.keybinds[5])
	
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
			
			if(uIn != dIn or spIn){
				if(uIn or spIn){
					u_dir = true
					d_dir = false
					if(place_meeting(x, y, Water_obj) and (global.playerArr[14][3] >= 1)){
						vspeed = -11
					}
				}else if(dIn){
					u_dir = false
					d_dir = true
					if(place_meeting(x, y, Water_obj) and (global.playerArr[14][3] >= 2)){
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

if(place_meeting(x, y - 32, Water_obj) and (global.playerArr[14][3] > 0)){
	vspeed -= 1
	if(place_meeting(x, y - 86, Water_obj)){
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
if(baddie and vulnerable){
	motion_set(point_direction(baddie.x + baddie.centerX,0, x + sprite_width/2, 0), 10)
	motion_add(90 , 10)
	knockback = 10
	damageCooldown = baddie.extDamage * 5
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
