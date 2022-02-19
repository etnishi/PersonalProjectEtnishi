/// @description Insert description here
// You can write your code in this editor
firstStep = true
if(!instance_exists(Notification_obj)){
	instance_create_layer(0, 0, "Front_Instances", Notification_obj)
}
if(!instance_exists(Player_obj)){
	instance_create_layer(global.playerSpawn[0], global.playerSpawn[1], "Instances", Player_obj)
}
if(!instance_exists(Camera_obj)){
	instance_create_layer(Player_obj.x, Player_obj.y, "Front_Instances", Camera_obj)
}

seq = ""

if(global.playerSpawn[2] != ""){
	seq = layer_sequence_create("Front_Instances", 0, 0, global.playerSpawn[2])
}