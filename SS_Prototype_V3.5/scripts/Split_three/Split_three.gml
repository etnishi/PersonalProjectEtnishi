// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Split_three(){
	if(Step == 0){
		var _xx = x + lengthdir_x(32, direction + 90);
		var _yy = y + lengthdir_y(32, direction + 90);
		var ins = create_Bullet(_xx, _yy, direction, arr)
		ins.Step = 1
		ins.targ = targ
		ins.range = arr[4]
		ins.speed = arr[1]
	
		_xx = x + lengthdir_x(32, direction - 90);
		_yy = y + lengthdir_y(32, direction - 90);
		ins = create_Bullet(_xx, _yy, direction, arr)
		ins.Step = 1
		ins.targ = targ
		ins.range = arr[4]
		ins.speed = arr[1]
	}
}
