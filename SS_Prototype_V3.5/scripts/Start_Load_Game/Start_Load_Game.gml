// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Start_Load_Game(){
	if(loadPlayer(curInd)){
		global.config[4] = curInd
		saveConf()
		Start_Game()
	}
}