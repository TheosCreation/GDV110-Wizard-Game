randomise();
window_set_fullscreen(true);
CameraSpeed = 7;

camera_destroy(view_camera[0]);
view_camera[0] = camera_create_view(obj_Player.x -333, obj_Player.y - 222, 640, 480, 0, obj_Player, CameraSpeed, CameraSpeed, 1920, 1080);

global.CanMove = true;
global.TileType = 0;
global.EnemyArray = [obj_MagmaSnail]
//all enemies go here
enum states {
	idle,
	walking,
	attacking,
}
//0 is x and 1 is y
#macro tile_width 64
#macro tile_height 64

grid_width = (room_width / tile_width)
grid_height = (room_height / tile_width)

global.grid = mp_grid_create(0, 0, grid_width, grid_height, 64, 64)

tile_layer = layer_get_id("Walls");
global.tile_map = layer_tilemap_get_id(tile_layer);

for(var i = 0; i < grid_width; i++){
	for(var j = 0; j < grid_height; j++){
		if(tilemap_get(global.tile_map, i, j)) {
			mp_grid_add_cell(global.grid, i, j)
		}
	}
}

global.m_Up = [0,-tile_height*2];
global.m_Down = [0,tile_height*2];
global.m_Left = [-tile_width*2,0];
global.m_Right = [tile_width*2,0];

global.Level = 1;
//for scaling
global.GameFroze = false;

/*
RoomArr0 = [obj_Room1]
RoomArr1 = [obj_Room2,obj_Room3]
RoomArr2 = [obj_Room4]
RoomArr3 = [obj_Room5]
global.Rooms = [RoomArr0,RoomArr1,RoomArr2,RoomArr3];
global.Budget = 255;
instance_create_layer(640,640,"Rooms",global.Rooms[random_range(1,4)][0])
global.Color = 255;
*/