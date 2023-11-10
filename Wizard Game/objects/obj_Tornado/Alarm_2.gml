alarm[2] = 1;

		var spe = instance_create_layer(x+32,y+32,"Instances",obj_WindAttack);	
		spe.ShootAngle=(random_range(0,360));
	
	if(random_range(0,100) < 5){
		var spa = instance_create_layer(x+32,y+32,"Instances",obj_Cow);	
		spa.ShootAngle=(random_range(0,360));
	}