global.showStatusBar = true;

if !instance_exists(obj_global)
{
    instance_create(x,y,obj_global)
    scr_log_message(scr_DebugDate() + "CREATE: obj_global");
}

if !instance_exists(obj_properties_income_generator)
{
    instance_create(x,y,obj_properties_income_generator);
    scr_log_message(scr_DebugDate() + "CREATE: obj_properties_income_generator");
}

if !instance_exists(obj_options_menu_trigger_gameplay)
{
    instance_create(x,y,obj_options_menu_trigger_gameplay);
    scr_log_message(scr_DebugDate() + "CREATE: obj_options_menu_trigger_gameplay");
}

if !instance_exists(obj_upgradeStatsMenu_Trigger)
{
    instance_create(x,y,obj_upgradeStatsMenu_Trigger);
    scr_log_message(scr_DebugDate() + "CREATE: obj_upgradeStatsMenu_Trigger");
}

if !instance_exists(obj_STATUS_BARS_HUD)
{
    instance_create(1493,7,obj_STATUS_BARS_HUD);
    scr_log_message(scr_DebugDate() + "CREATE: obj_STATUS_BARS_HUD");
}

if instance_exists(obj_webCreateTrophiesProgress)
{
    instance_destroy(obj_webCreateTrophiesProgress,true);
    scr_log_message(scr_DebugDate() + "DESTROY: obj_webCreateTrophiesProgress");
}
