/// @description Insert description here
// You can write your code in this editor

if event_data[? "event_type"] == "sequence event"{
   if(event_data[? "message"] == "done"){
		if(seq != ""){
			instance_destroy(seq)
		}
	}
}