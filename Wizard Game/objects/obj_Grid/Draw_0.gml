
if (drawGrid == true) {
	for(var i = 0; i < roomSizex; i++){
		for(var j = 0; j < roomSizey; j++) {
			if(gridArray[i, j] == 1) {
				draw_sprite_ext(spr_Grid, 0, x + (i*16), y + (j*16), 1, 1, 0, c_white, alpha);
			}
		}
	}
}