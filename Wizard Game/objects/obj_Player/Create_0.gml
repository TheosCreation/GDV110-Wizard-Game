count = 0;
Defense = 0
state = states.idle;
SwitchLevels = false;
xPos = x div tile_width;
yPos = y div tile_height;

teleport = false;
newTpPosX = 0;
newTpPosY = 0;

previousTileX = xPos;
previousTileY = yPos;

nextTileX = xPos;
nextTileY = yPos;

walk_anim_time = 6;
walk_anim_length = 0;

tile_layer = layer_get_id("Walls");
tile_map = layer_tilemap_get_id(tile_layer);
Shot = false;

MoveCooldown = 16;
MoveSpeed = 2;
Invulnerable = false;
InvulnerableTimer = 50;
Health = 50;
OldHealth = Health;
MaxHealth = Health;
Health_index = 0;
t = 0;

Direction = 0;

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