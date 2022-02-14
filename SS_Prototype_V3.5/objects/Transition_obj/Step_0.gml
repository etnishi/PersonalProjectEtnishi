/// @description Insert description here
// You can write your code in this editor

if(inSeq){
	if(saved_shot != ""){
		saved_shot = sprite_create_from_surface(application_surface, 0, 0, camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), false, false, 0, 0)
		if(seq != ""){
			layer_sequence_create("Front_Instances", camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), seq)
		}
	}
}else{
	if(saved_shot != ""){
		sprite_delete(saved_shot)
		saved_shot = ""
	}
	if(Tscript != ""){
		Tscript()
	}
	
	instance_destroy()
	
}