/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(Notification_obj)){
	instance_create_layer(0, 0, "Front_Instances", Notification_obj)
}
if(!instance_exists(Camera_obj)){
	instance_create_layer(0, 0, "Front_Instances", Camera_obj)
}
if(!instance_exists(Player_obj)){
	instance_create_layer(global.playerSpawn[0], global.playerSpawn[1], "Instances", Player_obj)
}