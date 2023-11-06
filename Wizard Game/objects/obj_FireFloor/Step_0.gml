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
if(TileX = obj_Player.xPos && TileY = obj_Player.yPos &&!obj_Player.Invulnerable){
	obj_Player.Health--;
	obj_Player.Invulnerable = true;
	instance_destroy();
}