
direction = point_direction(originalX,originalY,TileXPos,TileYPos)+ShootAngle;
speed = BulletSpeed;
image_angle = direction+90;



var CollisionList = ds_list_create();
// next to fix this so instead of objtestenemy it uses global.EnemyArray idk why it doesnt work with the global array
for(var i = 0; i < array_length(global.EnemyArray); i++){
	var num = collision_circle_list(x, y, tile_width/2,global.EnemyArray[i],false, true, CollisionList,true);
	if (num > 0)
	{

	    for (var j = 0; j < num; ++j;)
	    {
			if(!CollisionList[| j].Invulnerable){
				CollisionList[| j].Health-=10;
				
			}
	    }

	}
}