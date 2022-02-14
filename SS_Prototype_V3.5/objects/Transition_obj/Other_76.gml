/// @description Insert description here
// You can write your code in this editor

if event_data[? "event_type"] == "sequence event"{
   if(event_data[? "message"] == "rev"){
		inSeq = false
		if(saved_shot != ""){
			sprite_delete(saved_shot)
			saved_shot = ""
		}
	}
}
