if instance_exists(obj_property_management_slots)
{
    with obj_property_management_slots   
    { 
        instance_destroy();
        scr_log_message(scr_DebugDate() + "DESTROY: obj_property_management_slots");
        show_debug_message("DESTROY: obj_property_management_slots");
    }       
}
    
if instance_exists(obj_property_management_make_inventory)
{
    with obj_property_management_make_inventory  
    { 
        instance_destroy();
        scr_log_message(scr_DebugDate() + "DESTROY: obj_property_management_make_inventory");
        show_debug_message("DESTROY: obj_property_management_make_inventory");
    }
}

if instance_exists(obj_scrollbar_black_market)
{
    with obj_scrollbar_black_market  
    { 
        instance_destroy();
        scr_log_message(scr_DebugDate() + "DESTROY: obj_scrollbar_black_market");
        show_debug_message("DESTROY: obj_scrollbar_black_market");
    }
}
    
if room == rm_property_listings
{
    if !instance_exists(obj_property_management_make_inventory)
    {    
        instance_create(x,y,obj_property_management_make_inventory);
        scr_log_message(scr_DebugDate() + "CREATE: obj_property_management_make_inventory");
        show_debug_message("CREATE: obj_property_management_make_inventory");
    }
}

