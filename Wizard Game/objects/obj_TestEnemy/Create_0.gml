
//set to x or y depending, i would usually do scuffed ass bool but ig this is cleaner lol



//pretty much all copied from player xdxd
Moved = false;

MoveSpeed = 1;
MoveCount = 0;
//this is how many breaks it will have.

MoveCountdown = 20;

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

