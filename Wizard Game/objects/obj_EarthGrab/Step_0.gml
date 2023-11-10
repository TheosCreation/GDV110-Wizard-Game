/// @description Insert description here
// You can write your code in this editor


var CollisionList = ds_list_create();

for(var i = 0; i < array_length(global.EnemyArray); i++){
	var num = collision_circle_list(x, y, tile_width/2,global.EnemyArray[i],false, true, CollisionList,true);
	if (num > 0)
	{

	    for (var j = 0; j < num; ++j;)
	    {
			if(!CollisionList[| j].Invulnerable){
				CollisionList[| j].Invulnerable = true;
				CollisionList[| j].Health-=20;
			}
	    }

	}
}