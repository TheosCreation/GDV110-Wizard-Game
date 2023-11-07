
SpellSprites = [spr_Fireball,spr_Waterball,spr_Airball,spr_Earthball,spr_ExplodingFireball,spr_AirShield,spr_EarthGrab];
//add new sprite here when making new spell
TileX = x div tile_width;
TileY = y div tile_height;

SelectedSpell = noone;
CurrentSpellSprite = SpellSprites[irandom_range(0,6)];
//add one to the range when making new spell
switch(CurrentSpellSprite){
	case spr_Fireball:
		SelectedSpell = obj_Fireball		
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
	case spr_ExplodingFireball:
		SelectedSpell = obj_ExplodingFireball;
		break;
	case spr_AirShield:
		SelectedSpell = obj_AirShield;
		break;
	case spr_EarthGrab:
		SelectedSpell = obj_EarthGrab;
		break;
	default:
	break;
	//add new case here too
	
}

CreatedText = false;
Confirm = false;
Deny = false;