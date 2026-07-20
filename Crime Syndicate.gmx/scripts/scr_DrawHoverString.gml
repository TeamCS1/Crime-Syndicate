///scr_DrawHoverString(stringText,boxWidth,boxHeight,boxColor,textColor)
//func scr_DrawHoverString(stringText,xOffset,yOffset)
// @arg stringText    
// @arg xOffset   

stringText = argument[0];
boxWidth = argument[1];
boxHeight = argument[2];
boxColor = argument[3];
textColor = argument[4];
draw_rectangle_colour(x,y-200,x + boxWidth,y + boxHeight,boxColor,boxColor,boxColor,boxColor,0)
draw_set_font(ft_phone_date_and_time);
draw_set_color(textColor)
draw_text_ext(x,y-200,string(stringText),30,boxWidth);
