if global.selectedDestination == "Bristol" 
{ 
    global.lootTableChooseType = 101;
    global.lootTableAmountInTableMin = 10;
    global.lootTableAmountInTableMax = 10;
    global.lootWindowLastNumberInArray = 12; //This is the last number in loot table
    instance_create(x,y,objLootTableJobsRankingGlobals);
    objLootWindow.lwLocation=2;
    show_debug_message("Output: Bristol - Trips: Loot-table added.");
}

else if global.selectedDestination == "Peterborough" 
{ 
    global.lootTableChooseType = 102;
    global.lootTableAmountInTableMin = 10;
    global.lootTableAmountInTableMax = 10;
    global.lootWindowLastNumberInArray = 2; //This is the last number in loot table
    instance_create(x,y,objLootTableJobsRankingGlobals);
    show_debug_message("Output: Peterborough - Trips: Loot-table added.");
}

else if global.selectedDestination == "Sheffield" 
{ 
    global.lootTableChooseType = 103;
    global.lootTableAmountInTableMin = 10;
    global.lootTableAmountInTableMax = 10;
    global.lootWindowLastNumberInArray = 2; //This is the last number in loot table
    instance_create(x,y,objLootTableJobsRankingGlobals);
    show_debug_message("Output: Sheffield - Trips: Loot-table added.");
}

else if global.selectedDestination == "Leeds" 
{ 
    global.lootTableChooseType = 104;
    global.lootTableAmountInTableMin = 10;
    global.lootTableAmountInTableMax = 10;
    global.lootWindowLastNumberInArray = 11; //This is the last number in loot table
    instance_create(x,y,objLootTableJobsRankingGlobals);
    show_debug_message("Output: Leeds - Trips: Loot-table added.");
}

else if global.selectedDestination == "Birmingham" 
{ 
    global.lootTableChooseType = 105;
    global.lootTableAmountInTableMin = 10;
    global.lootTableAmountInTableMax = 10;
    global.lootWindowLastNumberInArray = 11; //This is the last number in loot table
    instance_create(x,y,objLootTableJobsRankingGlobals);
    show_debug_message("Output: Birmingham - Trips: Loot-table added.");
}

else if global.selectedDestination == "Liverpool" 
{ 
    global.lootTableChooseType = 106;
    global.lootTableAmountInTableMin = 10;
    global.lootTableAmountInTableMax = 10;
    global.lootWindowLastNumberInArray = 13; //This is the last number in loot table
    instance_create(x,y,objLootTableJobsRankingGlobals);
    show_debug_message("Output: Liverpool - Trips: Loot-table added.");
}

else if global.selectedDestination == "Newcastle" 
{ 
    global.lootTableChooseType = 107;
    global.lootTableAmountInTableMin = 10;
    global.lootTableAmountInTableMax = 10;
    global.lootWindowLastNumberInArray = 4; //This is the last number in loot table
    instance_create(x,y,objLootTableJobsRankingGlobals);
    show_debug_message("Output: Newcastle - Trips: Loot-table added.");
}

else if global.selectedDestination == "Manchester" 
{ 
    global.lootTableChooseType = 108;
    global.lootTableAmountInTableMin = 10;
    global.lootTableAmountInTableMax = 10;
    global.lootWindowLastNumberInArray = 13; //This is the last number in loot table
    instance_create(x,y,objLootTableJobsRankingGlobals);
    show_debug_message("Output: Manchester - Trips: Loot-table added.");
}

else if global.selectedDestination == "London" 
{ 
    global.lootTableChooseType = 109;
    global.lootTableAmountInTableMin = 10;
    global.lootTableAmountInTableMax = 10;
    global.lootWindowLastNumberInArray = 15; //This is the last number in loot table
    instance_create(x,y,objLootTableJobsRankingGlobals);
    show_debug_message("Output: London - Trips: Loot-table created.");
}  
