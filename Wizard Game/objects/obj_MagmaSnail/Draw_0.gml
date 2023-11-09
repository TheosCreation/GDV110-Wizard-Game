draw_text(x,y, NextMove);
draw_self()

draw_path(path, x, y, true);

draw_healthbar(x, y+10, x+64, y-10, Health*33+1, c_black, c_red, c_red, 1, true, false);