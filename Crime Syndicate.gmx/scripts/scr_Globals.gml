///Globals

//Money based variables - 7
global.moneyCount = 0;
global.moneySuffix = "";
global.moneyCountMillion = 0;
global.moneyCountBillion = 0;
global.moneyCountTrillion = 0;
global.moneyCountQuadrillion = 0;
global.isMoneyInfinity = 0;

//Properties Income - 8
global.totalPropertiesIncome = 0;
global.totalPropertiesIncomeMillion = 0;
global.totalPropertiesIncomeBillion = 0;
global.totalPropertiesIncomeTrillion = 0;
global.totalPropertiesIncomeQuadrillion = 0;
global.totalPropertiesIncomeSuffix = "";

global.propertiesLastEntry = "Player";
global.propertiesOwner = "Player";

//HUD Variables
global.healthCount = 100;
global.healthCountMax = 100;
global.healthInceaseRate = 0.05;

global.staminaCount = 10;
global.staminaCountMax = 10;
global.staminaInceaseRate = 0.05;

global.attackDamage = 1;
global.defenceProtection = 1;

global.skillPointsRemaining = 0;

//Lists specific - 5
global.currentCity = "NEW_YORK";
global.newYorkOnJob = "list1";
global.chicagoOnJob = -1;
global.londonOnJob = -1;
global.lasVegasOnJob = -1;

//Options menu - 11
global.showStatusBar = false;
global.hitmenTimer = 1.7;
global.resolutionSizeText = "1920x1080";
global.trophySetInterval = 5;
global.trophyPopupDelay = 5;
global.themeType = 0; //0 is light, 1 is dark
global.fpsMode = 30;
global.rLevel = 0; //for themes 
global.gLevel = 0; //for themes
global.bLevel = 0; //for themes
global.spriteTinting = c_white;

//Tracks game statistics - 7
global.gameCompletion = 0;
global.moneyEarned = 0;
global.jobsCompleted = 0;
global.hitmenKilled = 0;
global.timesInHospital = 0;
global.tripsTaken = 0;
global.skillPointsEarned = 0;

//TRACKS JOB COMPLETION - 4
global.newYorkCompletion = 0;
global.chicagoCompletion = 0;
global.londonCompletion = 0;
global.lasVegasCompletion = 0;

//LEVELING UP
global.currentPlayerLevel = 0;
global.currentXP = 0;
global.currentXPNeededToLevelUp = 10;

global.currentPlayerLevelUpperBound = -1;
global.currentPlayerLevelLowerBound = -1;

global.roomBeforePrevious = -1;

//CITY BOSSES
global.newYorkCityBossTierOneIsDefeated = false;
global.newYorkCityBossTierTwoIsDefeated = false;
global.newYorkCityBossTierThreeIsDefeated = false;

global.chicagoCityBossTierOneIsDefeated = false;
global.chicagoCityBossTierTwoIsDefeated = false;
global.chicagoCityBossTierThreeIsDefeated = false;

global.londonCityBossTierOneIsDefeated = false;
global.londonCityBossTierTwoIsDefeated = false;
global.londonCityBossTierThreeIsDefeated = false;

global.lasVegasCityBossTierOneIsDefeated = false;
global.lasVegasCityBossTierTwoIsDefeated = false;
global.lasVegasCityBossTierThreeIsDefeated = false;

//In Battle
global.newYorkCityBossTierOneInBattle = false;
global.newYorkCityBossTierTwoInBattle = false;
global.newYorkCityBossTierThreeInBattle = false;

global.chicagoCityBossTierOneInBattle = false;
global.chicagoCityBossTierTwoInBattle = false;
global.chicagoCityBossTierThreeInBattle = false;

global.londonCityBossTierOneInBattle = false;
global.londonCityBossTierTwoInBattle = false;
global.londonCityBossTierThreeInBattle = false;

global.lasVegasCityBossTierOneInBattle = false;
global.lasVegasCityBossTierTwoInBattle = false;
global.lasVegasCityBossTierThreeInBattle = false;

