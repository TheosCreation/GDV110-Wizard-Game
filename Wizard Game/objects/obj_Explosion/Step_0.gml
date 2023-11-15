/// @description Insert description here
// You can write your code in this editor


var CollisionList = ds_list_create();

for(var i = 0; i < array_length(global.EnemyArray); i++){
	var num = collision_circle_list(x, y, tile_width,global.EnemyArray[i],false, true, CollisionList,true);
	if (num > 0)
	{

	    for (var j = 0; j < num; ++j;)
	    {
			if(!CollisionList[| j].Invulnerable){
				CollisionList[| j].Invulnerable = true;
				CollisionList[| j].Health-=34;
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
				
			}
	    }

	}
}