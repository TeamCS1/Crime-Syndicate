/// scrDrawLoot(x,y,icon,description,icon_width);

// Store the user variables
_x = argument0;
_y = argument1;
_icon = argument2;
_desc = argument3;
_width = argument4;

// Draw the loot
draw_sprite(_icon,0,_x,_y);
scrDrawText(_x+_width+5,_y,_desc,c_white,ft_properties,1,fa_left);