global.cityBossNameTierOne = "NONE";
global.cityBossNameTierTwo = "NONE";
global.cityBossNameTierThree = "NONE";

global.cityBossesMult = 1.0;

//This variable needs renaming!
global.currentNewYorkCityBossBarMultiplierTierOne = 1;
global.qtePerformed = 0;

//NEW YORK BARS
global.jobOneBarNewYork = 0;
global.jobTwoBarNewYork = 0;
global.jobThreeBarNewYork = 0;
global.jobFourBarNewYork = 0;
global.jobFiveBarNewYork = 0;
global.jobSixBarNewYork = 0;
global.jobSevenBarNewYork = 0;
global.jobEightBarNewYork = 0;
global.jobNineBarNewYork = 0;
global.jobTenBarNewYork = 0;

//NEW YORK RANKS
global.jobOneBarRankNewYork = 0;
global.jobTwoBarRankNewYork = 0;
global.jobThreeBarRankNewYork = 0;
global.jobFourBarRankNewYork = 0;
global.jobFiveBarRankNewYork = 0;
global.jobSixBarRankNewYork = 0;
global.jobSevenBarRankNewYork = 0;
global.jobEightBarRankNewYork = 0;
global.jobNineBarRankNewYork = 0;
global.jobTenBarRankNewYork = 0;

//CHICAGO BARS
global.jobOneBarChicago = 0;
global.jobTwoBarChicago = 0;
global.jobThreeBarChicago = 0;
global.jobFourBarChicago = 0;
global.jobFiveBarChicago = 0;
global.jobSixBarChicago = 0;
global.jobSevenBarChicago = 0;
global.jobEightBarChicago = 0;
global.jobNineBarChicago = 0;
global.jobTenBarChicago = 0;

//CHICAGO RANKS
global.jobOneBarRankChicago = 0;
global.jobTwoBarRankChicago = 0;
global.jobThreeBarRankChicago = 0;
global.jobFourBarRankChicago = 0;
global.jobFiveBarRankChicago = 0;
global.jobSixBarRankChicago = 0;
global.jobSevenBarRankChicago = 0;
global.jobEightBarRankChicago = 0;
global.jobNineBarRankChicago = 0;
global.jobTenBarRankChicago = 0;

//LONDON BARS
global.jobOneBarLondon = 0;
global.jobTwoBarLondon = 0;
global.jobThreeBarLondon = 0;
global.jobFourBarLondon = 0;
global.jobFiveBarLondon = 0;
global.jobSixBarLondon = 0;
global.jobSevenBarLondon = 0;
global.jobEightBarLondon = 0;
global.jobNineBarLondon = 0;
global.jobTenBarLondon = 0;

//LONDON RANKS
global.jobOneBarRankLondon = 0;
global.jobTwoBarRankLondon = 0;
global.jobThreeBarRankLondon = 0;
global.jobFourBarRankLondon = 0;
global.jobFiveBarRankLondon = 0;
global.jobSixBarRankLondon = 0;
global.jobSevenBarRankLondon = 0;
global.jobEightBarRankLondon = 0;
global.jobNineBarRankLondon = 0;
global.jobTenBarRankLondon = 0;

//LAS VEGAS BARS
global.jobOneBarLasVegas = 0;
global.jobTwoBarLasVegas = 0;
global.jobThreeBarLasVegas = 0;
global.jobFourBarLasVegas = 0;
global.jobFiveBarLasVegas = 0;
global.jobSixBarLasVegas = 0;
global.jobSevenBarLasVegas = 0;
global.jobEightBarLasVegas = 0;
global.jobNineBarLasVegas = 0;
global.jobTenBarLasVegas = 0;

//LAS VEGAS RANKS
global.jobOneBarRankLasVegas = 0;
global.jobTwoBarRankLasVegas = 0;
global.jobThreeBarRankLasVegas = 0;
global.jobFourBarRankLasVegas = 0;
global.jobFiveBarRankLasVegas = 0;
global.jobSixBarRankLasVegas = 0;
global.jobSevenBarRankLasVegas = 0;
global.jobEightBarRankLasVegas = 0;
global.jobNineBarRankLasVegas = 0;
global.jobTenBarRankLasVegas = 0;

