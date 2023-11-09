if(Health <= 0){
    scr_Die();
}
var x_cell = obj_Player.x;
var y_cell = obj_Player.y;
DistanceX = abs(abs(x+32)- abs(instance_find(obj_Player,0).x));
DistanceY = abs(abs(y+32)- abs(instance_find(obj_Player,0).y));

PlayerInRange = (DistanceX <= EnemyViewRange and DistanceY <= EnemyViewRange )? true : false; 
PlayerInAttackRange = (DistanceX <= EnemyAttackRange and DistanceY <= EnemyAttackRange )? true : false; 
// checks if player is in range
if(global.CanMove){
	Attacked = false;
		Moved = false;
}
if(!global.CanMove && PlayerInRange && !global.GameFroze && !PlayerInAttackRange && !Moved) {
	Attacked = true
	mp_grid_path(global.grid, path, OldX+32, OldY+32, x_cell, y_cell, false);
    Moved = true;
	instance_create_layer(x,y,"Instances",obj_FireFloor);
	path_start(path, MoveSpeed, path_action_stop, false);
	
	
	
}
else if(!global.CanMove &&!global.GameFroze && PlayerInAttackRange && !Moved && !Attacked) {
	path_end();
	y = (round((y)/tile_width)*tile_width);
	x = (round((x)/tile_width)*tile_width);
	OldX = x;
    OldY = y;
	//attack player here

	var slash = instance_create_layer(x+32,y+32,"Instances", obj_Slash);
	slash.image_blend = EnemyColor;
	//determine attack side then attack

	Attacked = true;
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