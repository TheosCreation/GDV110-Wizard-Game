
SpellSprites = [spr_Fireball,spr_Waterball,spr_Airball,spr_Earthball];
TileX = x div tile_width;
TileY = y div tile_height;

SelectedSpell = noone;
CurrentSpellSprite = SpellSprites[irandom_range(0,3)];
switch(CurrentSpellSprite){
	case spr_Fireball:
		SelectedSpell = obj_Fireball;
		break;
	case spr_Waterball:
		SelectedSpell = obj_Waterball;
		break;
	case spr_Airball:
		SelectedSpell = obj_Airball;
		break;
	case spr_Earthball:
		SelectedSpell = obj_Earthball;
		break;
	default:
	break;
	
}

CreatedText = false;
Confirm = false;
Deny = false;