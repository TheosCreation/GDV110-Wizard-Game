if(global.CanMove == false && Moved == false){
	DistanceX = x- instance_find(obj_Player,0).x;
	DistanceY = y-instance_find(obj_Player,0).y;
	
	show_debug_message("Y: ");
	show_debug_message(DistanceY);
	show_debug_message("X: ");
	show_debug_message(DistanceX);
	if(abs(DistanceY) > abs(DistanceX)){
	
		DistanceY = sign(DistanceY) = 0 ? 1 : sign(DistanceY);
		y -= sign(DistanceY)*16;
		
	}
	else{
		
		DistanceX = sign(DistanceX) = 0 ? 1 : sign(DistanceX);
		x -= sign(DistanceX)*16;

	}
		
	Moved = true;
	alarm[0] = 10;
}