//HITMEN
global.AIAttackDamage = 0;
global.AIDefenceProtection = 0;
global.hitmenBounty = 0;

global.AIAttackDamageSectionTwo = 0;
global.AIDefenceProtectionSectionTwo = 0;
global.hitmenBountySectionTwo = 0;

global.AIAttackDamageSectionThree = 0;
global.AIDefenceProtectionSectionThree = 0;
global.hitmenBountySectionThree = 0;

//PROPERTIES MANAGEMENT MAIN
global.newYorkPropertyToCost = 0;
global.calculatedNewYorkPropertyCost = 0;
global.calculatedNewYorkPropertyCostMillions = 0;
global.calculatedNewYorkPropertyCostBillions = 0;
global.calculatedNewYorkPropertyCostTrillions = 0;
global.moneySuffixProperties = "";
global.newYorkPropertySelection = "";
global.propertiesQuantity = 1;
global.propertiesLastEntryQuantity = 1;

//PROPERTIES MANAGEMENT QUANTITY
global.propertiesUninspiringGarageQuantityOwned = 0;
global.propertiesArchaicDinerQuantityOwned = 0;
global.propertiesTaxiDepotQuantityOwned = 0;
global.propertiesChinaShopQuantityOwned = 0;
global.propertiesMiaNightClubQuantityOwned = 0;
global.propertiesKenjiCasinoQuantityOwned = 0;
global.propertiesHighriseBuildingQuantityOwned = 0;
global.propertiesGrandCabaretClubQuantityOwned = 0;
global.propertiesDecadePenthouseQuantityOwned = 0;

//BLACKMARKET PROPERTIES - 13
global.blackmarketProperty1QuantityOwned = 0;
global.blackmarketProperty2QuantityOwned = 0;
global.blackmarketProperty3QuantityOwned = 0;
global.blackmarketProperty4QuantityOwned = 0;
global.blackmarketProperty5QuantityOwned = 0;
global.blackmarketProperty6QuantityOwned = 0;
global.blackmarketProperty7QuantityOwned = 0;
global.blackmarketProperty8QuantityOwned = 0;
global.blackmarketProperty9QuantityOwned = 0;
global.blackmarketProperty10QuantityOwned = 0;
global.blackmarketProperty11QuantityOwned = 0;
global.blackmarketProperty12QuantityOwned = 0;
global.blackmarketProperty13QuantityOwned = 0;

//TROPHY RELATED POP-UP SECTION
global.trophyName = "";
global.trophyGrade = "";
global.trophySetInterval = 5;

//TRACK TROPHIES
global.earnedJobsCompleted = false;
global.earnedJobsCompletedTwoHundredFifty = false;
global.earnedJobsCompleted750 = false;
global.earnedJobsCompleted2500 = false;
global.earnedMaxedOutTrophy = false;
global.earnedRealEstateStartup = false;
global.earnedAllNighterTrophy = false;
global.earnedAllNighterMetReq = false;
global.earnedNewYorkKingTrophy = false;
global.earnedChicagoKingTrophy = false;
global.earnedLondonKingTrophy = false;
global.earnedLasVegasKingTrophy = false;

//City Bosses Update Trophies
global.earnedChampionJockey = false;
global.earnedFightOrFlight = false;
global.earnedVergeOfDeath = false;
global.earnedAgainstTheClock = false;
global.earnedZoneScoreBeginner = false;
global.earnedZoneScoreIntermediate = false;
global.earnedZoneScoreVeteran = false;
global.earnedSignatureSpecialist = false;
global.earnedBringerOfDeath = false;
global.earnedNewYorkCityBossDefeatedT3 = false;
global.earnedChicagoCityBossDefeatedT3 = false;
global.earnedLondonCityBossDefeatedT3 = false;
global.earnedLasVegasCityBossDefeatedT3 = false;
global.earnedOverpowered = false;
global.earnedTheHarbinger = false;
global.earnedQuickTimeEventsMaster = false;

