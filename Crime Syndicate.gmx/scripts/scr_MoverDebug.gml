if keyboard_check(vk_left)
{
    x -= 1;
}

if keyboard_check(vk_right)
{
    x += 1;
}

if keyboard_check(vk_up)
{
    y -= 1;
}

if keyboard_check(vk_down)
{
    y += 1;
}

draw_set_color(c_teal)
draw_text(x,y,string(x))
draw_text(x,y+30,string(y))
