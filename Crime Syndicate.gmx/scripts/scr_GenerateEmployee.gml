//script vars
slotPriceMult = 1.15

//randomise gen seed
randomize();

//if the slot is 1 then
if obj_black_market_trips_agents_panel_gui.mouseEnterCurrentSlot == 1 
&& obj_black_market_trips_agents_panel_gui.mouseEnterCurrentPage == 1
&& global.slot1Status != "RECRUITED"
{
    global.slot1Status = "RECRUITED";
    global.slotPrice *= slotPriceMult
    global.slot1AgentHappy = irandom_range(80,100); 
    global.slot1AgentEff = irandom_range(global.slot1AgentHappy - 40,global.slot1AgentHappy - 20); 
    
    global.slot1AgentLootOdds =
    (global.slot1AgentEff * global.slot1AgentHappy / 100) * 1.05 //adds 5% because bronze 
} 

//if the slot is 2 then
else if obj_black_market_trips_agents_panel_gui.mouseEnterCurrentSlot == 2 
&& obj_black_market_trips_agents_panel_gui.mouseEnterCurrentPage == 1
&& global.slot2Status != "RECRUITED"
{
    global.slot2Status = "RECRUITED";
    global.slotPrice *= slotPriceMult
    global.slot2AgentHappy = irandom_range(80,100); 
    global.slot2AgentEff = irandom_range(global.slot2AgentHappy - 40,global.slot2AgentHappy - 20); 
    
    global.slot2AgentLootOdds =
    (global.slot2AgentEff * global.slot2AgentHappy / 100) * 1.05 //adds 5% because bronze 
}

//if the slot is 3 then
else if obj_black_market_trips_agents_panel_gui.mouseEnterCurrentSlot == 3 
&& obj_black_market_trips_agents_panel_gui.mouseEnterCurrentPage == 1
&& global.slot3Status != "RECRUITED"
{
    global.slot3Status = "RECRUITED";
    global.slotPrice *= slotPriceMult
    global.slot3AgentHappy = irandom_range(80,100); 
    global.slot3AgentEff = irandom_range(global.slot3AgentHappy - 40,global.slot3AgentHappy - 20); 
    
    global.slot3AgentLootOdds =
    (global.slot3AgentEff * global.slot3AgentHappy / 100) * 1.05 //adds 5% because bronze 
}

//if the slot is 4 then
else if obj_black_market_trips_agents_panel_gui.mouseEnterCurrentSlot == 4 
&& obj_black_market_trips_agents_panel_gui.mouseEnterCurrentPage == 1
&& global.slot4Status != "RECRUITED"
{
    global.slot4Status = "RECRUITED";
    global.slotPrice *= slotPriceMult
    global.slot4AgentHappy = irandom_range(80,100); 
    global.slot4AgentEff = irandom_range(global.slot4AgentHappy - 40,global.slot4AgentHappy - 20); 
    
    global.slot4AgentLootOdds =
    (global.slot4AgentEff * global.slot4AgentHappy / 100) * 1.10 //adds 10% because silver 
}

//if the slot is 5 then
else if obj_black_market_trips_agents_panel_gui.mouseEnterCurrentSlot == 5 
&& obj_black_market_trips_agents_panel_gui.mouseEnterCurrentPage == 1
&& global.slot5Status != "RECRUITED"
{
    global.slot5Status = "RECRUITED";
    global.slotPrice *= slotPriceMult
    global.slot5AgentHappy = irandom_range(80,100); 
    global.slot5AgentEff = irandom_range(global.slot5AgentHappy - 40,global.slot5AgentHappy - 20); 
    
    global.slot5AgentLootOdds =
    (global.slot5AgentEff * global.slot5AgentHappy / 100) * 1.10 //adds 10% because silver 
}

//if the slot is 6 then
else if obj_black_market_trips_agents_panel_gui.mouseEnterCurrentSlot == 6 
&& obj_black_market_trips_agents_panel_gui.mouseEnterCurrentPage == 1
&& global.slot6Status != "RECRUITED"
{
    global.slot6Status = "RECRUITED";
    global.slotPrice *= slotPriceMult
    global.slot6AgentHappy = irandom_range(80,100); 
    global.slot6AgentEff = irandom_range(global.slot6AgentHappy - 40,global.slot6AgentHappy - 20); 
    
    global.slot6AgentLootOdds =
    (global.slot6AgentEff * global.slot6AgentHappy / 100) * 1.10 //adds 10% because silver 
}

