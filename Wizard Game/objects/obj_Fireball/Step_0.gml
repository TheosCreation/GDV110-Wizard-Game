
direction = point_direction(originalX,originalY,TileXPos+ShootAngle,TileYPos+ShootAngle);
speed = BulletSpeed;
image_angle = direction;

if((TileXPos-10+ShootAngle < x and x < TileXPos+10+ShootAngle) and (TileYPos-10+ShootAngle < y and y < TileYPos+10+ShootAngle)){
//checks if it reacher the tile (or at least close enough yk
instance_destroy();
}

var CollisionList = ds_list_create();
// next to fix this so instead of objtestenemy it uses global.EnemyArray idk why it doesnt work with the global array
for(var i = 0; i < array_length(global.EnemyArray); i++){
	var num = collision_circle_list(x, y, tile_width/2,global.EnemyArray[i],false, true, CollisionList,true);
	if (num > 0)
	{

	    for (var j = 0; j < num; ++j;)
	    {
			if(!CollisionList[| j].Invulnerable){
				CollisionList[| j].Invulnerable = true;
				CollisionList[| j].Health-=25;
				switch(obj_Wand.CurrentWandSprite){
					case spr_FireWand:
					CollisionList[| j].DOT = true;
						break;
					case spr_WaterWand:
					obj_Player.Health++;
						break;
					case spr_AirWand:
					if(random_range(0,100)<20){
						 var spe = instance_create_layer(x,y,"Instances",obj_WindKnockback);
						 spe.ShootAngle=(random_range(0,360));
					}
						break;
					default:
						break;
				}
					instance_destroy();
			}
	    }

	}
}
