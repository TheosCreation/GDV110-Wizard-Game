global.CanMove = true;
global.TileType = 0;
global.EnemyArray = [obj_TestEnemy]
enum states {
	idle,
	walking,
	attacking,
}
randomise();

RoomArr0 = [obj_Room1]
RoomArr1 = [obj_Room2,obj_Room3]
RoomArr2 = [obj_Room4]
RoomArr3 = [obj_Room5]
global.Rooms = [RoomArr0,RoomArr1,RoomArr2,RoomArr3];
global.Budget = 10;

instance_create_layer(640,640,"Rooms",global.Rooms[random_range(0,4)][0])

//enemies have to check for this being false
//if this is false allow enemies to move.

