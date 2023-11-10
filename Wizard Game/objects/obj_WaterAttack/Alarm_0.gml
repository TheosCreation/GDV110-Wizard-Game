BulletSpeed = 0;
if(count <5){
	 var spe = instance_create_layer(x,y,"Instances",obj_WaterSplash);
	 spe.count = count+1;
	 spe.ShootAngle=(count*10)
	 spe.TileXPos  = TileXPos//+ (x-obj_Player.x);
	 spe.TileYPos  = TileYPos// +(y-obj_Player.y);
	 spe = instance_create_layer(x,y,"Instances",obj_WaterSplash);
	 spe.ShootAngle=-(count*10)
	 spe.TileXPos  = TileXPos
     spe.TileYPos  = TileYPos
	 spe.count = count+1;
}