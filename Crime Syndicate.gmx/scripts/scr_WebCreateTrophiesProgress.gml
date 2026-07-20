if !instance_exists(obj_webCreateTrophiesProgress)
{
    instance_create(window_get_width() / 2, window_get_height() / 2, obj_webCreateTrophiesProgress)
}

room_goto(rm_trophies); 
