// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Rooms(){
	if(global.Budget > 0){
		for(var i = 0; i < Doors; i++){
			CreatedRoom = instance_create_layer(x+DoorPos[i][0],y+DoorPos[i][1],"Rooms",global.Rooms[random_range(1,4)][0]);
			CreatedRoom.image_angle = point_direction(CreatedRoom.x,CreatedRoom.y,x,y);
			CreatedRoom.x = x+DoorPos[i][0]
			CreatedRoom.y = y+DoorPos[i][1]
			
			show_debug_message("Room Created")
			show_debug_message(DoorPos[i]);
			show_debug_message(CreatedRoom.x-640);
			show_debug_message(CreatedRoom.y-640);
			
		}
	}
	else{
		for(var i = 0; i < Doors; i++){
			CreatedRoom = instance_create_layer(x+DoorPos[i][0],y+DoorPos[i][1],"Rooms",global.Rooms[0][0]);
			CreatedRoom.image_angle = point_direction(CreatedRoom.x,CreatedRoom.y,x,y);
		}
	}
}

