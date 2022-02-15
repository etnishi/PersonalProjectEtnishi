/// @description Insert description here
// You can write your code in this editor

if(Cdir == 0){
	offset = -1
}else if(Cdir == 1){
	offset = 1
}

for(var i = 0; i < array_length(behavior); i ++){
	behavior[i]()
}
if(actionCooldown > 0)
	actionCooldown --

event_inherited()
