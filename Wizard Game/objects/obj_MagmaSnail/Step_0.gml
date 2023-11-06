if(Health <= 0){
    scr_Die();
}
var x_cell = floor(obj_Player.x);
var y_cell = floor(obj_Player.y);

mp_grid_path(global.grid, path, x+32, y+32, x_cell, y_cell, false);

DistanceX = x- instance_find(obj_Player,0).x;
DistanceY = y-instance_find(obj_Player,0).y;

PlayerInRange = (abs(DistanceX) <= EnemyViewRange and abs(DistanceY) <= EnemyViewRange )? true : false; 
PlayerInAttackRange = (abs(DistanceX) <= EnemyAttackRange and abs(DistanceY) <= EnemyAttackRange )? true : false; 
// checks if player is in range
if(!global.CanMove && PlayerInRange && !global.GameFroze && !PlayerInAttackRange && !Moved) {
    Moved = true;
	instance_create_layer(x,y,"Instances",obj_FireFloor);
	path_start(path, MoveSpeed, path_action_stop, false);
}
else if(abs(x+y) >= abs(OldX+OldY+64)|| abs(x+y) <= abs(OldX+OldY-64)){
    path_end();
	y = (round(y/tile_height)*tile_height);
	x = (round(x/tile_width)*tile_width);
    OldX = x;
    OldY = y;
	Moved = false;
}
if(PlayerInAttackRange) {
	path_end();
	y = (round(y/tile_height)*tile_height);
	x = (round(x/tile_width)*tile_width);
	//attack player here
	Moved = false;
}
//take damage code invul frames and stuff
if(OldHealth > Health){
    OldHealth = Health
    alarm[1] = InvulnerableTimer;
    image_blend = c_aqua;
}