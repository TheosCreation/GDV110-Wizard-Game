if(Health <= 0){
    scr_Die();
}
show_debug_message(MoveCooldown)
var x_cell = obj_Player.x;
var y_cell = obj_Player.y;
DistanceX =abs( x- instance_find(obj_Player,0).x);
DistanceY = abs(y-instance_find(obj_Player,0).y);

PlayerInRange = (DistanceX <= EnemyViewRange and DistanceY <= EnemyViewRange )? true : false; 
PlayerInAttackRange = (DistanceX <= EnemyAttackRange and DistanceY <= EnemyAttackRange )? true : false; 
// checks if player is in range
if(global.CanMove){
	Moved = false;
	Attacked = false;
}
if(!global.CanMove && PlayerInRange && !global.GameFroze && !PlayerInAttackRange && !Moved && MoveCooldown <= 0) {
	
	mp_grid_path(global.grid, path, OldX+32, OldY+32, x_cell, y_cell, false);
    Moved = true;
//	instance_create_layer(x,y,"Instances",obj_FireFloor);
	path_start(path, MoveSpeed, path_action_stop, false);

	MoveCooldown = 1;
}
else if(!global.CanMove && PlayerInRange && !global.GameFroze && !PlayerInAttackRange && !Moved && MoveCooldown > 0){
	MoveCooldown--;
	Moved = true;

}
else if(!global.CanMove &&!global.GameFroze && PlayerInAttackRange && !Moved&&!Attacked) {
	path_end();
	y = (round((y)/tile_width)*tile_width);
	x = (round((x)/tile_width)*tile_width);
	OldX = x;
    OldY = y;
	//attack player here

	var slash = instance_create_layer(x+32,y+32,"Instances", obj_Vine);
	slash.image_blend = EnemyColor;
	//determine attack side then attack
	Attacked = true;
	//slash.image_angle = 90;
	
}
else if(abs(x+y) >= abs(OldX+OldY+64)|| abs(x+y) <= abs(OldX+OldY-64)){
    path_end();
	y = (round((y)/tile_width)*tile_width);
	x = (round((x)/tile_width)*tile_width);
    OldX = x;
    OldY = y;

}
else{
	y = (round((y)/tile_width)*tile_width);
	x = (round((x)/tile_width)*tile_width);

}

//take damage code invul frames and stuff
if(OldHealth > Health){
    OldHealth = Health
    alarm[1] = InvulnerableTimer;
    image_blend = c_aqua;
}