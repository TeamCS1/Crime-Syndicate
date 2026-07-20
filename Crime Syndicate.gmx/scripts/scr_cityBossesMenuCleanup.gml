//Garbage Collection
if instance_exists(obj_city_bosses_weak_attack_button_filter)
{
    with obj_city_bosses_weak_attack_button_filter
    {
        instance_destroy();
    }
}

if instance_exists(obj_city_bosses_power_attack_button_filter)
{
    with obj_city_bosses_power_attack_button_filter
    {
        instance_destroy();
    }
}

if instance_exists(obj_city_bosses_special_moves_signature_move_filter)
{
    with obj_city_bosses_special_moves_signature_move_filter
    {
        instance_destroy();
    }
}

if instance_exists(obj_city_bosses_special_moves_final_blow_filter)
{
    with obj_city_bosses_special_moves_final_blow_filter
    {
        instance_destroy();
    }
}

if instance_exists(obj_city_bosses_special_moves_signature_move_ButtonHandler)
{
    with obj_city_bosses_special_moves_signature_move_ButtonHandler
    {
        instance_destroy();
    }
}

if instance_exists(obj_city_bosses_special_moves_final_blow_ButtonHandler)
{
    with obj_city_bosses_special_moves_final_blow_ButtonHandler
    {
        instance_destroy();
    }
}

if instance_exists(obj_city_bosses_flee_ButtonHandler)
{
    with obj_city_bosses_flee_ButtonHandler
    {
        instance_destroy();
    }
}

if instance_exists(obj_city_bosses_weak_attack_button)
{
    with obj_city_bosses_weak_attack_button
    {
        instance_destroy();
    }
}

if instance_exists(obj_city_bosses_power_attack_button)
{
    with obj_city_bosses_power_attack_button
    {
        instance_destroy();
    }
}

if instance_exists(obj_city_bosses_battle_screen)
{
    with obj_city_bosses_battle_screen
    {
        instance_destroy();
    }
}

if instance_exists(obj_city_bosses_pop_up_box)
{
    with obj_city_bosses_pop_up_box
    {
        instance_destroy();
    }
}

if instance_exists(obj_explanationOfCityBossesBattleSystem)
{
    with obj_explanationOfCityBossesBattleSystem
    {
        instance_destroy();
    }
}


//Create the City Bosses Menu

if !instance_exists(obj_city_bosses_menu)
{
    instance_create(17,22,obj_city_bosses_menu)
}

//Create the NY Control, to allow switching to other Cities again
if global.currentCity == "NEW_YORK"
{
    if !instance_exists(obj_worldMapNewYorkControl)
    {
        instance_create(x,y,obj_worldMapNewYorkControl)
    }
    
    if !instance_exists(obj_JobListButtons1NewYork)
    {
        instance_create(692,23,obj_JobListButtons1NewYork)
    }
    
    if !instance_exists(obj_JobListButtons2NewYork)
    {
        instance_create(791,23,obj_JobListButtons2NewYork)
    }
    
    if !instance_exists(obj_city_bosses_tier_one_button)
    {
        instance_create(791,23,obj_city_bosses_tier_one_button)
    }
    
    if !instance_exists(obj_city_bosses_tier_two_button)
    {
        instance_create(791,23,obj_city_bosses_tier_two_button)
    }
    
    if !instance_exists(obj_city_bosses_tier_three_button)
    {
        instance_create(791,23,obj_city_bosses_tier_three_button)
    }
}

//Create the Chicago Control, to allow switching to other Cities again
else if global.currentCity == "CHICAGO"
{
    if !instance_exists(obj_worldMapChicagoControl)
    {
        instance_create(x,y,obj_worldMapChicagoControl)
    }
    
    if !instance_exists(obj_JobListButtons1Chicago)
    {
        instance_create(692,23,obj_JobListButtons1Chicago)
    }
    
    if !instance_exists(obj_JobListButtons2Chicago)
    {
        instance_create(791,23,obj_JobListButtons2Chicago)
    }
    
    if !instance_exists(obj_city_bosses_tier_one_button)
    {
        instance_create(791,23,obj_city_bosses_tier_one_button)
    }
    
    if !instance_exists(obj_city_bosses_tier_two_button)
    {
        instance_create(791,23,obj_city_bosses_tier_two_button)
    }
    
    if !instance_exists(obj_city_bosses_tier_three_button)
    {
        instance_create(791,23,obj_city_bosses_tier_three_button)
    }
}

//Create the London Control, to allow switching to other Cities again
else if global.currentCity == "LONDON"
{
    if !instance_exists(obj_worldMapLondonControl)
    {
        instance_create(x,y,obj_worldMapLondonControl)
    }
    
    if !instance_exists(obj_JobListButtons1London)
    {
        instance_create(692,23,obj_JobListButtons1London)
    }
    
    if !instance_exists(obj_JobListButtons2London)
    {
        instance_create(791,23,obj_JobListButtons2London)
    }
    
    if !instance_exists(obj_city_bosses_tier_one_button)
    {
        instance_create(791,23,obj_city_bosses_tier_one_button)
    }
    
    if !instance_exists(obj_city_bosses_tier_two_button)
    {
        instance_create(791,23,obj_city_bosses_tier_two_button)
    }
    
    if !instance_exists(obj_city_bosses_tier_three_button)
    {
        instance_create(791,23,obj_city_bosses_tier_three_button)
    }
}

//Create the Las Vegas Control, to allow switching to other Cities again
else if global.currentCity == "LAS_VEGAS"
{
    if !instance_exists(obj_worldMapLasVegasControl)
    {
        instance_create(x,y,obj_worldMapLasVegasControl)
    }
    
    if !instance_exists(obj_JobListButtons1LasVegas)
    {
        instance_create(692,23,obj_JobListButtons1LasVegas)
    }
    
    if !instance_exists(obj_JobListButtons2LasVegas)
    {
        instance_create(791,23,obj_JobListButtons2LasVegas)
    }
    
    if !instance_exists(obj_city_bosses_tier_one_button)
    {
        instance_create(791,23,obj_city_bosses_tier_one_button)
    }
    
    if !instance_exists(obj_city_bosses_tier_two_button)
    {
        instance_create(791,23,obj_city_bosses_tier_two_button)
    }
    
    if !instance_exists(obj_city_bosses_tier_three_button)
    {
        instance_create(791,23,obj_city_bosses_tier_three_button)
    }
}
