
direction = point_direction(originalX,originalY,TileXPos,TileYPos);
speed = BulletSpeed;
image_angle = direction;
if((TileXPos-10 < x and x < TileXPos+10) and (TileYPos-10 < y and y < TileYPos+10)){
//checks if it reacher the tile (or at least close enough yk
instance_destroy();
}

var CollisionList = ds_list_create();
// next to fix this so instead of objtestenemy it uses global.EnemyArray idk why it doesnt work with the global array
var num = collision_circle_list(x, y, tile_width/2,obj_TestEnemy,false, true, CollisionList,true);
if (num > 0)
{

    for (var i = 0; i < num; ++i;)
    {
		if(!CollisionList[| i].Invulnerable){
			CollisionList[| i].Health -= 50;
		}
    }
}
