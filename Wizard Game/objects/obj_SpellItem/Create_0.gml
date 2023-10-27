
TileX = x div tile_width;
TileY = y div tile_height;

SpellSprites = [spr_Fireball,spr_Waterball];
SelectedSpell = noone;
CurrentSpellSprite = SpellSprites[irandom_range(0,1)];
switch(CurrentSpellSprite){
	case spr_Fireball:
		SelectedSpell = obj_Fireball;
		break;
	case spr_Waterball:
		SelectedSpell = obj_Waterball;
		break;
	default:
	break;
	
}

CreatedText = false;
Confirm = false;
Deny = false;