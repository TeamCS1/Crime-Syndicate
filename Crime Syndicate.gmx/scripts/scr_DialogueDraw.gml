dialogueY = argument[0];    //int
dialogueText = argument[1]; //string

draw_sprite(spr_dialogue_box, 0, 10, dialogueY)
draw_sprite(spr_avatar, 0, 20, dialogueY + 10)
draw_set_valign(fa_top);
draw_set_font(ft_dialogue);
draw_set_color(c_white)
draw_text_ext(100,dialogueY + 5,string(dialogueText),25,500);
