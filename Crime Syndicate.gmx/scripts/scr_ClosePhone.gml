///Closes the phone

//Checks instances before destroying them

if instance_exists(obj_phone)
{
    with obj_phone
    {
        instance_destroy();
        scr_log_message(scr_DebugDate() + "DESTROY: obj_phone");
    }
}

if instance_exists(obj_syndicate_checker)
{
    with obj_syndicate_checker
    {
        instance_destroy();
        scr_log_message(scr_DebugDate() + "DESTROY: obj_syndicate_checker");
    }

}

if instance_exists(obj_map_checker_prologue)
{

    with obj_map_checker_prologue
    {  
        instance_destroy();
        scr_log_message(scr_DebugDate() + "DESTROY: obj_map_checker_prologue");
    }   
}

if instance_exists(obj_mobile_hitmen_jobs_trigger)
{
    with obj_mobile_hitmen_jobs_trigger
    {
        instance_destroy();
        scr_log_message(scr_DebugDate() + "DESTROY: obj_mobile_hitmen_jobs_trigger");
    }
}

if instance_exists(obj_real_estate_phone_trigger)
{
    with obj_real_estate_phone_trigger
    {
        instance_destroy();
        scr_log_message(scr_DebugDate() + "DESTROY: obj_real_estate_phone_trigger");
    }
}

if instance_exists(obj_mobile_blackmarket_hub_trigger)
{
    with obj_mobile_blackmarket_hub_trigger
    {
        instance_destroy();
        scr_log_message(scr_DebugDate() + "DESTROY: obj_mobile_blackmarket_hub_trigger");
    }
}

if instance_exists(obj_phone_close_trigger)
{
    with obj_phone_close_trigger
    {
        instance_destroy();
        scr_log_message(scr_DebugDate() + "DESTROY: obj_phone_close_trigger");
    }
}
