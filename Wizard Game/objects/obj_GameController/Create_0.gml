randomise();
global.CanMove = true;
global.TileType = 0;
global.EnemyArray = [obj_TestEnemy]
//all enemies go here
enum states {
	idle,
	walking,
	attacking,
}
//funky vector 2 
global.Vector2 = [0,0];
//0 is x and 1 is y
#macro tile_width 64
#macro tile_height 64

global.m_Up = [0,-tile_height*2]
global.m_Down = [0,tile_height*2]
global.m_Left = [-tile_width*2,0]
global.m_Right = [tile_width*2,0]

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