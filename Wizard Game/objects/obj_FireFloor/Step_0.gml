if(!global.CanMove and !GoneDown){
	DestroyCountdown-=1;
	GoneDown = true;
	
}
else if(global.CanMove){
	GoneDown = false;
}

if(DestroyCountdown<=0){
	instance_destroy();
}
if(place_meeting(x,y,obj_Player)){
	obj_Player.Health-=10;
	instance_destroy();
}