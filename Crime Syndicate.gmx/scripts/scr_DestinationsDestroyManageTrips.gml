if instance_exists(obj_black_market_trips_finalise_manager_menu)
{
    with obj_black_market_trips_finalise_manager_menu
    {
        //hide it off screen
        x = 20000;
        y = 20000;
    }
}

if instance_exists(obj_black_market_trips_finalise_start_button)
{
    with obj_black_market_trips_finalise_start_button
    {
        instance_destroy();
    }
}

if instance_exists(obj_black_market_trips_finalise_cancel_button)
{
    with obj_black_market_trips_finalise_cancel_button
    {
        instance_destroy();
    }
}

if instance_exists(obj_black_market_trips_finalise_manager_menu_create_loot_button)
{
    with obj_black_market_trips_finalise_manager_menu_create_loot_button
    {
        instance_destroy();
    }
}




