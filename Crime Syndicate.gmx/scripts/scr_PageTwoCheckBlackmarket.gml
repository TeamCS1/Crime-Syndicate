//check against page 2
if obj_black_market_trips_agents_panel_gui.mouseEnterCurrentPage == 2
{
    if global.slot10Status == "EQUIPPED"
    {
        obj_black_market_trips_agents_slot1.image_index = 1;
    }
    
    else if global.slot10Status == "EMPTY" || global.slot10Status == "RECRUITED" 
    {
        obj_black_market_trips_agents_slot1.image_index = 0;
    }
    
    if global.slot11Status == "EQUIPPED"
    {
        obj_black_market_trips_agents_slot2.image_index = 1;
    }
    
    else if global.slot11Status == "EMPTY" || global.slot11Status == "RECRUITED"
    {
        obj_black_market_trips_agents_slot2.image_index = 0;
    }
    
    if global.slot12Status == "EQUIPPED"
    {
        obj_black_market_trips_agents_slot3.image_index = 1;
    }
    
    else if global.slot12Status == "EMPTY" || global.slot12Status == "RECRUITED"
    {
        obj_black_market_trips_agents_slot3.image_index = 0;
    }
    
    if global.slot13Status == "EQUIPPED"
    {
        obj_black_market_trips_agents_slot4.image_index = 1;
    }
    
    else if global.slot13Status == "EMPTY" || global.slot13Status == "RECRUITED"
    {
        obj_black_market_trips_agents_slot4.image_index = 0;
    }
    
    if global.slot14Status == "EQUIPPED"
    {
        obj_black_market_trips_agents_slot5.image_index = 1;
    }
    
    else if global.slot14Status == "EMPTY" || global.slot14Status == "RECRUITED"
    {
        obj_black_market_trips_agents_slot5.image_index = 0;
    }
    
    if global.slot15Status == "EQUIPPED"
    {
        obj_black_market_trips_agents_slot6.image_index = 1;
    }
    
    else if global.slot15Status == "EMPTY" || global.slot15Status == "RECRUITED"
    {
        obj_black_market_trips_agents_slot6.image_index = 0;
    }
    
    if global.slot16Status == "EQUIPPED"
    {
        obj_black_market_trips_agents_slot7.image_index = 1;
    }
    
    else if global.slot16Status == "EMPTY" || global.slot16Status == "RECRUITED"
    {
        obj_black_market_trips_agents_slot7.image_index = 0;
    }
    
    if global.slot17Status == "EQUIPPED"
    {
        obj_black_market_trips_agents_slot8.image_index = 1;
    }
    
    else if global.slot17Status == "EMPTY" || global.slot17Status == "RECRUITED"
    {
        obj_black_market_trips_agents_slot8.image_index = 0;
    }
    
    if global.slot18Status == "EQUIPPED"
    {
        obj_black_market_trips_agents_slot9.image_index = 1;
    }
    
    else if global.slot18Status == "EMPTY" || global.slot18Status == "RECRUITED"
    {
        obj_black_market_trips_agents_slot9.image_index = 0;
    } 
}
