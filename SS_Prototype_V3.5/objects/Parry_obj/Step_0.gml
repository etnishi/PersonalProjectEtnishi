/// @description Insert description here
// You can write your code in this editor

var ins = instance_place(x, y, Entity_attack_super_obj)

if(ins){
	timer = 4
	ins.friendly = side
	if(!place_meeting(x, y, Swing_base_obj)){
		ins.direction = -ins.direction
	}
}

timer --

if(timer <= 0){
	instance_destroy()
}