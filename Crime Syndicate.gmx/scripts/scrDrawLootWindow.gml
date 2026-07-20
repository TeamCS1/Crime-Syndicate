/// scrDrawLootWindow(location,color,alpha,outline,o_color,loot,lootHeight);

// Store the user variables
_loc = argument0;
_color = argument1;
_alpha = argument2
_outline = argument3;
_oColor = argument4;
_loot = argument5;
_lootHeight = argument6;

// Setup Location variables
_x1 = 0;
_x2 = 0;
_y1 = 0;
_y2 = 0;

// Create the window based on location (0-2)

// Top Location
if (_loc == 0)
{ // top left
    _x1 = view_xview[0] + _lootHeight;
    _x2 = _x1 + 250;
    _y1 = view_yview[0] + _lootHeight;
    _y2 = _y1 + (_loot * _lootHeight) + (5 * _loot + 5);
}
else if (_loc == 1)
{ // top center
    _x1 = view_xview[0] + (view_wview[0] / 2) - (250 / 2);
    _x2 = _x1 + 250;
    _y1 = view_yview[0] + _lootHeight;
    _y2 = _y1 + (_loot * _lootHeight) + (5 * _loot + 5);
}
else if (_loc == 2)
{ // top right
    _x1 = view_xview[0] + view_wview[0] - 250 - _lootHeight;
    _x2 = _x1 + 250;
    _y1 = view_yview[0] + _lootHeight;
    _y2 = _y1 + (_loot * _lootHeight) + (5 * _loot + 5);
}

// Set the global location for displaying loot
global._x1 = _x1;
global._x2 = _x2;
global._y1 = _y1;
global._y2 = _y2;

// Draw the loot window background (this is the blue one)
draw_set_alpha(_alpha);
draw_rectangle_colour(_x1, _y1 - 16, _x2 + 128, _y2, _color, _color, _color, _color, 0);
draw_rectangle_colour(_x1, _y1, _x2 + 128, _y2, _color, _color, _color, _color, 0);
draw_set_alpha(1);

// Draw the loot window border (if true, this is the white one)
if (_outline == true)
{
    draw_rectangle_colour(_x1, _y1 - 16, _x2 + 128, _y2, _oColor, _oColor, _oColor, _oColor, 1);
}
