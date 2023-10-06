direction = point_direction(originalX,originalY,TileXPos,TileYPos);
speed = BulletSpeed;
image_angle = direction;
if((TileXPos-10 < x and x < TileXPos+10) and (TileYPos-10 < y and y < TileYPos+10)){
//checks if it reacher the tile (or at least close enough yk
instance_destroy();
}