//if the slot is 7 then
else if obj_black_market_trips_agents_panel_gui.mouseEnterCurrentSlot == 7 
&& obj_black_market_trips_agents_panel_gui.mouseEnterCurrentPage == 1
&& global.slot7Status != "RECRUITED"
{
    global.slot7Status = "RECRUITED";
    global.slotPrice *= slotPriceMult
    global.slot7AgentHappy = irandom_range(80,100); 
    global.slot7AgentEff = irandom_range(global.slot7AgentHappy - 40,global.slot7AgentHappy - 20); 
    
    global.slot7AgentLootOdds =
    (global.slot7AgentEff * global.slot7AgentHappy / 100) * 1.15 //adds 15% because gold
}

//if the slot is 8 then
else if obj_black_market_trips_agents_panel_gui.mouseEnterCurrentSlot == 8 
&& obj_black_market_trips_agents_panel_gui.mouseEnterCurrentPage == 1
&& global.slot8Status != "RECRUITED"
{
    global.slot8Status = "RECRUITED";
    global.slotPrice *= slotPriceMult
    global.slot8AgentHappy = irandom_range(80,100); 
    global.slot8AgentEff = irandom_range(global.slot8AgentHappy - 40,global.slot8AgentHappy - 20); 
    
    global.slot8AgentLootOdds =
    (global.slot8AgentEff * global.slot8AgentHappy / 100) * 1.15 //adds 15% because gold
}

//if the slot is 9 then
else if obj_black_market_trips_agents_panel_gui.mouseEnterCurrentSlot == 9 
&& obj_black_market_trips_agents_panel_gui.mouseEnterCurrentPage == 1
&& global.slot9Status != "RECRUITED"
{
    global.slot9Status = "RECRUITED";
    global.slotPrice *= slotPriceMult
    global.slot9AgentHappy = irandom_range(80,100); 
    global.slot9AgentEff = irandom_range(global.slot9AgentHappy - 40,global.slot9AgentHappy - 20); 
    
    global.slot9AgentLootOdds =
    (global.slot9AgentEff * global.slot9AgentHappy / 100) * 1.15 //adds 15% because gold
}

//if the slot is 10 then
else if obj_black_market_trips_agents_panel_gui.mouseEnterCurrentSlot == 1 
&& obj_black_market_trips_agents_panel_gui.mouseEnterCurrentPage == 2
&& global.slot10Status != "RECRUITED"
{
    global.slot10Status = "RECRUITED";
    global.slotPrice *= slotPriceMult
    global.slot10AgentHappy = irandom_range(80,100); 
    global.slot10AgentEff = irandom_range(global.slot10AgentHappy - 40,global.slot10AgentHappy - 20); 
    
    global.slot10AgentLootOdds =
    (global.slot10AgentEff * global.slot10AgentHappy / 100) * 1.05 //adds 5% because bronze
}

//if the slot is 11 then
else if obj_black_market_trips_agents_panel_gui.mouseEnterCurrentSlot == 2 
&& obj_black_market_trips_agents_panel_gui.mouseEnterCurrentPage == 2
&& global.slot11Status != "RECRUITED"
{
    global.slot11Status = "RECRUITED";
    global.slotPrice *= slotPriceMult
    global.slot11AgentHappy = irandom_range(80,100); 
    global.slot11AgentEff = irandom_range(global.slot11AgentHappy - 40,global.slot11AgentHappy - 20); 
    
    global.slot11AgentLootOdds =
    (global.slot11AgentEff * global.slot11AgentHappy / 100) * 1.05 //adds 5% because bronze
}

//if the slot is 12 then
else if obj_black_market_trips_agents_panel_gui.mouseEnterCurrentSlot == 3 
&& obj_black_market_trips_agents_panel_gui.mouseEnterCurrentPage == 2
&& global.slot12Status != "RECRUITED"
{
    global.slot12Status = "RECRUITED";
    global.slotPrice *= slotPriceMult
    global.slot12AgentHappy = irandom_range(80,100); 
    global.slot12AgentEff = irandom_range(global.slot12AgentHappy - 40,global.slot12AgentHappy - 20); 
    
    global.slot12AgentLootOdds =
    (global.slot12AgentEff * global.slot12AgentHappy / 100) * 1.05 //adds 5% because bronze
}

