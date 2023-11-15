Knockback  = false;
FirstKnockback = true;
oldFlyX = x;
oldFlyY = y;
DOT = false;
Attacked = false;
Moved = false;
Moving = false;
MoveSpeed = 4;
MoveCount = 0;

MoveCooldown = 1;
EnemyViewRange = 448;
EnemyAttackRange = 192;

xPos = x div tile_width;
yPos = y div tile_height;

walk_anim_time = 6;
walk_anim_length = 0;

Health = 150;
OldHealth = Health;
Invulnerable = false;
InvulnerableTimer =10;

PlayerInRange = false;
EnemyColor = c_white;

NextMove = "";
NextMoveWall = false;
t = 0;
GoalX = x;
GoalY = y;
OldX = x;
OldY = y;

//Astar 
path = path_add();