if(y = GoalPosY){
	speed = 0;
	GoalPosY = 378276;
}
if(x = GoalPosX){
	speed = 0;
	GoalPosX = 378276;
}



if(global.CanMove == false && Moved == false){
	DistanceX = x- instance_find(obj_Player,0).x;
	DistanceY = y-instance_find(obj_Player,0).y;
	

	if(abs(DistanceY) > abs(DistanceX)){
	
		DistanceY = sign(DistanceY) = 0 ? 1 : sign(DistanceY);
		GoalPosY = y - sign(DistanceY)*16;
		move_towards_point(x,GoalPosY,MoveSpeed);
		
	}
	else{
		
		DistanceX = sign(DistanceX) = 0 ? 1 : sign(DistanceX);
		GoalPosX = x - sign(DistanceX)*16;
		move_towards_point(GoalPosX,y,MoveSpeed);

	}
		
	Moved = true;
	alarm[0] = MoveCountdown;
}