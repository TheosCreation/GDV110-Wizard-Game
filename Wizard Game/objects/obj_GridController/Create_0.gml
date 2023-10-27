
tile_layer = layer_get_id("Walls");
tile_map = layer_tilemap_get_id(tile_layer);
grid = mp_grid_create(0, 0, room_width/tile_width, room_height/tile_height, tile_width, tile_height);

//mp_grid_add_instances(grid, obj_Player, 0)