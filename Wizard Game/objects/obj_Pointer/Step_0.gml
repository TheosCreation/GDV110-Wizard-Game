if(mouse_x<obj_Player.x+768/2 && mouse_y<obj_Player.y+432/2
&&mouse_x>obj_Player.x-768/2 && mouse_y>obj_Player.y-432/2){
	x = (round((mouse_x-32)/tile_width)*tile_width);
	y = (round((mouse_y-32)/tile_height)*tile_height);
}
TileX = x div tile_width;
TileY = y div tile_height;

if(tilemap_get(tile_map, TileX, TileY)) {
	CanAttack = true;
}else{
	CanAttack = false;
}

