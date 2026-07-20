/// scrDrawText(x,y,text,f_color,f_type,f_size,f_align);

// Store the user's variables
_x = argument0;
_y = argument1;
_text = argument2;
_color = argument3;
_font = argument4;
_size = argument5;
_align = argument6;

// Setup the font options
draw_set_color(_color);
draw_set_font(_font);
draw_set_halign(_align);

// Draw the transformed text
draw_text_transformed_colour(_x,_y,_text,_size,_size,0,_color,_color,_color,_color,1);