//if the slot is 13 then
else if obj_black_market_trips_agents_panel_gui.mouseEnterCurrentSlot == 4 
&& obj_black_market_trips_agents_panel_gui.mouseEnterCurrentPage == 2
&& global.slot13Status != "RECRUITED"
{
    global.slot13Status = "RECRUITED";
    global.slotPrice *= slotPriceMult
    global.slot13AgentHappy = irandom_range(80,100); 
    global.slot13AgentEff = irandom_range(global.slot13AgentHappy - 40,global.slot13AgentHappy - 20); 
    
    global.slot13AgentLootOdds =
    (global.slot13AgentEff * global.slot13AgentHappy / 100) * 1.10 //adds 10% because silver
}

//if the slot is 14 then
else if obj_black_market_trips_agents_panel_gui.mouseEnterCurrentSlot == 5 
&& obj_black_market_trips_agents_panel_gui.mouseEnterCurrentPage == 2
&& global.slot14Status != "RECRUITED"
{
    global.slot14Status = "RECRUITED";
    global.slotPrice *= slotPriceMult
    global.slot14AgentHappy = irandom_range(80,100); 
    global.slot14AgentEff = irandom_range(global.slot14AgentHappy - 40,global.slot14AgentHappy - 20); 
    
    global.slot14AgentLootOdds =
    (global.slot14AgentEff * global.slot14AgentHappy / 100) * 1.10 //adds 10% because silver
}

//if the slot is 15 then
else if obj_black_market_trips_agents_panel_gui.mouseEnterCurrentSlot == 6 
&& obj_black_market_trips_agents_panel_gui.mouseEnterCurrentPage == 2
&& global.slot15Status != "RECRUITED"
{
    global.slot15Status = "RECRUITED";
    global.slotPrice *= slotPriceMult
    global.slot15AgentHappy = irandom_range(80,100); 
    global.slot15AgentEff = irandom_range(global.slot15AgentHappy - 40,global.slot15AgentHappy - 20); 
    
    global.slot15AgentLootOdds =
    (global.slot15AgentEff * global.slot15AgentHappy / 100) * 1.10 //adds 10% because silver
}

//if the slot is 16 then
else if obj_black_market_trips_agents_panel_gui.mouseEnterCurrentSlot == 7
&& obj_black_market_trips_agents_panel_gui.mouseEnterCurrentPage == 2
&& global.slot16Status != "RECRUITED"
{
    global.slot16Status = "RECRUITED";
    global.slotPrice *= slotPriceMult
    global.slot16AgentHappy = irandom_range(80,100); 
    global.slot16AgentEff = irandom_range(global.slot16AgentHappy - 40,global.slot16AgentHappy - 20); 
    
    global.slot16AgentLootOdds =
    (global.slot16AgentEff * global.slot16AgentHappy / 100) * 1.15 //adds 15% because gold
}

//if the slot is 17 then
else if obj_black_market_trips_agents_panel_gui.mouseEnterCurrentSlot == 8
&& obj_black_market_trips_agents_panel_gui.mouseEnterCurrentPage == 2
&& global.slot17Status != "RECRUITED"
{
    global.slot17Status = "RECRUITED";
    global.slotPrice *= slotPriceMult
    global.slot17AgentHappy = irandom_range(80,100); 
    global.slot17AgentEff = irandom_range(global.slot17AgentHappy - 40,global.slot17AgentHappy - 20); 
    
    global.slot17AgentLootOdds =
    (global.slot17AgentEff * global.slot17AgentHappy / 100) * 1.15 //adds 15% because gold
}

//if the slot is 18 then
else if obj_black_market_trips_agents_panel_gui.mouseEnterCurrentSlot == 9
&& obj_black_market_trips_agents_panel_gui.mouseEnterCurrentPage == 2
&& global.slot18Status != "RECRUITED"
{
    global.slot18Status = "RECRUITED";
    global.slotPrice *= slotPriceMult
    global.slot18AgentHappy = irandom_range(80,100); 
    global.slot18AgentEff = irandom_range(global.slot18AgentHappy - 40,global.slot18AgentHappy - 20); 
    
    global.slot18AgentLootOdds =
    (global.slot18AgentEff * global.slot18AgentHappy / 100) * 1.15 //adds 15% because gold
}
