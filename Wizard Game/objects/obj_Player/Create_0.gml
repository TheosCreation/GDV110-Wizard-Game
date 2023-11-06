

state = states.idle;

xPos = x div tile_width;
yPos = y div tile_height;

previousTileX = xPos;
previousTileY = yPos;

nextTileX = xPos;
nextTileY = yPos;

walk_anim_time = 6;
walk_anim_length = 0;

tile_layer = layer_get_id("Walls");
tile_map = layer_tilemap_get_id(tile_layer);
Shot = false;

MoveSpeed = 2;
Invulnerable = false;
InvulnerableTimer = 50;
Health = 5;
OldHealth = Health;
MaxHealth = Health;
Health_index = 0;
t = 0;


//////////////////////////////////////////////////////////////////////
		//		//		//		//		//		//		//		//
		//		//		//		//		//		//		//		//
		//		//		//		//		//		//		//		//
		//		//		//		//		//		//		//		//		
//////////////////////////////////////////////////////////////////////
		//		//		//		//		//		//		//		//
		//		//		//		//		//		//		//		//
		//		//		//		//		//		//		//		//
		//		//		//		//		//		//		//		//		
//////////////////////////////////////////////////////////////////////