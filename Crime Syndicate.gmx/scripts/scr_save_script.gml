if os_browser == browser_not_a_browser
{
ini_open("savedata.ini");

ini_write_real("savegame", "roomBeforePrevious", global.roomBeforePrevious); //saves what room your in.

//Tracks Counters - 14
ini_write_real("savegame", "moneyCount", global.moneyCount);
ini_write_string("savegame", "moneySuffix", global.moneySuffix);
ini_write_real("savegame", "moneyCountMillion", global.moneyCountMillion);
ini_write_real("savegame", "moneyCountBillion", global.moneyCountBillion);
ini_write_real("savegame", "moneyCountTrillion", global.moneyCountTrillion);
ini_write_real("savegame", "healthCount", global.healthCount);
ini_write_real("savegame", "healthCountMax", global.healthCountMax);
ini_write_real("savegame", "healthInceaseRate", global.healthInceaseRate);
ini_write_real("savegame", "staminaCount", global.staminaCount);
ini_write_real("savegame", "staminaCountMax", global.staminaCountMax);
ini_write_real("savegame", "staminaInceaseRate", global.staminaInceaseRate);
ini_write_real("savegame", "attackDamage", global.attackDamage);
ini_write_real("savegame", "defenceProtection", global.defenceProtection);
ini_write_real("savegame", "skillPointsRemaining", global.skillPointsRemaining);

//Checker - 1
ini_write_string("Checker", "currentCity", global.currentCity);

//Options menu - 11
ini_write_real("options", "showStatusBar", global.showStatusBar);
ini_write_real("options", "hitmenTimer", global.hitmenTimer);
ini_write_string("options", "resolutionSizeText", global.resolutionSizeText);
ini_write_real("options", "trophySetInterval", global.trophySetInterval);
ini_write_real("options", "trophyPopupDelay", global.trophyPopupDelay);
ini_write_real("options", "themeType", global.themeType);
ini_write_real("options", "fpsMode", global.fpsMode);
ini_write_real("options", "rLevel", global.rLevel);
ini_write_real("options", "gLevel", global.gLevel);
ini_write_real("options", "bLevel", global.bLevel);
ini_write_real("options", "spriteTinting", global.spriteTinting);

//Tracks statistics - 7
ini_write_real("statistics", "gameCompletion", global.gameCompletion);
ini_write_real("statistics", "moneyEarned", global.moneyEarned);
ini_write_real("statistics", "jobsCompleted", global.jobsCompleted);
ini_write_real("statistics", "hitmenKilled", global.hitmenKilled);
ini_write_real("statistics", "timesInHospital", global.timesInHospital);
ini_write_real("statistics", "tripsTaken", global.tripsTaken);
ini_write_real("statistics", "skillPointsEarned", global.skillPointsEarned);

//Tracks job completion - 4
ini_write_real("savegame", "newYorkCompletion", global.newYorkCompletion);
ini_write_real("savegame", "chicagoCompletion", global.chicagoCompletion);
ini_write_real("savegame", "londonCompletion", global.londonCompletion);
ini_write_real("savegame", "lasVegasCompletion", global.lasVegasCompletion);

//Leveling up - 3
ini_write_real("level", "currentPlayerLevel", global.currentPlayerLevel);
ini_write_real("level", "currentXP", global.currentXP);
ini_write_real("level", "currentXPNeededToLevelUp", global.currentXPNeededToLevelUp);

//New York Job bars
ini_write_real("savegame", "jobOneBarNewYork", global.jobOneBarNewYork);
ini_write_real("savegame", "jobTwoBarNewYork", global.jobTwoBarNewYork);
ini_write_real("savegame", "jobThreeBarNewYork", global.jobThreeBarNewYork);
ini_write_real("savegame", "jobFourBarNewYork", global.jobFourBarNewYork);
ini_write_real("savegame", "jobFiveBarNewYork", global.jobFiveBarNewYork);
ini_write_real("savegame", "jobSixBarNewYork", global.jobSixBarNewYork);
ini_write_real("savegame", "jobSevenBarNewYork", global.jobSevenBarNewYork);
ini_write_real("savegame", "jobEightBarNewYork", global.jobEightBarNewYork);
ini_write_real("savegame", "jobNineBarNewYork", global.jobNineBarNewYork);
ini_write_real("savegame", "jobTenBarNewYork", global.jobTenBarNewYork);

//new york ranks
ini_write_real("ranks", "jobOneBarRankNewYork", global.jobOneBarRankNewYork);
ini_write_real("ranks", "jobTwoBarRankNewYork", global.jobTwoBarRankNewYork);
ini_write_real("ranks", "jobThreeBarRankNewYork", global.jobThreeBarRankNewYork);
ini_write_real("ranks", "jobFourBarRankNewYork", global.jobFourBarRankNewYork);
ini_write_real("ranks", "jobFiveBarRankNewYork", global.jobFiveBarRankNewYork);
ini_write_real("ranks", "jobSixBarRankNewYork", global.jobSixBarRankNewYork);
ini_write_real("ranks", "jobSevenBarRankNewYork", global.jobSevenBarRankNewYork);
ini_write_real("ranks", "jobEightBarRankNewYork", global.jobEightBarRankNewYork);
ini_write_real("ranks", "jobNineBarRankNewYork", global.jobNineBarRankNewYork);
ini_write_real("ranks", "jobTenBarRankNewYork", global.jobTenBarRankNewYork);

//Chicago Job bars
ini_write_real("savegame", "jobOneBarChicago", global.jobOneBarChicago);
ini_write_real("savegame", "jobTwoBarChicago", global.jobTwoBarChicago);
ini_write_real("savegame", "jobThreeBarChicago", global.jobThreeBarChicago);
ini_write_real("savegame", "jobFourBarChicago", global.jobFourBarChicago);
ini_write_real("savegame", "jobFiveBarChicago", global.jobFiveBarChicago);
ini_write_real("savegame", "jobSixBarChicago", global.jobSixBarChicago);
ini_write_real("savegame", "jobSevenBarChicago", global.jobSevenBarChicago);
ini_write_real("savegame", "jobEightBarChicago", global.jobEightBarChicago);
ini_write_real("savegame", "jobNineBarChicago", global.jobNineBarChicago);
ini_write_real("savegame", "jobTenBarChicago", global.jobTenBarChicago);

//Chicago ranks
ini_write_real("ranks", "jobOneBarRankChicago", global.jobOneBarRankChicago);
ini_write_real("ranks", "jobTwoBarRankChicago", global.jobTwoBarRankChicago);
ini_write_real("ranks", "jobThreeBarRankChicago", global.jobThreeBarRankChicago);
ini_write_real("ranks", "jobFourBarRankChicago", global.jobFourBarRankChicago);
ini_write_real("ranks", "jobFiveBarRankChicago", global.jobFiveBarRankChicago);
ini_write_real("ranks", "jobSixBarRankChicago", global.jobSixBarRankChicago);
ini_write_real("ranks", "jobSevenBarRankChicago", global.jobSevenBarRankChicago);
ini_write_real("ranks", "jobEightBarRankChicago", global.jobEightBarRankChicago);
ini_write_real("ranks", "jobNineBarRankChicago", global.jobNineBarRankChicago);
ini_write_real("ranks", "jobTenBarRankChicago", global.jobTenBarRankChicago);

//London Job bars
ini_write_real("savegame", "jobOneBarLondon", global.jobOneBarLondon);
ini_write_real("savegame", "jobTwoBarLondon", global.jobTwoBarLondon);
ini_write_real("savegame", "jobThreeBarLondon", global.jobThreeBarLondon);
ini_write_real("savegame", "jobFourBarLondon", global.jobFourBarLondon);
ini_write_real("savegame", "jobFiveBarLondon", global.jobFiveBarLondon);
ini_write_real("savegame", "jobSixBarLondon", global.jobSixBarLondon);
ini_write_real("savegame", "jobSevenBarLondon", global.jobSevenBarLondon);
ini_write_real("savegame", "jobEightBarLondon", global.jobEightBarLondon);
ini_write_real("savegame", "jobNineBarLondon", global.jobNineBarLondon);
ini_write_real("savegame", "jobTenBarLondon", global.jobTenBarLondon);

//London ranks
ini_write_real("ranks", "jobOneBarRankLondon", global.jobOneBarRankLondon);
ini_write_real("ranks", "jobTwoBarRankLondon", global.jobTwoBarRankLondon);
ini_write_real("ranks", "jobThreeBarRankLondon", global.jobThreeBarRankLondon);
ini_write_real("ranks", "jobFourBarRankLondon", global.jobFourBarRankLondon);
ini_write_real("ranks", "jobFiveBarRankLondon", global.jobFiveBarRankLondon);
ini_write_real("ranks", "jobSixBarRankLondon", global.jobSixBarRankLondon);
ini_write_real("ranks", "jobSevenBarRankLondon", global.jobSevenBarRankLondon);
ini_write_real("ranks", "jobEightBarRankLondon", global.jobEightBarRankLondon);
ini_write_real("ranks", "jobNineBarRankLondon", global.jobNineBarRankLondon);
ini_write_real("ranks", "jobTenBarRankLondon", global.jobTenBarRankLondon);

//Las Vegas Job bars
ini_write_real("savegame", "jobOneBarLasVegas", global.jobOneBarLasVegas);
ini_write_real("savegame", "jobTwoBarLasVegas", global.jobTwoBarLasVegas);
ini_write_real("savegame", "jobThreeBarLasVegas", global.jobThreeBarLasVegas);
ini_write_real("savegame", "jobFourBarLasVegas", global.jobFourBarLasVegas);
ini_write_real("savegame", "jobFiveBarLasVegas", global.jobFiveBarLasVegas);
ini_write_real("savegame", "jobSixBarLasVegas", global.jobSixBarLasVegas);
ini_write_real("savegame", "jobSevenBarLasVegas", global.jobSevenBarLasVegas);
ini_write_real("savegame", "jobEightBarLasVegas", global.jobEightBarLasVegas);
ini_write_real("savegame", "jobNineBarLasVegas", global.jobNineBarLasVegas);
ini_write_real("savegame", "jobTenBarLasVegas", global.jobTenBarLasVegas);

//Las Vegas ranks
ini_write_real("ranks", "jobOneBarRankLasVegas", global.jobOneBarRankLasVegas);
ini_write_real("ranks", "jobTwoBarRankLasVegas", global.jobTwoBarRankLasVegas);
ini_write_real("ranks", "jobThreeBarRankLasVegas", global.jobThreeBarRankLasVegas);
ini_write_real("ranks", "jobFourBarRankLasVegas", global.jobFourBarRankLasVegas);
ini_write_real("ranks", "jobFiveBarRankLasVegas", global.jobFiveBarRankLasVegas);
ini_write_real("ranks", "jobSixBarRankLasVegas", global.jobSixBarRankLasVegas);
ini_write_real("ranks", "jobSevenBarRankLasVegas", global.jobSevenBarRankLasVegas);
ini_write_real("ranks", "jobEightBarRankLasVegas", global.jobEightBarRankLasVegas);
ini_write_real("ranks", "jobNineBarRankLasVegas", global.jobNineBarRankLasVegas);
ini_write_real("ranks", "jobTenBarRankLasVegas", global.jobTenBarRankLasVegas);

//Properties - 7
ini_write_string("properties", "propertiesOwner", global.propertiesOwner);
ini_write_string("properties", "propertiesLastEntry", global.propertiesLastEntry);
ini_write_real("properties", "totalPropertiesIncome", global.totalPropertiesIncome);

ini_write_real("properties", "totalPropertiesIncomeMillion", global.totalPropertiesIncomeMillion);
ini_write_real("properties", "totalPropertiesIncomeBillion", global.totalPropertiesIncomeBillion);
ini_write_real("properties", "totalPropertiesIncomeTrillion", global.totalPropertiesIncomeTrillion);
ini_write_string("properties", "totalPropertiesIncomeSuffix", global.totalPropertiesIncomeSuffix);

//New York Properties
ini_write_real("propertiesQuantities", "propertiesUninspiringGarageQuantityOwned", global.propertiesUninspiringGarageQuantityOwned);
ini_write_real("propertiesQuantities", "propertiesArchaicDinerQuantityOwned", global.propertiesArchaicDinerQuantityOwned);
ini_write_real("propertiesQuantities", "propertiesTaxiDepotQuantityOwned", global.propertiesTaxiDepotQuantityOwned);
ini_write_real("propertiesQuantities", "propertiesChinaShopQuantityOwned", global.propertiesChinaShopQuantityOwned);
ini_write_real("propertiesQuantities", "propertiesMiaNightClubQuantityOwned", global.propertiesMiaNightClubQuantityOwned);
ini_write_real("propertiesQuantities", "propertiesKenjiCasinoQuantityOwned", global.propertiesKenjiCasinoQuantityOwned);
ini_write_real("propertiesQuantities", "propertiesHighriseBuildingQuantityOwned", global.propertiesHighriseBuildingQuantityOwned);
ini_write_real("propertiesQuantities", "propertiesGrandCabaretClubQuantityOwned", global.propertiesGrandCabaretClubQuantityOwned);
ini_write_real("propertiesQuantities", "propertiesDecadePenthouseQuantityOwned", global.propertiesDecadePenthouseQuantityOwned);

//BLACKMARKET PROPERTIES - 13
ini_write_real("propertiesQuantities", "blackmarketProperty1QuantityOwned", global.blackmarketProperty1QuantityOwned);
ini_write_real("propertiesQuantities", "blackmarketProperty2QuantityOwned", global.blackmarketProperty2QuantityOwned);
ini_write_real("propertiesQuantities", "blackmarketProperty3QuantityOwned", global.blackmarketProperty3QuantityOwned);
ini_write_real("propertiesQuantities", "blackmarketProperty4QuantityOwned", global.blackmarketProperty4QuantityOwned);
ini_write_real("propertiesQuantities", "blackmarketProperty5QuantityOwned", global.blackmarketProperty5QuantityOwned);
ini_write_real("propertiesQuantities", "blackmarketProperty6QuantityOwned", global.blackmarketProperty6QuantityOwned);
ini_write_real("propertiesQuantities", "blackmarketProperty7QuantityOwned", global.blackmarketProperty7QuantityOwned);
ini_write_real("propertiesQuantities", "blackmarketProperty8QuantityOwned", global.blackmarketProperty8QuantityOwned);
ini_write_real("propertiesQuantities", "blackmarketProperty9QuantityOwned", global.blackmarketProperty9QuantityOwned);
ini_write_real("propertiesQuantities", "blackmarketProperty10QuantityOwned", global.blackmarketProperty10QuantityOwned);
ini_write_real("propertiesQuantities", "blackmarketProperty11QuantityOwned", global.blackmarketProperty11QuantityOwned);
ini_write_real("propertiesQuantities", "blackmarketProperty12QuantityOwned", global.blackmarketProperty12QuantityOwned);
ini_write_real("propertiesQuantities", "blackmarketProperty13QuantityOwned", global.blackmarketProperty13QuantityOwned);

//City Bosses
ini_write_real("citybosses", "qtePerformed", global.qtePerformed);

//Blackmarket Group
ini_write_real("blackmarket", "slotPrice", global.slotPrice);
ini_write_real("blackmarket", "clanParts", global.clanParts);
ini_write_real("blackmarket", "tripsStorageMaximum", global.tripsStorageMaximum);
ini_write_real("blackmarket", "agencyLevelHub", global.agencyLevelHub);
ini_write_real("blackmarket", "agencyLevelHubPoints", global.agencyLevelHubPoints);

ini_write_string("blackmarket", "slot1Status", global.slot1Status);
ini_write_real("blackmarket", "slot1AgentFee", global.slot1AgentFee);
ini_write_real("blackmarket", "slot1AgentLevel", global.slot1AgentLevel);
ini_write_real("blackmarket", "slot1AgentHappy", global.slot1AgentHappy);
ini_write_real("blackmarket", "slot1AgentEff", global.slot1AgentEff);
ini_write_real("blackmarket", "slot1AgentLootOdds", global.slot1AgentLootOdds);

ini_write_string("blackmarket", "slot2Status", global.slot2Status);
ini_write_real("blackmarket", "slot2AgentFee", global.slot2AgentFee);
ini_write_real("blackmarket", "slot2AgentLevel", global.slot2AgentLevel);
ini_write_real("blackmarket", "slot2AgentHappy", global.slot2AgentHappy);
ini_write_real("blackmarket", "slot2AgentEff", global.slot2AgentEff);
ini_write_real("blackmarket", "slot2AgentLootOdds", global.slot2AgentLootOdds);

ini_write_string("blackmarket", "slot3Status", global.slot3Status);
ini_write_real("blackmarket", "slot3AgentFee", global.slot3AgentFee);
ini_write_real("blackmarket", "slot3AgentLevel", global.slot3AgentLevel);
ini_write_real("blackmarket", "slot3AgentHappy", global.slot3AgentHappy);
ini_write_real("blackmarket", "slot3AgentEff", global.slot3AgentEff);
ini_write_real("blackmarket", "slot3AgentLootOdds", global.slot3AgentLootOdds);

ini_write_string("blackmarket", "slot4Status", global.slot4Status);
ini_write_real("blackmarket", "slot4AgentFee", global.slot4AgentFee);
ini_write_real("blackmarket", "slot4AgentLevel", global.slot4AgentLevel);
ini_write_real("blackmarket", "slot4AgentHappy", global.slot4AgentHappy);
ini_write_real("blackmarket", "slot4AgentEff", global.slot4AgentEff);
ini_write_real("blackmarket", "slot4AgentLootOdds", global.slot4AgentLootOdds);

ini_write_string("blackmarket", "slot5Status", global.slot5Status);
ini_write_real("blackmarket", "slot5AgentFee", global.slot5AgentFee);
ini_write_real("blackmarket", "slot5AgentLevel", global.slot5AgentLevel);
ini_write_real("blackmarket", "slot5AgentHappy", global.slot5AgentHappy);
ini_write_real("blackmarket", "slot5AgentEff", global.slot5AgentEff);
ini_write_real("blackmarket", "slot5AgentLootOdds", global.slot5AgentLootOdds);

ini_write_string("blackmarket", "slot6Status", global.slot6Status);
ini_write_real("blackmarket", "slot6AgentFee", global.slot6AgentFee);
ini_write_real("blackmarket", "slot6AgentLevel", global.slot6AgentLevel);
ini_write_real("blackmarket", "slot6AgentHappy", global.slot6AgentHappy);
ini_write_real("blackmarket", "slot6AgentEff", global.slot6AgentEff);
ini_write_real("blackmarket", "slot6AgentLootOdds", global.slot6AgentLootOdds);

ini_write_string("blackmarket", "slot7Status", global.slot7Status);
ini_write_real("blackmarket", "slot7AgentFee", global.slot7AgentFee);
ini_write_real("blackmarket", "slot7AgentLevel", global.slot7AgentLevel);
ini_write_real("blackmarket", "slot7AgentHappy", global.slot7AgentHappy);
ini_write_real("blackmarket", "slot7AgentEff", global.slot7AgentEff);
ini_write_real("blackmarket", "slot7AgentLootOdds", global.slot7AgentLootOdds);

ini_write_string("blackmarket", "slot8Status", global.slot8Status);
ini_write_real("blackmarket", "slot8AgentFee", global.slot8AgentFee);
ini_write_real("blackmarket", "slot8AgentLevel", global.slot8AgentLevel);
ini_write_real("blackmarket", "slot8AgentHappy", global.slot8AgentHappy);
ini_write_real("blackmarket", "slot8AgentEff", global.slot8AgentEff);
ini_write_real("blackmarket", "slot8AgentLootOdds", global.slot8AgentLootOdds);

ini_write_string("blackmarket", "slot9Status", global.slot9Status);
ini_write_real("blackmarket", "slot9AgentFee", global.slot9AgentFee);
ini_write_real("blackmarket", "slot9AgentLevel", global.slot9AgentLevel);
ini_write_real("blackmarket", "slot9AgentHappy", global.slot9AgentHappy);
ini_write_real("blackmarket", "slot9AgentEff", global.slot9AgentEff);
ini_write_real("blackmarket", "slot9AgentLootOdds", global.slot9AgentLootOdds);

ini_write_string("blackmarket", "slot10Status", global.slot10Status);
ini_write_real("blackmarket", "slot10AgentFee", global.slot10AgentFee);
ini_write_real("blackmarket", "slot10AgentLevel", global.slot10AgentLevel);
ini_write_real("blackmarket", "slot10AgentHappy", global.slot10AgentHappy);
ini_write_real("blackmarket", "slot10AgentEff", global.slot10AgentEff);
ini_write_real("blackmarket", "slot10AgentLootOdds", global.slot10AgentLootOdds);

ini_write_string("blackmarket", "slot11Status", global.slot11Status);
ini_write_real("blackmarket", "slot11AgentFee", global.slot11AgentFee);
ini_write_real("blackmarket", "slot11AgentLevel", global.slot11AgentLevel);
ini_write_real("blackmarket", "slot11AgentHappy", global.slot11AgentHappy);
ini_write_real("blackmarket", "slot11AgentEff", global.slot11AgentEff);
ini_write_real("blackmarket", "slot11AgentLootOdds", global.slot11AgentLootOdds);

ini_write_string("blackmarket", "slot12Status", global.slot12Status);
ini_write_real("blackmarket", "slot12AgentFee", global.slot12AgentFee);
ini_write_real("blackmarket", "slot12AgentLevel", global.slot12AgentLevel);
ini_write_real("blackmarket", "slot12AgentHappy", global.slot12AgentHappy);
ini_write_real("blackmarket", "slot12AgentEff", global.slot12AgentEff);
ini_write_real("blackmarket", "slot12AgentLootOdds", global.slot12AgentLootOdds);

ini_write_string("blackmarket", "slot13Status", global.slot13Status);
ini_write_real("blackmarket", "slot13AgentFee", global.slot13AgentFee);
ini_write_real("blackmarket", "slot13AgentLevel", global.slot13AgentLevel);
ini_write_real("blackmarket", "slot13AgentHappy", global.slot13AgentHappy);
ini_write_real("blackmarket", "slot13AgentEff", global.slot13AgentEff);
ini_write_real("blackmarket", "slot13AgentLootOdds", global.slot13AgentLootOdds);

ini_write_string("blackmarket", "slot14Status", global.slot14Status);
ini_write_real("blackmarket", "slot14AgentFee", global.slot14AgentFee);
ini_write_real("blackmarket", "slot14AgentLevel", global.slot14AgentLevel);
ini_write_real("blackmarket", "slot14AgentHappy", global.slot14AgentHappy);
ini_write_real("blackmarket", "slot14AgentEff", global.slot14AgentEff);
ini_write_real("blackmarket", "slot14AgentLootOdds", global.slot14AgentLootOdds);

ini_write_string("blackmarket", "slot15Status", global.slot15Status);
ini_write_real("blackmarket", "slot15AgentFee", global.slot15AgentFee);
ini_write_real("blackmarket", "slot15AgentLevel", global.slot15AgentLevel);
ini_write_real("blackmarket", "slot15AgentHappy", global.slot15AgentHappy);
ini_write_real("blackmarket", "slot15AgentEff", global.slot15AgentEff);
ini_write_real("blackmarket", "slot15AgentLootOdds", global.slot15AgentLootOdds);

ini_write_string("blackmarket", "slot16Status", global.slot16Status);
ini_write_real("blackmarket", "slot16AgentFee", global.slot16AgentFee);
ini_write_real("blackmarket", "slot16AgentLevel", global.slot16AgentLevel);
ini_write_real("blackmarket", "slot16AgentHappy", global.slot16AgentHappy);
ini_write_real("blackmarket", "slot16AgentEff", global.slot16AgentEff);
ini_write_real("blackmarket", "slot16AgentLootOdds", global.slot16AgentLootOdds);

ini_write_string("blackmarket", "slot17Status", global.slot17Status);
ini_write_real("blackmarket", "slot17AgentFee", global.slot17AgentFee);
ini_write_real("blackmarket", "slot17AgentLevel", global.slot17AgentLevel);
ini_write_real("blackmarket", "slot17AgentHappy", global.slot17AgentHappy);
ini_write_real("blackmarket", "slot17AgentEff", global.slot17AgentEff);
ini_write_real("blackmarket", "slot17AgentLootOdds", global.slot17AgentLootOdds);

ini_write_string("blackmarket", "slot18Status", global.slot18Status);
ini_write_real("blackmarket", "slot18AgentFee", global.slot18AgentFee);
ini_write_real("blackmarket", "slot18AgentLevel", global.slot18AgentLevel);
ini_write_real("blackmarket", "slot18AgentHappy", global.slot18AgentHappy);
ini_write_real("blackmarket", "slot18AgentEff", global.slot18AgentEff);
ini_write_real("blackmarket", "slot18AgentLootOdds", global.slot18AgentLootOdds);

//LOOT SAVING
//--- Rocks - 7
ini_write_real("blackmarket", "amber_rock", global.amber_rock);
ini_write_real("blackmarket", "basalt_rock", global.basalt_rock);
ini_write_real("blackmarket", "rainbow_rock", global.rainbow_rock);
ini_write_real("blackmarket", "volcanic_rock", global.volcanic_rock);
ini_write_real("blackmarket", "tourmaline_rock", global.tourmaline_rock);
ini_write_real("blackmarket", "obsidian_rock", global.obsidian_rock);
ini_write_real("blackmarket", "mystery_stone", global.mystery_stone);

//---Powders - 5
ini_write_real("blackmarket", "black_metal_powder", global.black_metal_powder);
ini_write_real("blackmarket", "silver_metal_powder", global.silver_metal_powder);
ini_write_real("blackmarket", "steel_metal_powder", global.steel_metal_powder);
ini_write_real("blackmarket", "gold_metal_powder", global.gold_metal_powder);
ini_write_real("blackmarket", "gun_powder", global.gun_powder);

//---Ingots & Ores - 4
ini_write_real("blackmarket", "iron_ingot", global.iron_ingot);
ini_write_real("blackmarket", "gold_ingot", global.gold_ingot);
ini_write_real("blackmarket", "copper_ingot", global.copper_ingot);
ini_write_real("blackmarket", "silver_ore", global.silver_ore);

//---Gems - 6
ini_write_real("blackmarket", "diamond_gem", global.diamond_gem);
ini_write_real("blackmarket", "crystal_gem", global.crystal_gem);
ini_write_real("blackmarket", "emerald_gem", global.emerald_gem);
ini_write_real("blackmarket", "ruby_gem", global.ruby_gem);
ini_write_real("blackmarket", "fluorite_gem", global.fluorite_gem);
ini_write_real("blackmarket", "pearl_gem", global.pearl_gem);

//---Gears - 3
ini_write_real("blackmarket", "bronze_gear", global.bronze_gear);
ini_write_real("blackmarket", "iron_gear", global.iron_gear);
ini_write_real("blackmarket", "gold_gear", global.gold_gear);

//---Technical - 4 
ini_write_real("blackmarket", "high_voltage_battery", global.high_voltage_battery);
ini_write_real("blackmarket", "ic_chip", global.ic_chip);
ini_write_real("blackmarket", "printed_circuit_board", global.printed_circuit_board);
ini_write_real("blackmarket", "magnet_technical", global.magnet_technical);

//---Building - 8 
ini_write_real("blackmarket", "steel", global.steel);
ini_write_real("blackmarket", "timber", global.timber);
ini_write_real("blackmarket", "glass_pane", global.glass_pane);
ini_write_real("blackmarket", "spring", global.spring);
ini_write_real("blackmarket", "screw", global.screw);
ini_write_real("blackmarket", "wire", global.wire);
ini_write_real("blackmarket", "chain", global.chain);
ini_write_real("blackmarket", "lead_weight", global.lead_weight);

//---Natural - 5
ini_write_real("blackmarket", "quality_leather", global.quality_leather);
ini_write_real("blackmarket", "plastic", global.plastic);
ini_write_real("blackmarket", "silk_cloth", global.silk_cloth);
ini_write_real("blackmarket", "rubber", global.rubber);
ini_write_real("blackmarket", "linen_cloth", global.linen_cloth);

//---Fibers - 2
ini_write_real("blackmarket", "ballistic_fiber", global.ballistic_fiber);
ini_write_real("blackmarket", "carbon_fiber", global.carbon_fiber);

//---Collectable - 2
ini_write_real("blackmarket", "magazine", global.magazine);
ini_write_real("blackmarket", "supply_crate", global.supply_crate);

//---Blueprints - 18 - not include doscovered  
ini_write_real("blackmarket", "pistolBlueprint", global.pistolBlueprint);
ini_write_real("blackmarket", "pistolBlueprintFound", global.pistolBlueprintFound);
ini_write_real("blackmarket", "shotgunBlueprint", global.shotgunBlueprint);
ini_write_real("blackmarket", "shotgunBlueprintFound", global.shotgunBlueprintFound);
ini_write_real("blackmarket", "sniperBlueprint", global.sniperBlueprint);
ini_write_real("blackmarket", "sniperBlueprintFound", global.sniperBlueprintFound);
ini_write_real("blackmarket", "lmgBlueprint", global.lmgBlueprint);
ini_write_real("blackmarket", "lmgBlueprintFound", global.lmgBlueprintFound);
ini_write_real("blackmarket", "throwablesBlueprint", global.throwablesBlueprint);
ini_write_real("blackmarket", "throwablesBlueprintFound", global.throwablesBlueprintFound);
ini_write_real("blackmarket", "meleeBlueprint", global.meleeBlueprint);
ini_write_real("blackmarket", "meleeBlueprintFound", global.meleeBlueprintFound);
ini_write_real("blackmarket", "submachineBlueprint", global.submachineBlueprint);
ini_write_real("blackmarket", "submachineBlueprintFound", global.submachineBlueprintFound);
ini_write_real("blackmarket", "automaticBlueprint", global.automaticBlueprint);
ini_write_real("blackmarket", "automaticBlueprintFound", global.automaticBlueprintFound);
ini_write_real("blackmarket", "minesBlueprint", global.minesBlueprint);
ini_write_real("blackmarket", "minesBlueprintFound", global.minesBlueprintFound);

//END OF WRITING >>>
ini_close(); //saves changes to ini file and closes stream
scr_log_message("OUTPUT: Saved writing complete.")
show_message("OUTPUT: Save Complete.");
}

if os_browser == browser_not_a_browser //if its windows then
{
    //Do nothing here
}

else
{
    //web calculation (the worst export ever)
    var addUpEverything;
    
    addUpEverything = scr_SaveWeb();                    
                    
    var baseEncode, output, cipher;
    
    //encoding
    baseEncode = base64_encode(addUpEverything);
    
    //cipher
    cipher = scr_vigenere_ascii(baseEncode,string(game_id),1)
    
    //user input
    output = get_string("Save Exporter: Please copy your save!: ", string(cipher)); 
    //output = get_string("Save Exporter: Please copy your save!: " + string(addUpEverything), string(cipher));
}
