if(Health > MaxHealth) {
	Health = MaxHealth;
}
//drawing of the health
Health_index += (10/60)
if (floor(Health_index) >= 13) {
	Health_index = 0
}

// Door Direction
Direction = point_direction(x,y,obj_Door.x,obj_Door.y)
if(teleport){
	sprite_index = spr_Teleport;
	
	if(image_index == 0){
		newTpPosX = obj_Pointer.x+32;	
		newTpPosY = obj_Pointer.y+32;	
	}
	if(image_index == 8){
		x =	newTpPosX
		y = newTpPosY
	}
	if(image_index >= 14){
		sprite_index = spr_Player;
		teleport = false;
	}
	xPos = x div tile_width;
	yPos = y div tile_height;

	previousTileX = xPos;
	previousTileY = yPos;

	nextTileX = xPos;
	nextTileY = yPos;
	
}
else{
	if(global.CanMove or state = states.walking && !global.GameFroze){
		scr_Input();
		if(state == states.walking) {
			t += 0.07;
	
	
			x = lerp(x, nextTileX* tile_width+32, t);
			y = lerp(y, nextTileY* tile_height+32, t);
			global.CanMove = false; 
				
			if(t >= 1) {
				t = 0;
			state = states.idle;
			global.CanMove = true;
		}
	}
	
	else if(state == states.attacking&&!Shot&&obj_Wand.SpellCount!=0 && !global.GameFroze){
			alarm[2] = 1;
			global.CanMove = false; 
			alarm_set(0, MoveCooldown);
			Shot = true;
		}
		else if(state == states.attacking&&!Shot){
			global.CanMove = false; 
			alarm_set(0, MoveCooldown);
			Shot = true;
		}
	
	}
}

//take damage code invul frames and stuff
if (OldHealth > Health) {
	OldHealth = Health;
    alarm[1] = InvulnerableTimer;
    image_blend = c_aqua;
}
else if (OldHealth < Health) {
	OldHealth = Health;
}

if (Health <= 0) {
	room_goto(DeathScreen);
	instance_destroy(obj_Wand);
	instance_destroy(obj_Inventory);
	instance_destroy(obj_InventorySlot);
	instance_destroy();
}

if (SwitchLevels) {
		switch(room) {
		case Game:
			x = 736; 
			y = 672;
			break;
		case Level2:
			x = 288;
			y = 352;
			break;
		case Level3:
			x = 224;
			y = 224;
			break;
		case Level4:
			x = 544;
			y = 1504;
			break;
		case Level5:
			x = 288;
			y = 224;
			break;
		case Level6:
			x = 288;
			y = 288;
			break;
		case Level7:
			x = 288;
			y = 224;
			break;
		case Level8:
			x = 2400;
			y = 160;
			break;
		case Level9:
			x = 224;
			y = 160;
			break;
		}
	
camera_set_view_pos(view_camera[0],x-333,y-222);
xPos = x div tile_width;
yPos = y div tile_height;

obj_Door.DoorOpen = false;

previousTileX = xPos;
previousTileY = yPos;

nextTileX = xPos;
nextTileY = yPos;

tile_layer = layer_get_id("Walls");
tile_map = layer_tilemap_get_id(tile_layer);
Shot = false;

	
Health = 50;
OldHealth = Health;
MaxHealth = Health;
Health_index = 0;
SwitchLevels = false;
}