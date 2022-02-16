/// @description Insert description here
// You can write your code in this editor

var ins = instance_place(x, y, Entity_attack_super_obj)

if(ins){
	if(ins.friendly and (ins.arr[0] >= strength)){
		instance_destroy()
	}
}