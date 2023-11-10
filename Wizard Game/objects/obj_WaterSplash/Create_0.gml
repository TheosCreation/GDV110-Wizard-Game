
BulletSpeed = 5;
TileXPos = (obj_Player.x+((obj_Pointer.x+32-obj_Player.x)/(obj_Pointer.x+32)*1000)*64)
TileYPos = (obj_Player.y+((obj_Pointer.y+32-obj_Player.y)/(obj_Pointer.x+32)*1000)*64)

//update mouse pos to tile pos
originalX = x;
originalY = y;
ShootAngle = 0;


count = 0;

image_angle = -90;
alarm[0] = 10;
