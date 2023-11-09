draw_sprite_ext(spr_HealthText, 1, 55, 45, 7, 7, 1, c_white, 1)

for(var i = 0; i < MaxHealth/10; i++){	
	draw_sprite_ext(spr_Health, floor(Health_index), 600+(100*-i), 40,1.5,1.5,0,c_white,1);
}
for(var i = 0; i < (MaxHealth-Health)/10; i++){	
	draw_sprite_ext(spr_Health, floor(Health_index), 600+(100*-i), 40,1.5,1.5,0,c_gray,1);
}
