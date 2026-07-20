///Opens the phone
    if !instance_exists(obj_phone)
    {
        instance_create(x,y,obj_phone);    
        scr_log_message(scr_DebugDate() + "CREATE: obj_phone");
    }
    
    if !instance_exists(obj_syndicate_checker)
    {
        instance_create(1551,556,obj_syndicate_checker);    
        scr_log_message(scr_DebugDate() + "CREATE: obj_syndicate_checker");
    }
    
    if !instance_exists(obj_map_checker_prologue)   
    {
        instance_create(1550,484,obj_map_checker_prologue);
        scr_log_message(scr_DebugDate() + "CREATE: obj_map_checker_prologue");
    }
    
    if !instance_exists(obj_mobile_hitmen_jobs_trigger)
    {
        instance_create(1551,685,obj_mobile_hitmen_jobs_trigger);   
        scr_log_message(scr_DebugDate() + "CREATE: obj_mobile_hitmen_jobs_trigger");
    }
    
    if !instance_exists(obj_real_estate_phone_trigger)
    {
        instance_create(1551,622,obj_real_estate_phone_trigger);  
        scr_log_message(scr_DebugDate() + "CREATE: obj_real_estate_phone_trigger");
    }
    
    if !instance_exists(obj_mobile_blackmarket_hub_trigger)
    {
        instance_create(x,y,obj_mobile_blackmarket_hub_trigger);  
        scr_log_message(scr_DebugDate() + "CREATE: obj_mobile_blackmarket_hub_trigger");
    }
    
    if !instance_exists(obj_phone_close_trigger)
    {
        instance_create(x,y,obj_phone_close_trigger);   
        scr_log_message(scr_DebugDate() + "CREATE: obj_phone_close_trigger");
    }    
