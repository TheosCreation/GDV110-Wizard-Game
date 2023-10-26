// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_EnemyMoveList(NextMove){
switch(NextMove){
    case "MoveUp":
        t = (t<1) ? t+0.15 : 1;
        y = lerp(OldY, GoalY, t); 
    break;
    case "MoveDown":
        t = (t<1) ? t+0.15 : 1;
        y = lerp(OldY, GoalY, t);   
    break;
    case "MoveLeft":
        t = (t<1) ? t+0.15 : 1;
        x = lerp(OldX, GoalX, t);  
    break;
    case "MoveRight":
        t = (t<1) ? t+0.15 : 1;
        x = lerp(OldX, GoalX, t);
        
    break;
    case "AttackUp":
		if(abs(DistanceY) <= EnemyAttackRange){
			var slash = instance_create_layer(x+32,y+32,"Instances", obj_Slash);
			slash.image_blend = EnemyColor;
			slash.image_angle = 0;
			obj_Player.Health -= 1;
		}
    break;
    case "AttackDown":
		if(abs(DistanceY) <= EnemyAttackRange){
			var slash = instance_create_layer(x+32,y+32,"Instances", obj_Slash);
			slash.image_blend = EnemyColor;
			slash.image_angle = 180;
			obj_Player.Health -= 1;
		}
    break;
    case "AttackLeft":
		if(abs(DistanceX) <= EnemyAttackRange){
			var slash = instance_create_layer(x+32,y+32,"Instances", obj_Slash);
			slash.image_blend = EnemyColor;
			slash.image_angle = 90;
			obj_Player.Health -= 1;
		}
    break;
    case "AttackRight":
		if(abs(DistanceX) <= EnemyAttackRange){
			var slash = instance_create_layer(x+32,y+32,"Instances", obj_Slash);
			slash.image_blend = EnemyColor;
			slash.image_angle = 270;
			obj_Player.Health -= 1;
		}
    break;
    case "DoNothing":
    break;
}
NextMove = "DoNothing";

}