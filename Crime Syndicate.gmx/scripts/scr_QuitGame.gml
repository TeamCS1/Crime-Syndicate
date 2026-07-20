if show_question("Are you sure you wish to quit to Main Menu? All un-saved progress will be lost!")
{
    //Destroys all persistent instances
    if instance_exists(obj_global)
    {
        with obj_global
        {
            instance_destroy();
        }
    }

    if instance_exists(obj_STATUS_BARS_HUD)
    {
        with obj_STATUS_BARS_HUD
        {
            instance_destroy();
        }
    }

    if instance_exists(obj_options_menu_trigger_gameplay)
    {
        with obj_options_menu_trigger_gameplay
        {
            instance_destroy();
        }
    }

    if instance_exists(obj_properties_income_generator)
    {
        with obj_properties_income_generator
        {
            instance_destroy();
        }
    }

    if instance_exists(obj_upgradeStatsMenu_Trigger)
    {
        with obj_upgradeStatsMenu_Trigger
        {
            instance_destroy();
        }
    }

    scr_ClosePhone();

    room_goto(rm_main_menu);
}

else
{
    
}