//Global loot tracking (Any changes here must be in loot-tables too)
global.lootWindowLastNumberInArray = -1;
global.lootTableChooseType = -1;
global.lootTableAmountInTableMin = -1;
global.lootTableAmountInTableMax = -1;

//--- Rocks - 7
global.amber_rock = 0;
global.basalt_rock = 0;
global.rainbow_rock = 0;
global.volcanic_rock = 0;
global.tourmaline_rock = 0;
global.obsidian_rock = 0;
global.mystery_stone = 0;

//---Powders - 5
global.black_metal_powder = 0;
global.silver_metal_powder = 0;
global.steel_metal_powder = 0;
global.gold_metal_powder = 0;
global.gun_powder = 0;

//---Ingots & Ores - 4
global.iron_ingot = 0;
global.gold_ingot = 0;
global.copper_ingot = 0;
global.silver_ore = 0;

//---Gems - 6
global.diamond_gem = 0;
global.crystal_gem = 0;
global.emerald_gem = 0;
global.ruby_gem = 0;
global.fluorite_gem = 0;
global.pearl_gem = 0;

//---Gears - 3
global.bronze_gear = 0;
global.iron_gear = 0;
global.gold_gear = 0;

//---Technical - 4 
global.high_voltage_battery = 0;
global.ic_chip = 0;
global.printed_circuit_board = 0;
global.magnet_technical = 0;

//---Building - 8
global.steel = 0;
global.timber = 0;
global.glass_pane = 0;
global.spring = 0;
global.screw = 0;
global.wire = 0;
global.chain = 0;
global.lead_weight = 0;

//---Natural - 5
global.quality_leather = 0;
global.plastic = 0;
global.silk_cloth = 0;
global.rubber = 0;
global.linen_cloth = 0;

//---Fibers - 2
global.ballistic_fiber = 0;
global.carbon_fiber = 0;

//---Collectable - 2
global.magazine = 0;
global.supply_crate = 0;

//---Blueprints - 19
global.blueprintsDiscovered = 0;
global.pistolBlueprint = 0;
global.pistolBlueprintFound = false;
global.shotgunBlueprint = 0;
global.shotgunBlueprintFound = false;
global.sniperBlueprint = 0;
global.sniperBlueprintFound = false;
global.lmgBlueprint = 0;
global.lmgBlueprintFound = false;
global.throwablesBlueprint = 0;
global.throwablesBlueprintFound = false;
global.meleeBlueprint = 0;
global.meleeBlueprintFound = false;
global.submachineBlueprint = 0;
global.submachineBlueprintFound = false;
global.automaticBlueprint = 0;
global.automaticBlueprintFound = false;
global.minesBlueprint = 0;
global.minesBlueprintFound = false;

//---Misc
global.lootNumberString = "";

//Trips Loadout
global.rentCostSlotsTotals = 0;
global.tripOneActive = false;
global.tripTwoActive = false;
global.tripThreeActive = false;

//Blackmarket Melee - 15
global.ballbusterQuantity = 0;
global.baseballBatQuantity = 0;
global.baseballBatSpikedQuantity = 0;
global.basicMalletRubberQuantity = 0;
global.basicSledgehammerQuantity = 0;
global.basicWrenchQuantity = 0;
global.bigAxeQuantity = 0;
global.bigSignQuantity = 0;
global.standardKnifeQuantity = 0;
global.sturdyKnifeQuantity = 0;
global.golfClubQuantity = 0;
global.boneHooksQuantity = 0;
global.bunsenBurnerMixedChemicalsQuantity = 0;
global.curvedNailboardQuantity = 0;
global.handmadeBoneClubQuantity = 0;

//Blackmarket Automatics - 11
global.ak47Quantity = 0;
global.sigSauerRifleQuantity = 0;
global.m4RifleQuantity = 0;
global.krinkovRifleQuantity = 0;
global.asVal9RifleQuantity = 0;
global.combineRifleQuantity = 0;
global.augRifleQuantity = 0;
global.ash12TarkovRifleQuantity = 0;
global.astw2CarbineRifleQuantity = 0;
global.tommyRifleQuantity = 0;
global.tombstoneRifleQuantity = 0;

