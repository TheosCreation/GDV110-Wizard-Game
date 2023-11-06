
direction = point_direction(originalX,originalY,TileXPos+ShootAngle,TileYPos+ShootAngle);
speed = BulletSpeed;
image_angle = direction;

if((TileXPos-5+ShootAngle < x and x < TileXPos+5+ShootAngle) and (TileYPos-5+ShootAngle < y and y < TileYPos+5+ShootAngle)){
//checks if it reacher the tile (or at least close enough yk
instance_create_layer(x,y,"Instances",obj_Explosion);
instance_destroy();
}

