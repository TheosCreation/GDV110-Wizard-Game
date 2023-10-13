// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_EnemyMoveList(NextMove){
switch(NextMove){
    case "MoveUp":

		y = lerp(y, nextTileY*tile_height, t);	

		scr_Move(directions.up);
    break;
    case "MoveDown":

		y = lerp(y, nextTileY*tile_height, t);	
		
		scr_Move(directions.down);
    break;
    case "MoveLeft":
		
		x = lerp(x, nextTileX*tile_width, t);	
	
		scr_Move(directions.left);
    break;
    case "MoveRight":

		x = lerp(x, nextTileX*tile_width, t);	
		
		scr_Move(directions.right);
    break;
    case "AttackUp":

    break;
    case "AttackDown":

    break;
    case "AttackLeft":
    break;
    case "AttackRight":
    break;
    case "DoNothing":
    break;
}
NextMove = "DoNothing";

}