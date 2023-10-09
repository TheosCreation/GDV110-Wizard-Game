
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
