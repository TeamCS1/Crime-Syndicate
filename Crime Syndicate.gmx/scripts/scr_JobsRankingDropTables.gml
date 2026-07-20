///scr_JobsRankingDropTables(category,quantityToDropMin,quantityToDropMax,lootTableIndex)
//func scr_JobsRankingDropTables(catgeory,quantityToDropMin,quantityToDropMax,lootTableIndex)
// @arg category  
// @arg quantityToDropMin   
// @arg quantityToDropMax
// @arg lootTableIndex

//Used for Job ranking system

global.lootTableChooseType = 0;
global.lootTableAmountInTableMin = 0;
global.lootTableAmountInTableMax = 0;
global.lootWindowLastNumberInArray = 0;

global.lootTableChooseType = argument[0];   //Category of loot table
global.lootTableAmountInTableMin = argument[1];
global.lootTableAmountInTableMax = argument[2];
global.lootWindowLastNumberInArray = argument[3]; //This is the last number in loot table choose type


instance_create(x,y,objLootTableJobsRankingGlobals);
//return(0); 


