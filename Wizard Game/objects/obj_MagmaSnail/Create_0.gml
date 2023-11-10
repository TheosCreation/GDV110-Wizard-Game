
Attacked = false;
Moved = false;
Moving = false;
MoveSpeed = 4;
MoveCount = 0;
t = 0;
FirstKnockback = true;
oldFlyX = x;
oldFlyY = y;
MoveCountdown = 10;
EnemyViewRange = 448;
EnemyAttackRange = 65;

xPos = x div tile_width;
yPos = y div tile_height;

walk_anim_time = 6;
walk_anim_length = 0;

Health = 100;
OldHealth = Health;
Invulnerable = false;
InvulnerableTimer =10;

PlayerInRange = false;
EnemyColor = c_red;

NextMove = "";
NextMoveWall = false;
t = 0;
GoalX = x;
GoalY = y;
OldX = x;
OldY = y;

//Astar 
path = path_add();

Knockback = false;