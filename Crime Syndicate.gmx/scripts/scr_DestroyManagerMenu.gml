///manager menu cleanup script
if instance_exists(obj_black_market_trips_finalise_manager_menu_create_loot_button)
{
    instance_destroy(obj_black_market_trips_finalise_manager_menu_create_loot_button,true);
}

if instance_exists(obj_black_market_trips_finalise_manager_menu)
{
    instance_destroy(obj_black_market_trips_finalise_manager_menu,true);
}

if instance_exists(objLootTableJobsMaterialsBlueprints)
{
    instance_destroy(objLootTableJobsMaterialsBlueprints,true);
}

if !instance_exists(obj_trip_upgrades_button_trigger)
{
    instance_create(60,424,obj_trip_upgrades_button_trigger);
}

if !instance_exists(obj_black_market_trips_agents_button_trigger)
{
    instance_create(60,507,obj_black_market_trips_agents_button_trigger);
}

instance_create(x,y,obj_black_market_trips_select_dest_gui);

scr_log_message(scr_DebugDate() + "DESTROY: Manager Menu");
show_debug_message("DESTROY: Manager Menu");