//Blackmarket Pistols & LMGs - 7
global.pythonQuantity = 0;
global.dragonPistolQuantity = 0;
global.makarovPistolQuantity = 0;
global.n9500PistolQuantity = 0;
global.lmg2000Quantity = 0;
global.hks2050Quantity = 0;
global.m60Quantity = 0;

//Blackmarket Shotguns - 7
global.combat_shotgunQuantity = 0;
global.sawed_off_shotgunQuantity = 0;
global.assault_shotgunQuantity = 0;
global.long_range_shotgunQuantity = 0;
global.spez_12_shotgunQuantity = 0;
global.standard_hunting_rifleQuantity = 0;
global.powerful_hunting_rifleQuantity = 0;

//Blackmarket Snipers - 5
global.pipe_sniperQuantity = 0;
global.bolt_action_sniperQuantity = 0;
global.tactical_sniperQuantity = 0;
global.marksman_sniperQuantity = 0;
global.destroyer_aw308Quantity = 0;

//Blackmarket Throwables - 8
global.c4Quantity = 0;
global.grenadeQuantity = 0;
global.motolov_cocktailsQuantity = 0;
global.landmineQuantity = 0;
global.claymoreQuantity = 0;
global.gas_bombQuantity = 0;
global.shurikenQuantity = 0;
global.throwing_knifeQuantity = 0;

//Blackmarket Armour - 13
global.stealth_suitQuantity = 0;
global.military_suitQuantity = 0;
global.jugganaut_suitQuantity = 0;
global.power_armourQuantity = 0;
global.prototype_suitQuantity = 0;
global.three_piece_suit_normalQuantity = 0;
global.three_piece_suit_kevlarQuantity = 0;
global.flak_jacketQuantity = 0;
global.radiation_suitQuantity = 0;
global.cloaking_deviceQuantity = 0;
global.luxury_leather_gold_jacketQuantity = 0;
global.spider_silk_armourQuantity = 0;
global.handmade_bone_armourQuantity = 0;

//Blackmarket Vehicles - 16
global.freight_liner_vanQuantity = 0;
global.transporter_vanQuantity = 0;
global.limousineQuantity = 0;
global.pickup_truckQuantity = 0;
global.sports_suvQuantity = 0;
global.modern_suvQuantity = 0;
global.sports_sedanQuantity = 0;
global.offroad4x4_weaponisedQuantity = 0;
global.military8x8_truckQuantity = 0;
global.private_jetQuantity = 0;
global.f16_fighter_jetQuantity = 0;
global.apache_helicopterQuantity = 0;
global.chinook_helicopterQuantity = 0;
global.hearseQuantity = 0;
global.dcm_deluxo_coupeQuantity = 0;
global.ghost_motorcycleQuantity = 0;

//reforged pack
global.v_22_predator_helicopterQuantity = 0;

//Blackmarket Agents
global.slotPrice = 100000;
global.clanParts = 0;
global.agencyTotalSuccessBoost = 0;
global.agencyTotalLootOdds = 0;
global.tripsStorageMaximum = 100; //Max limit of items you can carry
global.tripsStorageHeld = 0;    //Sum of items carried
global.agencyLevelHub = 0;
global.agencyLevelHubPoints = 25;
global.agencyTotalFeeEquippedFinalise = 0;
global.agencyTotalEquipped = 0;
 
global.slot1Status = "EMPTY";
global.slot1AgentFee = 10000;
global.slot1AgentLevel = 0;
global.slot1AgentHappy = 0;
global.slot1AgentEff = 0;
global.slot1AgentLootOdds = 0;

global.slot2Status= "EMPTY";
global.slot2AgentFee = 10000;
global.slot2AgentLevel = 0;
global.slot2AgentHappy = 0;
global.slot2AgentEff = 0;
global.slot2AgentLootOdds = 0;

