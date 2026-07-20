//Reset equipped trips total before calculation
global.rentCostSlotsTotals = 0;

if global.tripsSlot1 == "Equipped"
{
    global.rentCostSlotsTotals += global.rentCostSlot1;
}

if global.tripsSlot2 == "Equipped"
{
    global.rentCostSlotsTotals += global.rentCostSlot2;
}

if global.tripsSlot3 == "Equipped"
{
    global.rentCostSlotsTotals += global.rentCostSlot3;
}

if global.tripsSlot4 == "Equipped"
{
    global.rentCostSlotsTotals += global.rentCostSlot4;
}

if global.tripsSlot5 == "Equipped"
{
    global.rentCostSlotsTotals += global.rentCostSlot5;
}

if global.tripsSlot6 == "Equipped"
{
    global.rentCostSlotsTotals += global.rentCostSlot6;
}

if global.tripsSlot7 == "Equipped"
{
    global.rentCostSlotsTotals += global.rentCostSlot7;
}
 
//Apply the calculation, save the setup and destroy the menu.
scr_SaveTripsLoadoutState();
scr_DestroyTripsLoadoutGUI();

if instance_exists(obj_black_market_trips_finalise) //if the finalise menu was open before, move it to front.
{
    with obj_black_market_trips_finalise
    {
        //Sets window location
        x = 832;
        y = 160;
        
        obj_black_market_trips_finalise.loadoutIsTicked = true;
    } 
}

if instance_exists(obj_black_market_trips_finalise_start_button) //if the finalise menu was open before, move it to front.
{
    with obj_black_market_trips_finalise_start_button
    {
        //Sets window location
        x = 1523;
        y = 906;  
    } 
}

if instance_exists(obj_black_market_trips_finalise_cancel_button) //if the finalise menu was open before, move it to front.
{
    with obj_black_market_trips_finalise_cancel_button
    {
        //Sets window location
        x = 1148;
        y = 906;
    } 
}
