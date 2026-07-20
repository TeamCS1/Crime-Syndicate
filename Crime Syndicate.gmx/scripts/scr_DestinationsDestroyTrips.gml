if instance_exists(obj_black_market_select_destination_back)
{
    with obj_black_market_select_destination_back
    {
        instance_destroy();
    }
}

if instance_exists(obj_black_market_trips_select_dest_gui)
{
    with obj_black_market_trips_select_dest_gui
    {
        instance_destroy();
    }
}

if instance_exists(obj_trips_view_cities)
{
    with obj_trips_view_cities
    {
        instance_destroy();
    }
}

if instance_exists(obj_trips_view_resource)
{
    with obj_trips_view_resource
    {
        instance_destroy();
    }
}
