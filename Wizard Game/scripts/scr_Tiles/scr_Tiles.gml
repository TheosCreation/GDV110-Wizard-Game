
gml_pragma("global", "scr_Tiles()");



enum directions {
	right,
	up,
	left,
	down
}

//movements
global.components = [];
global.components[directions.right] = [1, 0];
global.components[directions.up] = [0, -1];
global.components[directions.left] = [-1, 0];
global.components[directions.down] = [0, 1];