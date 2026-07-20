//Here we list 10%, 5% and 2.5 loot odds chances
randomize();

//2.5%
if (random(1) < 0.025) 
{ 
    //drop a single magazine from 0 to 100
    global.lootTableChooseType = 10;
    global.lootTableAmountInTableMin = 1;
    global.lootTableAmountInTableMax = 1;
    global.lootWindowLastNumberInArray = 0; //This is the last number in loot table
    
    if !instance_exists(objLootTableJobsRankingGlobals)
    {
        instance_create(x,y,objLootTableJobsRankingGlobals);
        show_debug_message("Output: Dropped a random magazine!");
    }
}

//5% 
else if (random(1) < 0.05)
{ 
    //drop a single weapon, armour or vehicle
    show_debug_message("Output: Dropped a random weapon, armour or vehicle!");
}  
//10%
else if (random(1) < 0.10)
{
    global.lootTableChooseType = 0;
    global.lootWindowLastNumberInArray = 52; //This is the last number in loot table
    global.lootTableAmountInTableMin = 3;
    global.lootTableAmountInTableMax = 3;
    
    if !instance_exists(objLootTableJobsRankingGlobals)
    {
        instance_create(x,y,objLootTableJobsRankingGlobals);
        show_debug_message("Output: Dropped three pieces of random loot!"); 
    }
}
