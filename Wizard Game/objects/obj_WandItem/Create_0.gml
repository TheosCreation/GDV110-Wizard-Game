
TileX = x div tile_width;
TileY = y div tile_height;

WandSprites = [spr_EarthWand,spr_FireWand,spr_WaterWand, spr_AirWand];
AttackSlots = irandom_range(1,global.Level+2);
DefenceSlots = irandom_range(1,global.Level+2);
UtilitySlots = irandom_range(0,global.Level+1);
CurrentWandSprite = WandSprites[irandom_range(0,3)];


Confirm = false;
Deny = false;