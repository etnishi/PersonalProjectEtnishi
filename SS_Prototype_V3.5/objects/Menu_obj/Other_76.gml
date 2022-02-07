/// @description Insert description here
// You can write your code in this editor

if event_data[? "event_type"] == "sequence event"{
    if(event_data[? "message"] == "rev"){
		if(revSeq != ""){
			revSeq = layer_sequence_create("Front_Instances", 0, 0, revSeq)
		}
	}else if(event_data[? "message"] == "done"){
		instance_destroy(inSeq)
		instance_destroy(revSeq)
		revSeq = ""
		inSeq = ""
	}
}
