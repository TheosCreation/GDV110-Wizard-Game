
alpha = 0.8;
drawGrid = true;
roomSizex = 15;
roomSizey = 10;
//spawn grid

//loop for length
gridArray[0, 0] = 0;
for (var i = 0; i < roomSizex; i++) {
	for (var j = 0; j < roomSizey; j++) {
	gridArray[i, j] = 1;
	}
}

//check for collisions if yes, kill the entry again
for (var i2 = 0; i2 < roomSizex; i2++) {
	for(var j2 = 0; j2 < roomSizey; j2++) {
		if (collision_point(x + (i2*16), y + (j2*16), obj_Wall, 0, 0)) { gridArray[i2, j2] = 0; }
	}
}