// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_EnemyMoveList(NextMove){
switch(NextMove){
    case "MoveUp":
		var _y = lerp(yPos, nextTileY, 1);	
		y = _y * tile_height;
		scr_Move(directions.up);
    break;
    case "MoveDown":
		var _y = lerp(yPos, nextTileY, 1);	
		y = _y * tile_height;
		scr_Move(directions.down);
    break;
    case "MoveLeft":
		var _x = lerp(xPos, nextTileX, 1);	
		x = _x * tile_width;
		scr_Move(directions.left);
    break;
    case "MoveRight":
		var _x = lerp(xPos, nextTileX, 1);	
		x = _x * tile_width
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