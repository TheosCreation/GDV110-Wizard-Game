
if(canMove == true) { scr_Input(); }

if (right == 1 and canMove == true) { x += 16; turn += 1; alarm_set(0, 3); canMove = false; }
if (left == 1 and canMove == true) { x -= 16; turn += 1; alarm_set(0, 3); canMove = false; }

if (up == 1 and canMove == true) { y -= 16; turn += 1; alarm_set(0, 3); canMove = false; }
if (down == 1 and canMove == true) { y += 16; turn += 1; alarm_set(0, 3); canMove = false; }

//idle
//if (left == 0 and right == 0 and up == 0 and down == 0) { sprite_index = lastSprite; image_speed = 0;}
