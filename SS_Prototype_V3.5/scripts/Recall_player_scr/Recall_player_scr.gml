// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Recall_player(){
	if(instance_exists(Player_obj)){
		Player_obj.x = Player_obj.xRecall
		Player_obj.y = Player_obj.yRecall
	}
}