global.slot3Status= "EMPTY";
global.slot3AgentFee= 10000;
global.slot3AgentLevel = 0;
global.slot3AgentHappy = 0;
global.slot3AgentEff = 0;
global.slot3AgentLootOdds = 0;

global.slot4Status = "EMPTY";
global.slot4AgentFee= 50000;
global.slot4AgentLevel = 0;
global.slot4AgentHappy = 0;
global.slot4AgentEff = 0;
global.slot4AgentLootOdds = 0;

global.slot5Status = "EMPTY";
global.slot5AgentFee= 50000;
global.slot5AgentLevel = 0;
global.slot5AgentHappy = 0;
global.slot5AgentEff = 0;
global.slot5AgentLootOdds = 0;

global.slot6Status = "EMPTY";
global.slot6AgentFee= 50000;
global.slot6AgentLevel = 0;
global.slot6AgentHappy = 0;
global.slot6AgentEff = 0;
global.slot6AgentLootOdds = 0;

global.slot7Status = "EMPTY";
global.slot7AgentFee= 100000;
global.slot7AgentLevel = 0;
global.slot7AgentHappy = 0;
global.slot7AgentEff = 0;
global.slot7AgentLootOdds = 0;

global.slot8Status = "EMPTY";
global.slot8AgentFee= 100000;
global.slot8AgentLevel = 0;
global.slot8AgentHappy = 0;
global.slot8AgentEff = 0;
global.slot8AgentLootOdds = 0;

global.slot9Status = "EMPTY";
global.slot9AgentFee= 100000;
global.slot9AgentLevel = 0;
global.slot9AgentHappy = 0;
global.slot9AgentEff = 0;
global.slot9AgentLootOdds = 0;

global.slot10Status = "EMPTY";
global.slot10AgentFee= 100000;
global.slot10AgentLevel = 0;
global.slot10AgentHappy = 0;
global.slot10AgentEff = 0;
global.slot10AgentLootOdds = 0;

global.slot11Status = "EMPTY";
global.slot11AgentFee= 100000;
global.slot11AgentLevel = 0;
global.slot11AgentHappy = 0;
global.slot11AgentEff = 0;
global.slot11AgentLootOdds = 0;

global.slot12Status = "EMPTY";
global.slot12AgentFee= 100000;
global.slot12AgentLevel = 0;
global.slot12AgentHappy = 0;
global.slot12AgentEff = 0;
global.slot12AgentLootOdds = 0;

global.slot13Status = "EMPTY";
global.slot13AgentFee= 150000;
global.slot13AgentLevel = 0;
global.slot13AgentHappy = 0;
global.slot13AgentEff = 0;
global.slot13AgentLootOdds = 0;

global.slot14Status= "EMPTY";
global.slot14AgentFee= 150000;
global.slot14AgentLevel = 0;
global.slot14AgentHappy = 0;
global.slot14AgentEff = 0;
global.slot14AgentLootOdds = 0;

global.slot15Status= "EMPTY";
global.slot15AgentFee= 150000;
global.slot15AgentLevel = 0;
global.slot15AgentHappy = 0;
global.slot15AgentEff = 0;
global.slot15AgentLootOdds = 0;

global.slot16Status= "EMPTY";
global.slot16AgentFee= 200000;
global.slot16AgentLevel = 0;
global.slot16AgentHappy = 0;
global.slot16AgentEff = 0;
global.slot16AgentLootOdds = 0;

global.slot17Status= "EMPTY";
global.slot17AgentFee= 200000;
global.slot17AgentLevel = 0;
global.slot17AgentHappy = 0;
global.slot17AgentEff = 0;
global.slot17AgentLootOdds = 0;

global.slot18Status= "EMPTY";
global.slot18AgentFee= 200000;
global.slot18AgentLevel = 0;
global.slot18AgentHappy = 0;
global.slot18AgentEff = 0;
global.slot18AgentLootOdds = 0;
global.enableAutoCollect = 0;

//ACTIVATES ALARMS DON'T TOUCH
alarm[0] = room_speed * 1;
