for(var i = 0; i < MaxHealth/8; i++){	
	draw_sprite(spr_Health, floor(Health_index), (60*i), 30);
}
for(var i = 0; i < (MaxHealth-Health)/8; i++){	
	draw_sprite_ext(spr_Health, floor(Health_index), (60*i), 30,1,1,0,c_gray,1);
}