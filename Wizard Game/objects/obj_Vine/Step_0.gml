if(!global.CanMove and !GoneDown){
	DestroyCountdown-=1;
	GoneDown = true;
}
else if(global.CanMove){
	GoneDown = false;
}

if(DestroyCountdown==0){
	Damage = true;
	sprite_index = spr_Vine;
	
}

else if(DestroyCountdown<=-4){
	image_speed = -1;
	//instance_destroy();
	Damage = false
	if(image_index = 0){
		instance_destroy();
	}
}

if(TileX = obj_Player.xPos && TileY = obj_Player.yPos &&!obj_Player.Invulnerable&&Damage){
	obj_Player.Health -=10-obj_Player.Defense;
	obj_Player.Invulnerable = true;
	Damage = false;
	//instance_destroy();
}