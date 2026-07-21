//This section destroys all aspects of the upgrade GUI.
if instance_exists(obj_upgradeStatsMenuGUI)
{
    with obj_upgradeStatsMenuGUI
    {
        instance_destroy();
        scr_log_message("DESTROY: obj_upgradeStatsMenuGUI");
        show_debug_message("DESTROY: obj_upgradeStatsMenuGUI");
    }
}

if instance_exists(obj_close_function)
{
    with obj_close_function
    {
        instance_destroy();
        scr_log_message("DESTROY: obj_close_function");
        show_debug_message("DESTROY: obj_close_function");
    }
}

if instance_exists(obj_close_function_x)
{
    with obj_close_function_x
    {
        instance_destroy();
        scr_log_message("DESTROY: obj_close_function_x");
        show_debug_message("DESTROY: obj_close_function_x");
    }
}

if instance_exists(obj_health_button)
{
    with obj_health_button
    {
        instance_destroy();
        scr_log_message("DESTROY: obj_health_button");
        show_debug_message("DESTROY: obj_health_button");
    }
}

if instance_exists(obj_health_regen_button)
{
    with obj_health_regen_button
    {
        instance_destroy();
        scr_log_message("DESTROY: obj_health_regen_button");
        show_debug_message("DESTROY: obj_health_regen_button");
    }
}

if instance_exists(obj_stamina_button)
{
    with obj_stamina_button
    {
        instance_destroy();
        scr_log_message("DESTROY: obj_stamina_button");
        show_debug_message("DESTROY: obj_stamina_button");
    }
}

if instance_exists(obj_stamina_regen_button)
{
    with obj_stamina_regen_button
    {
        instance_destroy();
        scr_log_message("DESTROY: obj_stamina_regen_button");
        show_debug_message("DESTROY: obj_stamina_regen_button");
    }
}

if instance_exists(obj_attack_damage_button)
{
    with obj_attack_damage_button
    {
        instance_destroy();
        scr_log_message("DESTROY: obj_attack_damage_button");
        show_debug_message("DESTROY: obj_attack_damage_button");
    }
}

if instance_exists(obj_defence_protection_button)
{
    with obj_defence_protection_button
    {
        instance_destroy();
        scr_log_message("DESTROY: obj_defence_protection_button");
        show_debug_message("DESTROY: obj_defence_protection_button");
    }
}

//This section re-shows the job screen UI.
with obj_TEXTURE_NEW_YORK_PAGE1_2
{
    image_alpha = 1
    show_debug_message("obj_TEXTURE_NEW_YORK_PAGE1 alpha set to 255.")
}

with obj_TEXTURE_CHICAGO_PAGE1_2
{
    image_alpha = 1
    show_debug_message("obj_TEXTURE_CHICAGO_PAGE1 alpha set to 255.")
}

with obj_TEXTURE_LONDON_PAGE1_2
{
    image_alpha = 1
    show_debug_message("obj_TEXTURE_LONDON_PAGE1_2 alpha set to 255.")
}

with obj_TEXTURE_LAS_VEGAS_PAGE1_2
{
    image_alpha = 1
    show_debug_message("obj_TEXTURE_LAS_VEGAS_PAGE1_2 alpha set to 255.")
}

//This section checks what GUI is showing and creates the mousewheel for that city.
if room == rm_prologue_world_map //is new york
{
    instance_create(x, y, obj_worldMapNewYorkControl)
    show_debug_message("Tabeer's Console: obj_worldMapNewYorkControl created.")
}

else if room == rm_world_map_chicago //is new york
{
    instance_create(x, y, obj_worldMapChicagoControl)
    show_debug_message("Tabeer's Console: obj_worldMapChicagoControl created.")
}

else if room == rm_world_map_london //is London
{
    instance_create(x, y, obj_worldMapLondonControl)
    show_debug_message("Tabeer's Console: obj_worldMapLondonControl created.")
}

else if room == rm_world_map_las_vegas //is Las Vegas
{
    instance_create(x, y, obj_worldMapLasVegasControl)
    show_debug_message("Tabeer's Console: obj_worldMapLasVegasControl created.")
}

//New York
if instance_exists(obj_JobListButtons1NewYork)
{
    with obj_JobListButtons1NewYork
    {
        x += 1000
    }

    with obj_JobListButtons2NewYork
    {
        x += 1000
    }


    with obj_city_bosses_button_new_york
    {
        x += 1000
    }
}

//Chicago
if instance_exists(obj_JobListButtons1Chicago)
{
    with obj_JobListButtons1Chicago
    {
        x += 1000
    }

    with obj_JobListButtons2Chicago
    {
        x += 1000
    }


    with obj_city_bosses_button_CHICAGO
    {
        x += 1000
    }
}

//London
if instance_exists(obj_JobListButtons1London)
{
    with obj_JobListButtons1London
    {
        x += 1000
    }

    with obj_JobListButtons2London
    {
        x += 1000
    }


    with obj_city_bosses_button_LONDON
    {
        x += 1000
    }
}

//Las Vegas
if instance_exists(obj_JobListButtons1LasVegas)
{
    with obj_JobListButtons1LasVegas
    {
        x += 1000
    }

    with obj_JobListButtons2LasVegas
    {
        x += 1000
    }


    with obj_city_bosses_button_LAS_VEGAS
    {
        x += 1000
    }
}
