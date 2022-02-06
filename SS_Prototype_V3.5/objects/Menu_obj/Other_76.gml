/// @description Insert description here
// You can write your code in this editor

if(inSeq != ""){
	if event_data[? "event_type"] == "sequence event"{
	    if(event_data[? "message"] == "rev"){
			instance_destroy(inSeq)
			inSeq = ""
			if(revSeq != ""){
				layer_sequence_create("Front_Instances", 0, 0, revSeq)
			}
		
		}else if(event_data[? "message"] == "done"){
			instance_destroy(inSeq)
			inSeq = ""
		}
	}
}