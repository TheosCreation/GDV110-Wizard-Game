// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Rooms(){
	if(global.Budget > 0){
		for(var i = 0; i < Doors; i++){
			CreatedRoom = instance_create_layer(x+64,y,"Rooms",global.Rooms[random_range(0,4)][0]);
		}
	}
}

