draw_sprite_ext(spr_HealthText, 1, 50, 2, 5, 5, 1, c_white, 1)

for(var i = 0; i < MaxHealth; i++){	
	draw_sprite_ext(spr_Health, floor(Health_index), 450+(100*-i), 70,1.5,1.5,0,c_white,1);
}
for(var i = 0; i < (MaxHealth-Health); i++){	
	draw_sprite_ext(spr_Health, floor(Health_index), 450+(100*-i), 70,1.5,1.5,0,c_gray,1);
}
