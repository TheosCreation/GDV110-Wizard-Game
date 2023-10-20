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