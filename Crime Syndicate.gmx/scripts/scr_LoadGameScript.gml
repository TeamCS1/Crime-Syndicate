if os_browser == browser_not_a_browser
{
    //essentials creates globals, which the ini files appends to.
    scr_log_message(scr_DebugDate() + "Function Call: scr_essentials()");
    scr_essentials();

    ini_open("savedata.ini");

    global.roomBeforePrevious = ini_read_real("savegame", "roomBeforePrevious", 0)

    //Tracks Counters - 14
    global.moneyCount = ini_read_real("savegame", "moneyCount", 0);
    global.moneySuffix = ini_read_string("savegame", "moneySuffix", "");
    global.moneyCountMillion = ini_read_real("savegame", "moneyCountMillion", 0);
    global.moneyCountBillion = ini_read_real("savegame", "moneyCountBillion", 0);
    global.moneyCountTrillion = ini_read_real("savegame", "moneyCountTrillion", 0);
    global.healthCount = ini_read_real("savegame", "healthCount", 100);
    global.healthCountMax = ini_read_real("savegame", "healthCountMax", 100);
    global.healthInceaseRate = ini_read_real("savegame", "healthInceaseRate", 0.1);
    global.staminaCount = ini_read_real("savegame", "staminaCount", 10);
    global.staminaCountMax = ini_read_real("savegame", "staminaCountMax", 10);
    global.staminaInceaseRate = ini_read_real("savegame", "staminaInceaseRate", 0.1);
    global.attackDamage = ini_read_real("savegame", "attackDamage", 0);
    global.defenceProtection = ini_read_real("savegame", "defenceProtection", 0);
    global.skillPointsRemaining = ini_read_real("savegame", "skillPointsRemaining", 0);

    //Checker - 1
    global.currentCity = ini_read_string("Checkers", "currentCity", "NEW_YORK");
    
    //Options menu - 11
    global.showStatusBar = ini_read_real("options", "showStatusBar",1) 
    global.hitmenTimer = ini_read_real("options", "hitmenTimer", 2) 
    global.resolutionSizeText = ini_read_string("options", "resolutionSizeText", "1920x1080") 
    global.trophySetInterval = ini_read_real("options", "trophySetInterval", 5) 
    global.trophyPopupDelay = ini_read_real("options", "trophyPopupDelay", 5) 
    global.themeType = ini_read_real("options", "themeType", 1) 
    global.fpsMode = ini_read_real("options", "fpsMode", 60) 
    global.rLevel = ini_read_real("options", "rLevel", 0) 
    global.gLevel = ini_read_real("options", "gLevel", 0)
    global.bLevel = ini_read_real("options", "bLevel", 0)
    global.spriteTinting = ini_read_real("options", "spriteTinting", 0)
    
    //Tracks statistics - 7
    global.gameCompletion = ini_read_real("statistics", "gameCompletion", 0);
    global.moneyEarned = ini_read_real("statistics", "moneyEarned", 0);
    global.jobsCompleted = ini_read_real("statistics", "jobsCompleted", 0);
    global.hitmenKilled = ini_read_real("statistics", "hitmenKilled", 0);
    global.timesInHospital = ini_read_real("statistics", "timesInHospital", 0);
    global.tripsTaken = ini_read_real("statistics", "tripsTaken", 0);
    global.skillPointsEarned = ini_read_real("statistics", "skillPointsEarned", 0);

    //Tracks Trophies (do not do this for saving)
    global.earnedJobsCompleted = ini_read_real("Trophies", "earnedJobsCompleted", false);
    global.earnedJobsCompletedTwoHundredFifty = ini_read_real("Trophies", "earnedJobsCompletedTwoHundredFifty", false);
    global.earnedJobsCompleted750 = ini_read_real("Trophies", "earnedJobsCompleted750", false);
    global.earnedJobsCompleted2500 = ini_read_real("Trophies", "earnedJobsCompleted2500", false);
    global.earnedMaxedOutTrophy = ini_read_real("Trophies", "earnedMaxedOutTrophy", false);
    global.earnedRealEstateStartup = ini_read_real("Trophies", "earnedRealEstateStartup", false);
    global.earnedAllNighterTrophy = ini_read_real("Trophies", "earnedAllNighterTrophy", false);
    global.earnedNewYorkKingTrophy = ini_read_real("Trophies", "earnedNewYorkKingTrophy", false);
    global.earnedChicagoKingTrophy = ini_read_real("Trophies", "earnedChicagoKingTrophy", false);
    global.earnedLondonKingTrophy = ini_read_real("Trophies", "earnedLondonKingTrophy", false);
    global.earnedLasVegasKingTrophy = ini_read_real("Trophies", "earnedLasVegasKingTrophy", false);
    global.earnedChampionJockey = ini_read_real("Trophies", "earnedChampionJockey", false);
    global.earnedFightOrFlight = ini_read_real("Trophies", "earnedFightOrFlight", false);
    global.earnedVergeOfDeath = ini_read_real("Trophies", "earnedVergeOfDeath", false);
    global.earnedBringerOfDeath = ini_read_real("Trophies", "earnedBringerOfDeath", false);
    global.earnedAgainstTheClock = ini_read_real("Trophies", "earnedAgainstTheClock", false);
    global.earnedZoneScoreBeginner = ini_read_real("Trophies", "earnedZoneScoreBeginner", false);
    global.earnedZoneScoreIntermediate = ini_read_real("Trophies", "earnedZoneScoreIntermediate", false);
    global.earnedZoneScoreVeteran = ini_read_real("Trophies", "earnedZoneScoreVeteran", false);
    global.earnedSignatureSpecialist = ini_read_real("Trophies", "earnedSignatureSpecialist", false);
    global.earnedNewYorkCityBossDefeatedT3 = ini_read_real("Trophies", "earnedNewYorkCityBossDefeatedT3", false);
    global.earnedChicagoCityBossDefeatedT3 = ini_read_real("Trophies", "earnedChicagoCityBossDefeatedT3", false);
    global.earnedLondonCityBossDefeatedT3 = ini_read_real("Trophies", "earnedLondonCityBossDefeatedT3", false);
    global.earnedLasVegasCityBossDefeatedT3 = ini_read_real("Trophies", "earnedLasVegasCityBossDefeatedT3", false);
    global.earnedOverpowered = ini_read_real("Trophies", "earnedOverpowered", false);
    global.earnedTheHarbinger = ini_read_real("Trophies", "earnedTheHarbinger", false);
    global.earnedQuickTimeEventsMaster = ini_read_real("Trophies", "earnedQuickTimeEventsMaster", false);

    //Tracks job completion
    global.newYorkCompletion = ini_read_real("savegame", "newYorkCompletion", 0);
    global.chicagoCompletion = ini_read_real("savegame", "chicagoCompletion", 0);
    global.londonCompletion = ini_read_real("savegame", "londonCompletion", 0);
    global.lasVegasCompletion = ini_read_real("savegame", "lasVegasCompletion", 0);

    //Leveling up
    global.currentPlayerLevel = ini_read_real("level", "currentPlayerLevel", 0);
    global.currentXP = ini_read_real("level", "currentXP", 0);
    global.currentXPNeededToLevelUp = ini_read_real("level", "currentXPNeededToLevelUp", 10);

    //new york job bars read
    global.jobOneBarNewYork = ini_read_real("savegame", "jobOneBarNewYork", 0);
    global.jobTwoBarNewYork = ini_read_real("savegame", "jobTwoBarNewYork", 0);
    global.jobThreeBarNewYork = ini_read_real("savegame", "jobThreeBarNewYork", 0);
    global.jobFourBarNewYork = ini_read_real("savegame", "jobFourBarNewYork", 0);
    global.jobFiveBarNewYork = ini_read_real("savegame", "jobFiveBarNewYork", 0);
    global.jobSixBarNewYork = ini_read_real("savegame", "jobSixBarNewYork", 0);
    global.jobSevenBarNewYork = ini_read_real("savegame", "jobSevenBarNewYork", 0);
    global.jobEightBarNewYork = ini_read_real("savegame", "jobEightBarNewYork", 0);
    global.jobNineBarNewYork = ini_read_real("savegame", "jobNineBarNewYork", 0);
    global.jobTenBarNewYork = ini_read_real("savegame", "jobTenBarNewYork", 0);

    //new york ranks
    global.jobOneBarRankNewYork = ini_read_real("ranks", "jobOneBarRankNewYork", 0);
    global.jobTwoBarRankNewYork = ini_read_real("ranks", "jobTwoBarRankNewYork", 0);
    global.jobThreeBarRankNewYork = ini_read_real("ranks", "jobThreeBarRankNewYork", 0);
    global.jobFourBarRankNewYork = ini_read_real("ranks", "jobFourBarRankNewYork", 0);
    global.jobFiveBarRankNewYork = ini_read_real("ranks", "jobFiveBarRankNewYork", 0);
    global.jobSixBarRankNewYork = ini_read_real("ranks", "jobSixBarRankNewYork", 0);
    global.jobSevenBarRankNewYork = ini_read_real("ranks", "jobSevenBarRankNewYork", 0);
    global.jobEightBarRankNewYork = ini_read_real("ranks", "jobEightBarRankNewYork", 0);
    global.jobNineBarRankNewYork = ini_read_real("ranks", "jobNineBarRankNewYork", 0);
    global.jobTenBarRankNewYork = ini_read_real("ranks", "jobTenBarRankNewYork", 0);

    //chicago job bars read
    global.jobOneBarChicago = ini_read_real("savegame", "jobOneBarChicago", 0);
    global.jobTwoBarChicago = ini_read_real("savegame", "jobTwoBarChicago", 0);
    global.jobThreeBarChicago = ini_read_real("savegame", "jobThreeBarChicago", 0);
    global.jobFourBarChicago = ini_read_real("savegame", "jobFourBarChicago", 0);
    global.jobFiveBarChicago = ini_read_real("savegame", "jobFiveBarChicago", 0);
    global.jobSixBarChicago = ini_read_real("savegame", "jobSixBarChicago", 0);
    global.jobSevenBarChicago = ini_read_real("savegame", "jobSevenBarChicago", 0);
    global.jobEightBarChicago = ini_read_real("savegame", "jobEightBarChicago", 0);
    global.jobNineBarChicago = ini_read_real("savegame", "jobNineBarChicago", 0);
    global.jobTenBarChicago = ini_read_real("savegame", "jobTenBarChicago", 0);

    //chicago ranks
    global.jobOneBarRankChicago = ini_read_real("ranks", "jobOneBarRankChicago", 0);
    global.jobTwoBarRankChicago = ini_read_real("ranks", "jobTwoBarRankChicago", 0);
    global.jobThreeBarRankChicago = ini_read_real("ranks", "jobThreeBarRankChicago", 0);
    global.jobFourBarRankChicago = ini_read_real("ranks", "jobFourBarRankChicago", 0);
    global.jobFiveBarRankChicago = ini_read_real("ranks", "jobFiveBarRankChicago", 0);
    global.jobSixBarRankChicago = ini_read_real("ranks", "jobSixBarRankChicago", 0);
    global.jobSevenBarRankChicago = ini_read_real("ranks", "jobSevenBarRankChicago", 0);
    global.jobEightBarRankChicago = ini_read_real("ranks", "jobEightBarRankChicago", 0);
    global.jobNineBarRankChicago = ini_read_real("ranks", "jobNineBarRankChicago", 0);
    global.jobTenBarRankChicago = ini_read_real("ranks", "jobTenBarRankChicago", 0);

    //London Bars Read
    global.jobOneBarLondon = ini_read_real("savegame", "jobOneBarLondon", 0);
    global.jobTwoBarLondon = ini_read_real("savegame", "jobTwoBarLondon", 0);
    global.jobThreeBarLondon = ini_read_real("savegame", "jobThreeBarLondon", 0);
    global.jobFourBarLondon = ini_read_real("savegame", "jobFourBarLondon", 0);
    global.jobFiveBarLondon = ini_read_real("savegame", "jobFiveBarLondon", 0);
    global.jobSixBarLondon = ini_read_real("savegame", "jobSixBarLondon", 0);
    global.jobSevenBarLondon = ini_read_real("savegame", "jobSevenBarLondon", 0);
    global.jobEightBarLondon = ini_read_real("savegame", "jobEightBarLondon", 0);
    global.jobNineBarLondon = ini_read_real("savegame", "jobNineBarLondon", 0);
    global.jobTenBarLondon = ini_read_real("savegame", "jobTenBarLondon", 0);

    //London Ranks Read
    global.jobOneBarRankLondon = ini_read_real("ranks", "jobOneBarRankLondon", 0);
    global.jobTwoBarRankLondon = ini_read_real("ranks", "jobTwoBarRankLondon", 0);
    global.jobThreeBarRankLondon = ini_read_real("ranks", "jobThreeBarRankLondon", 0);
    global.jobFourBarRankLondon = ini_read_real("ranks", "jobFourBarRankLondon", 0);
    global.jobFiveBarRankLondon = ini_read_real("ranks", "jobFiveBarRankLondon", 0);
    global.jobSixBarRankLondon = ini_read_real("ranks", "jobSixBarRankLondon", 0);
    global.jobSevenBarRankLondon = ini_read_real("ranks", "jobSevenBarRankLondon", 0);
    global.jobEightBarRankLondon = ini_read_real("ranks", "jobEightBarRankLondon", 0);
    global.jobNineBarRankLondon = ini_read_real("ranks", "jobNineBarRankLondon", 0);
    global.jobTenBarRankLondon = ini_read_real("ranks", "jobTenBarRankLondon", 0);

    //Las Vegas Bars Read
    global.jobOneBarLasVegas = ini_read_real("savegame", "jobOneBarLasVegas", 0);
    global.jobTwoBarLasVegas = ini_read_real("savegame", "jobTwoBarLasVegas", 0);
    global.jobThreeBarLasVegas = ini_read_real("savegame", "jobThreeBarLasVegas", 0);
    global.jobFourBarLasVegas = ini_read_real("savegame", "jobFourBarLasVegas", 0);
    global.jobFiveBarLasVegas = ini_read_real("savegame", "jobFiveBarLasVegas", 0);
    global.jobSixBarLasVegas = ini_read_real("savegame", "jobSixBarLasVegas", 0);
    global.jobSevenBarLasVegas = ini_read_real("savegame", "jobSevenBarLasVegas", 0);
    global.jobEightBarLasVegas = ini_read_real("savegame", "jobEightBarLasVegas", 0);
    global.jobNineBarLasVegas = ini_read_real("savegame", "jobNineBarLasVegas", 0);
    global.jobTenBarLasVegas = ini_read_real("savegame", "jobTenBarLasVegas", 0);

    //Las Vegas Ranks Read
    global.jobOneBarRankLasVegas = ini_read_real("ranks", "jobOneBarRankLasVegas", 0);
    global.jobTwoBarRankLasVegas = ini_read_real("ranks", "jobTwoBarRankLasVegas", 0);
    global.jobThreeBarRankLasVegas = ini_read_real("ranks", "jobThreeBarRankLasVegas", 0);
    global.jobFourBarRankLasVegas = ini_read_real("ranks", "jobFourBarRankLasVegas", 0);
    global.jobFiveBarRankLasVegas = ini_read_real("ranks", "jobFiveBarRankLasVegas", 0);
    global.jobSixBarRankLasVegas = ini_read_real("ranks", "jobSixBarRankLasVegas", 0);
    global.jobSevenBarRankLasVegas = ini_read_real("ranks", "jobSevenBarRankLasVegas", 0);
    global.jobEightBarRankLasVegas = ini_read_real("ranks", "jobEightBarRankLasVegas", 0);
    global.jobNineBarRankLasVegas = ini_read_real("ranks", "jobNineBarRankLasVegas", 0);
    global.jobTenBarRankLasVegas = ini_read_real("ranks", "jobTenBarRankLasVegas", 0);

    //PROPERTIES ONLY - 7

    global.propertiesOwner = ini_read_string("properties", "propertiesOwner", "Player");
    global.propertiesLastEntry = ini_read_string("properties", "propertiesLastEntry", "Player");
    global.totalPropertiesIncome = ini_read_real("properties", "totalPropertiesIncome", 0);

    global.totalPropertiesIncomeMillion = ini_read_real("properties", "totalPropertiesIncomeMillion", 0);
    global.totalPropertiesIncomeBillion = ini_read_real("properties", "totalPropertiesIncomeBillion", 0);
    global.totalPropertiesIncomeTrillion = ini_read_real("properties", "totalPropertiesIncomeTrillion", 0);

    global.totalPropertiesIncomeSuffix = ini_read_string("properties", "totalPropertiesIncomeSuffix", "");

    //PROPERTIES QUANTITIES
    global.propertiesUninspiringGarageQuantityOwned = ini_read_real("propertiesQuantities", "propertiesUninspiringGarageQuantityOwned", 0);
    global.propertiesArchaicDinerQuantityOwned = ini_read_real("propertiesQuantities", "propertiesArchaicDinerQuantityOwned", 0);
    global.propertiesTaxiDepotQuantityOwned = ini_read_real("propertiesQuantities", "propertiesTaxiDepotQuantityOwned", 0);
    global.propertiesChinaShopQuantityOwned = ini_read_real("propertiesQuantities", "propertiesChinaShopQuantityOwned", 0);
    global.propertiesMiaNightClubQuantityOwned = ini_read_real("propertiesQuantities", "propertiesMiaNightClubQuantityOwned", 0);
    global.propertiesKenjiCasinoQuantityOwned = ini_read_real("propertiesQuantities", "propertiesKenjiCasinoQuantityOwned", 0);
    global.propertiesHighriseBuildingQuantityOwned = ini_read_real("propertiesQuantities", "propertiesHighriseBuildingQuantityOwned", 0);
    global.propertiesGrandCabaretClubQuantityOwned = ini_read_real("propertiesQuantities", "propertiesGrandCabaretClubQuantityOwned", 0);
    global.propertiesDecadePenthouseQuantityOwned = ini_read_real("propertiesQuantities", "propertiesDecadePenthouseQuantityOwned", 0);

    //BLACKMARKET PROPERTIES
    global.blackmarketProperty1QuantityOwned = ini_read_real("propertiesQuantities", "blackmarketProperty1QuantityOwned", 0); 
    global.blackmarketProperty2QuantityOwned = ini_read_real("propertiesQuantities", "blackmarketProperty2QuantityOwned", 0);
    global.blackmarketProperty3QuantityOwned = ini_read_real("propertiesQuantities", "blackmarketProperty3QuantityOwned", 0);
    global.blackmarketProperty4QuantityOwned = ini_read_real("propertiesQuantities", "blackmarketProperty4QuantityOwned", 0);
    global.blackmarketProperty5QuantityOwned = ini_read_real("propertiesQuantities", "blackmarketProperty5QuantityOwned", 0);
    global.blackmarketProperty6QuantityOwned = ini_read_real("propertiesQuantities", "blackmarketProperty6QuantityOwned", 0);
    global.blackmarketProperty7QuantityOwned = ini_read_real("propertiesQuantities", "blackmarketProperty7QuantityOwned", 0);
    global.blackmarketProperty8QuantityOwned = ini_read_real("propertiesQuantities", "blackmarketProperty8QuantityOwned", 0);
    global.blackmarketProperty9QuantityOwned = ini_read_real("propertiesQuantities", "blackmarketProperty9QuantityOwned", 0);
    global.blackmarketProperty10QuantityOwned = ini_read_real("propertiesQuantities", "blackmarketProperty10QuantityOwned", 0);
    global.blackmarketProperty11QuantityOwned = ini_read_real("propertiesQuantities", "blackmarketProperty11QuantityOwned", 0);
    global.blackmarketProperty12QuantityOwned = ini_read_real("propertiesQuantities", "blackmarketProperty12QuantityOwned", 0);
    global.blackmarketProperty13QuantityOwned = ini_read_real("propertiesQuantities", "blackmarketProperty13QuantityOwned", 0);
    
    //CITY BOSSES
    global.qtePerformed = ini_read_real("citybosses", "qtePerformed", 0);

    //Blackmarket Group
    global.slotPrice = ini_read_real("blackmarket", "slotPrice", 10000);
    global.clanParts = ini_read_real("blackmarket", "clanParts", 0);
    global.tripsStorageMaximum = ini_read_real("blackmarket", "tripsStorageMaximum", 100);
    global.agencyLevelHub = ini_read_real("blackmarket", "global.agencyLevelHub", 0);
    global.agencyLevelHubPoints = ini_read_real("blackmarket", "agencyLevelHubPoints", 25);

    global.slot1Status = ini_read_string("blackmarket", "slot1Status", "EMPTY");
    global.slot1AgentFee = ini_read_real("blackmarket", "slot1AgentFee", 10000);
    global.slot1AgentLevel = ini_read_real("blackmarket", "slot1AgentLevel", 1);
    global.slot1AgentHappy = ini_read_real("blackmarket", "slot1AgentHappy", 80);
    global.slot1AgentEff = ini_read_real("blackmarket", "slot1AgentEff", 80);
    global.slot1AgentLootOdds = ini_read_real("blackmarket", "slot1AgentLootOdds", 50);

    global.slot2Status = ini_read_string("blackmarket", "slot2Status", "EMPTY");
    global.slot2AgentFee = ini_read_real("blackmarket", "slot2AgentFee", 10000);
    global.slot2AgentLevel = ini_read_real("blackmarket", "slot2AgentLevel", 1);
    global.slot2AgentHappy = ini_read_real("blackmarket", "slot2AgentHappy", 80);
    global.slot2AgentEff = ini_read_real("blackmarket", "slot2AgentEff", 80);
    global.slot2AgentLootOdds = ini_read_real("blackmarket", "slot2AgentLootOdds", 50);

    global.slot3Status = ini_read_string("blackmarket", "slot3Status", "EMPTY");
    global.slot3AgentFee = ini_read_real("blackmarket", "slot3AgentFee", 10000);
    global.slot3AgentLevel = ini_read_real("blackmarket", "slot3AgentLevel", 1);
    global.slot3AgentHappy = ini_read_real("blackmarket", "slot3AgentHappy", 80);
    global.slot3AgentEff = ini_read_real("blackmarket", "slot3AgentEff", 80);
    global.slot3AgentLootOdds = ini_read_real("blackmarket", "slot3AgentLootOdds", 50);

    global.slot4Status = ini_read_string("blackmarket", "slot4Status", "EMPTY");
    global.slot4AgentFee = ini_read_real("blackmarket", "slot4AgentFee", 10000);
    global.slot4AgentLevel = ini_read_real("blackmarket", "slot4AgentLevel", 1);
    global.slot4AgentHappy = ini_read_real("blackmarket", "slot4AgentHappy", 80);
    global.slot4AgentEff = ini_read_real("blackmarket", "slot4AgentEff", 80);
    global.slot4AgentLootOdds = ini_read_real("blackmarket", "slot4AgentLootOdds", 50);

    global.slot5Status = ini_read_string("blackmarket", "slot5Status", "EMPTY");
    global.slot5AgentFee = ini_read_real("blackmarket", "slot5AgentFee", 10000);
    global.slot5AgentLevel = ini_read_real("blackmarket", "slot5AgentLevel", 1);
    global.slot5AgentHappy = ini_read_real("blackmarket", "slot5AgentHappy", 80);
    global.slot5AgentEff = ini_read_real("blackmarket", "slot5AgentEff", 80);
    global.slot5AgentLootOdds = ini_read_real("blackmarket", "slot5AgentLootOdds", 50);

    global.slot6Status = ini_read_string("blackmarket", "slot6Status", "EMPTY");
    global.slot6AgentFee = ini_read_real("blackmarket", "slot6AgentFee", 10000);
    global.slot6AgentLevel = ini_read_real("blackmarket", "slot6AgentLevel", 1);
    global.slot6AgentHappy = ini_read_real("blackmarket", "slot6AgentHappy", 80);
    global.slot6AgentEff = ini_read_real("blackmarket", "slot6AgentEff", 80);
    global.slot6AgentLootOdds = ini_read_real("blackmarket", "slot6AgentLootOdds", 50);

    global.slot7Status = ini_read_string("blackmarket", "slot7Status", "EMPTY");
    global.slot7AgentFee = ini_read_real("blackmarket", "slot7AgentFee", 10000);
    global.slot7AgentLevel = ini_read_real("blackmarket", "slot7AgentLevel", 1);
    global.slot7AgentHappy = ini_read_real("blackmarket", "slot7AgentHappy", 80);
    global.slot7AgentEff = ini_read_real("blackmarket", "slot7AgentEff", 80);
    global.slot7AgentLootOdds = ini_read_real("blackmarket", "slot7AgentLootOdds", 50);

    global.slot8Status = ini_read_string("blackmarket", "slot8Status", "EMPTY");
    global.slot8AgentFee = ini_read_real("blackmarket", "slot8AgentFee", 10000);
    global.slot8AgentLevel = ini_read_real("blackmarket", "slot8AgentLevel", 1);
    global.slot8AgentHappy = ini_read_real("blackmarket", "slot8AgentHappy", 80);
    global.slot8AgentEff = ini_read_real("blackmarket", "slot8AgentEff", 80);
    global.slot8AgentLootOdds = ini_read_real("blackmarket", "slot8AgentLootOdds", 50);

    global.slot9Status = ini_read_string("blackmarket", "slot9Status", "EMPTY");
    global.slot9AgentFee = ini_read_real("blackmarket", "slot9AgentFee", 10000);
    global.slot9AgentLevel = ini_read_real("blackmarket", "slot9AgentLevel", 1);
    global.slot9AgentHappy = ini_read_real("blackmarket", "slot9AgentHappy", 80);
    global.slot9AgentEff = ini_read_real("blackmarket", "slot9AgentEff", 80);
    global.slot9AgentLootOdds = ini_read_real("blackmarket", "slot9AgentLootOdds", 50);

    global.slot10Status = ini_read_string("blackmarket", "slot10Status", "EMPTY");
    global.slot10AgentFee = ini_read_real("blackmarket", "slot10AgentFee", 10000);
    global.slot10AgentLevel = ini_read_real("blackmarket", "slot10AgentLevel", 1);
    global.slot10AgentHappy = ini_read_real("blackmarket", "slot10AgentHappy", 80);
    global.slot10AgentEff = ini_read_real("blackmarket", "slot10AgentEff", 80);
    global.slot10AgentLootOdds = ini_read_real("blackmarket", "slot10AgentLootOdds", 50);

    global.slot11Status = ini_read_string("blackmarket", "slot11Status", "EMPTY");
    global.slot11AgentFee = ini_read_real("blackmarket", "slot11AgentFee", 10000);
    global.slot11AgentLevel = ini_read_real("blackmarket", "slot11AgentLevel", 1);
    global.slot11AgentHappy = ini_read_real("blackmarket", "slot11AgentHappy", 80);
    global.slot11AgentEff = ini_read_real("blackmarket", "slot11AgentEff", 80);
    global.slot11AgentLootOdds = ini_read_real("blackmarket", "slot11AgentLootOdds", 50);

    global.slot12Status = ini_read_string("blackmarket", "slot12Status", "EMPTY");
    global.slot12AgentFee = ini_read_real("blackmarket", "slot12AgentFee", 10000);
    global.slot12AgentLevel = ini_read_real("blackmarket", "slot12AgentLevel", 1);
    global.slot12AgentHappy = ini_read_real("blackmarket", "slot12AgentHappy", 80);
    global.slot12AgentEff = ini_read_real("blackmarket", "slot12AgentEff", 80);
    global.slot12AgentLootOdds = ini_read_real("blackmarket", "slot12AgentLootOdds", 50);

    global.slot13Status = ini_read_string("blackmarket", "slot13Status", "EMPTY");
    global.slot13AgentFee = ini_read_real("blackmarket", "slot13AgentFee", 10000);
    global.slot13AgentLevel = ini_read_real("blackmarket", "slot13AgentLevel", 1);
    global.slot13AgentHappy = ini_read_real("blackmarket", "slot13AgentHappy", 80);
    global.slot13AgentEff = ini_read_real("blackmarket", "slot13AgentEff", 80);
    global.slot13AgentLootOdds = ini_read_real("blackmarket", "slot13AgentLootOdds", 50);

    global.slot14Status = ini_read_string("blackmarket", "slot14Status", "EMPTY");
    global.slot14AgentFee = ini_read_real("blackmarket", "slot14AgentFee", 10000);
    global.slot14AgentLevel = ini_read_real("blackmarket", "slot14AgentLevel", 1);
    global.slot14AgentHappy = ini_read_real("blackmarket", "slot14AgentHappy", 80);
    global.slot14AgentEff = ini_read_real("blackmarket", "slot14AgentEff", 80);
    global.slot14AgentLootOdds = ini_read_real("blackmarket", "slot14AgentLootOdds", 50);

    global.slot15Status = ini_read_string("blackmarket", "slot15Status", "EMPTY");
    global.slot15AgentFee = ini_read_real("blackmarket", "slot15AgentFee", 10000);
    global.slot15AgentLevel = ini_read_real("blackmarket", "slot15AgentLevel", 1);
    global.slot15AgentHappy = ini_read_real("blackmarket", "slot15AgentHappy", 80);
    global.slot15AgentEff = ini_read_real("blackmarket", "slot15AgentEff", 80);
    global.slot15AgentLootOdds = ini_read_real("blackmarket", "slot15AgentLootOdds", 50);

    global.slot16Status = ini_read_string("blackmarket", "slot16Status", "EMPTY");
    global.slot16AgentFee = ini_read_real("blackmarket", "slot16AgentFee", 10000);
    global.slot16AgentLevel = ini_read_real("blackmarket", "slot16AgentLevel", 1);
    global.slot16AgentHappy = ini_read_real("blackmarket", "slot16AgentHappy", 80);
    global.slot16AgentEff = ini_read_real("blackmarket", "slot16AgentEff", 80);
    global.slot16AgentLootOdds = ini_read_real("blackmarket", "slot16AgentLootOdds", 50);

    global.slot17Status = ini_read_string("blackmarket", "slot17Status", "EMPTY");
    global.slot17AgentFee = ini_read_real("blackmarket", "slot17AgentFee", 10000);
    global.slot17AgentLevel = ini_read_real("blackmarket", "slot17AgentLevel", 1);
    global.slot17AgentHappy = ini_read_real("blackmarket", "slot17AgentHappy", 80);
    global.slot17AgentEff = ini_read_real("blackmarket", "slot17AgentEff", 80);
    global.slot17AgentLootOdds = ini_read_real("blackmarket", "slot17AgentLootOdds", 50);

    global.slot18Status = ini_read_string("blackmarket", "slot18Status", "EMPTY");
    global.slot18AgentFee = ini_read_real("blackmarket", "slot18AgentFee", 10000);
    global.slot18AgentLevel = ini_read_real("blackmarket", "slot18AgentLevel", 1);
    global.slot18AgentHappy = ini_read_real("blackmarket", "slot18AgentHappy", 80);
    global.slot18AgentEff = ini_read_real("blackmarket", "slot18AgentEff", 80);
    global.slot18AgentLootOdds = ini_read_real("blackmarket", "slot18AgentLootOdds", 50);

    //--- Rocks - 7
    global.amber_rock = ini_read_real("blackmarket", "amber_rock", 0);
    global.basalt_rock = ini_read_real("blackmarket", "basalt_rock", 0);
    global.rainbow_rock = ini_read_real("blackmarket", "rainbow_rock", 0);
    global.volcanic_rock = ini_read_real("blackmarket", "volcanic_rock", 0);
    global.tourmaline_rock = ini_read_real("blackmarket", "tourmaline_rock", 0);
    global.obsidian_rock = ini_read_real("blackmarket", "obsidian_rock", 0);
    global.mystery_stone = ini_read_real("blackmarket", "mystery_stone", 0);

    //---Powders - 5
    global.black_metal_powder = ini_read_real("blackmarket", "black_metal_powder", 0);
    global.silver_metal_powder = ini_read_real("blackmarket", "silver_metal_powder", 0);
    global.steel_metal_powder = ini_read_real("blackmarket", "steel_metal_powder", 0);
    global.gold_metal_powder = ini_read_real("blackmarket", "gold_metal_powder", 0);
    global.gun_powder = ini_read_real("blackmarket", "gun_powder", 0);

    //---Ingots & Ores - 4
    global.iron_ingot = ini_read_real("blackmarket", "iron_ingot", 0);
    global.gold_ingot = ini_read_real("blackmarket", "gold_ingot", 0);
    global.copper_ingot = ini_read_real("blackmarket", "copper_ingot", 0);
    global.silver_ore = ini_read_real("blackmarket", "silver_ore", 0);

    //---Gems - 6
    global.diamond_gem = ini_read_real("blackmarket", "diamond_gem", 0);
    global.crystal_gem = ini_read_real("blackmarket", "crystal_gem", 0);
    global.emerald_gem = ini_read_real("blackmarket", "emerald_gem", 0);
    global.ruby_gem = ini_read_real("blackmarket", "ruby_gem", 0);
    global.fluorite_gem = ini_read_real("blackmarket", "fluorite_gem", 0);
    global.pearl_gem = ini_read_real("blackmarket", "pearl_gem", 0);

    //---Gears - 3
    global.bronze_gear = ini_read_real("blackmarket", "bronze_gear", 0);
    global.iron_gear = ini_read_real("blackmarket", "iron_gear", 0);
    global.gold_gear = ini_read_real("blackmarket", "gold_gear", 0);

    //---Technical - 4 
    global.high_voltage_battery = ini_read_real("blackmarket", "high_voltage_battery", 0);
    global.ic_chip = ini_read_real("blackmarket", "ic_chip", 0);
    global.printed_circuit_board = ini_read_real("blackmarket", "printed_circuit_board", 0);
    global.magnet_technical = ini_read_real("blackmarket", "magnet_technical", 0);

    //---Building - 8
    global.steel = ini_read_real("blackmarket", "steel", 0);
    global.timber = ini_read_real("blackmarket", "timber", 0);
    global.glass_pane = ini_read_real("blackmarket", "glass_pane", 0);
    global.spring = ini_read_real("blackmarket", "spring", 0);
    global.screw = ini_read_real("blackmarket", "screw", 0);
    global.wire = ini_read_real("blackmarket", "wire", 0);
    global.chain = ini_read_real("blackmarket", "chain", 0);
    global.lead_weight = ini_read_real("blackmarket", "lead_weight", 0);

    //---Natural - 5
    global.quality_leather = ini_read_real("blackmarket", "quality_leather", 0);
    global.plastic = ini_read_real("blackmarket", "plastic", 0);
    global.silk_cloth = ini_read_real("blackmarket", "silk_cloth", 0);
    global.rubber = ini_read_real("blackmarket", "rubber", 0);
    global.linen_cloth = ini_read_real("blackmarket", "linen_cloth", 0);

    //---Fibers - 2
    global.ballistic_fiber = ini_read_real("blackmarket", "ballistic_fiber", 0);
    global.carbon_fiber = ini_read_real("blackmarket", "carbon_fiber", 0);

    //---Collectable - 2
    global.magazine = ini_read_real("blackmarket", "magazine", 0);
    global.supply_crate = ini_read_real("blackmarket", "supply_crate", 0);

    //---Blueprints - 18
    global.pistolBlueprint = ini_read_real("blackmarket", "pistolBlueprint", 0);
    global.pistolBlueprintFound = ini_read_real("blackmarket", "pistolBlueprintFound", 0);
    global.shotgunBlueprint = ini_read_real("blackmarket", "shotgunBlueprint", 0);
    global.shotgunBlueprintFound = ini_read_real("blackmarket", "shotgunBlueprintFound", 0);
    global.sniperBlueprint = ini_read_real("blackmarket", "sniperBlueprint", 0);
    global.sniperBlueprintFound = ini_read_real("blackmarket", "sniperBlueprintFound", 0);   
    global.lmgBlueprint = ini_read_real("blackmarket", "lmgBlueprint", 0);
    global.lmgBlueprintFound = ini_read_real("blackmarket", "lmgBlueprintFound", 0);    
    global.throwablesBlueprint = ini_read_real("blackmarket", "throwablesBlueprint", 0);
    global.throwablesBlueprintFound = ini_read_real("blackmarket", "throwablesBlueprintFound", 0);    
    global.meleeBlueprint = ini_read_real("blackmarket", "meleeBlueprint", 0);
    global.meleeBlueprintFound = ini_read_real("blackmarket", "meleeBlueprintFound", 0);   
    global.submachineBlueprint = ini_read_real("blackmarket", "submachineBlueprint", 0);
    global.submachineBlueprintFound = ini_read_real("blackmarket", "submachineBlueprintFound", 0);    
    global.automaticBlueprint = ini_read_real("blackmarket", "automaticBlueprint", 0);
    global.automaticBlueprintFound = ini_read_real("blackmarket", "automaticBlueprintFound", 0);   
    global.minesBlueprint = ini_read_real("blackmarket", "minesBlueprint", 0);
    global.minesBlueprintFound = ini_read_real("blackmarket", "minesBlueprintFound", 0);

    //END OF READING >>>
    ini_close();   
}

if os_browser == browser_not_a_browser //if its windows then
{
    room_goto(rm_prologue_world_map);
    scr_log_message(scr_DebugDate() + "Scene Switch to: rm_prologue_world_map");

    scr_log_message(scr_DebugDate() + "LOAD: Loading Complete.");
    show_debug_message("OUTPUT: Loading complete.");
    show_message("OUTPUT: Load Complete.");
}

else
{
    //Init temp variables
    var importRaw, baseDecode, decipher;

    //user input
    importRaw = get_string("Load Importer: Please paste your save!: ", "");

    //string length checks whether valid or not
    if (string_length(importRaw) > 8)
    {
        //uncipher
        decipher = scr_vigenere_ascii(importRaw,string(game_id),0);
    
        baseDecode = base64_decode(decipher);
        
        //essentials creates globals, which the ini files appends to.
        scr_log_message(scr_DebugDate() + "Function Call: scr_essentials()");
        scr_essentials();
    
        //Split using delimitter
        var impArray;
        impArray = scr_explode(",", baseDecode);
        i = 0;
        //Apply variables
        global.roomBeforePrevious = real(impArray[i]);
        i++;        
        global.moneyCount = real(impArray[i]);
        i++;
        global.moneySuffix = string(impArray[i]);
        i++;
        global.moneyCountMillion = real(impArray[i]);
        i++;
        global.moneyCountBillion = real(impArray[i]);
        i++;
        global.moneyCountTrillion = real(impArray[i]);
        i++;
        global.healthCount = real(impArray[i]);
        i++;
        global.healthCountMax = real(impArray[i]);
        i++;
        global.healthInceaseRate = real(impArray[i]);
        i++;
        global.staminaCount = real(impArray[i]);
        i++;
        global.staminaCountMax = real(impArray[i]);
        i++;
        global.staminaInceaseRate = real(impArray[i]);
        i++;
        global.attackDamage = real(impArray[i]);
        i++;
        global.defenceProtection = real(impArray[i]);
        i++;
        global.skillPointsRemaining = real(impArray[i]);
        i++;
        
        //Tracks Checkers
        global.currentCity = string(impArray[i]);
        i++;
        
        //OPTIONS MENU - 13
        global.showStatusBar = string(impArray[i]);
        i++;
        global.hitmenTimer = string(impArray[i]);
        i++;
        global.resolutionSizeText = string(impArray[i]);
        i++;
        global.trophySetInterval = string(impArray[i]);
        i++;
        global.trophyPopupDelay = string(impArray[i]);
        i++;
        global.themeType = string(impArray[i]);
        i++;
        global.fpsMode = string(impArray[i]);
        i++;
        global.rLevel = string(impArray[i]);
        i++;
        global.gLevel = string(impArray[i]);
        i++;
        global.bLevel = string(impArray[i]);
        i++;
        global.spriteTintingR = string(impArray[i]);
        i++;
        global.spriteTintingG = string(impArray[i]);
        i++;
        global.spriteTintingB = string(impArray[i]);
        i++;
         
        //Tracks statistics - 7
        global.gameCompletion = real(impArray[i]);
        i++;
        global.moneyEarned = real(impArray[i]);
        i++;
        global.jobsCompleted = real(impArray[i]);
        i++;
        global.hitmenKilled = real(impArray[i]);
        i++;
        global.timesInHospital = real(impArray[i]);
        i++;
        global.tripsTaken = real(impArray[i])
        i++;
        global.skillPointsEarned = real(impArray[i]);
        i++;
        
        //Tracks job completion - 4
        global.newYorkCompletion = real(impArray[i]);
        i++;
        global.chicagoCompletion = real(impArray[i]);
        i++;
        global.londonCompletion = real(impArray[i]);
        i++;
        global.lasVegasCompletion = real(impArray[i]);
        i++;

        //Leveling up - 3
        global.currentPlayerLevel = real(impArray[i]);
        i++;
        global.currentXP = real(impArray[i]);
        i++;
        global.currentXPNeededToLevelUp = real(impArray[i]);
        i++;

        //new york job bars read
        global.jobOneBarNewYork = real(impArray[i]);
        i++;
        global.jobTwoBarNewYork = real(impArray[i]);
        i++;
        global.jobThreeBarNewYork = real(impArray[i]);
        i++;
        global.jobFourBarNewYork = real(impArray[i]);
        i++;
        global.jobFiveBarNewYork = real(impArray[i]);
        i++;
        global.jobSixBarNewYork = real(impArray[i]);
        i++;
        global.jobSevenBarNewYork = real(impArray[i]);
        i++;
        global.jobEightBarNewYork = real(impArray[i]);
        i++;
        global.jobNineBarNewYork = real(impArray[i]);
        i++;
        global.jobTenBarNewYork = real(impArray[i]);
        i++;

        global.jobOneBarRankNewYork = real(impArray[i]);
        i++;
        global.jobTwoBarRankNewYork = real(impArray[i]);
        i++;
        global.jobThreeBarRankNewYork = real(impArray[i]);
        i++;
        global.jobFourBarRankNewYork = real(impArray[i]);
        i++;
        global.jobFiveBarRankNewYork = real(impArray[i]);
        i++;
        global.jobSixBarRankNewYork = real(impArray[i]);
        i++;
        global.jobSevenBarRankNewYork = real(impArray[i]);
        i++;
        global.jobEightBarRankNewYork = real(impArray[i]);
        i++;
        global.jobNineBarRankNewYork = real(impArray[i]);
        i++;
        global.jobTenBarRankNewYork = real(impArray[i]);
        i++;
        global.jobOneBarChicago = real(impArray[i]);
        i++;
        global.jobTwoBarChicago = real(impArray[i]);
        i++;
        global.jobThreeBarChicago = real(impArray[i]);
        i++;
        global.jobFourBarChicago = real(impArray[i]);
        i++;
        global.jobFiveBarChicago = real(impArray[i]);
        i++;
        global.jobSixBarChicago = real(impArray[i]);
        i++;
        global.jobSevenBarChicago = real(impArray[i]);
        i++;
        global.jobEightBarChicago = real(impArray[i]);
        i++;
        global.jobNineBarChicago = real(impArray[i]);
        i++;
        global.jobTenBarChicago = real(impArray[i]);
        i++;

        //chicago ranks
        global.jobOneBarRankChicago = real(impArray[i]);
        i++;
        global.jobTwoBarRankChicago = real(impArray[i]);
        i++;
        global.jobThreeBarRankChicago = real(impArray[i]);
        i++;
        global.jobFourBarRankChicago = real(impArray[i]);
        i++;
        global.jobFiveBarRankChicago = real(impArray[i]);
        i++;
        global.jobSixBarRankChicago = real(impArray[i]);
        i++;
        global.jobSevenBarRankChicago = real(impArray[i]);
        i++;
        global.jobEightBarRankChicago = real(impArray[i]);
        i++;
        global.jobNineBarRankChicago = real(impArray[i]);
        i++;
        global.jobTenBarRankChicago = real(impArray[i]);
        i++;

        //London Bars Read - 10
        global.jobOneBarLondon = real(impArray[i]);
        i++;
        global.jobTwoBarLondon = real(impArray[i]);
        i++;
        global.jobThreeBarLondon = real(impArray[i]);
        i++;
        global.jobFourBarLondon = real(impArray[i]);
        i++;
        global.jobFiveBarLondon = real(impArray[i]);
        i++;
        global.jobSixBarLondon = real(impArray[i]);
        i++;
        global.jobSevenBarLondon = real(impArray[i]);
        i++;
        global.jobEightBarLondon = real(impArray[i]);
        i++;
        global.jobNineBarLondon = real(impArray[i]);
        i++;
        global.jobTenBarLondon = real(impArray[i]);
        i++;

        //London Ranks Read - 10
        global.jobOneBarRankLondon = real(impArray[i]);
        i++;
        global.jobTwoBarRankLondon = real(impArray[i]);
        i++;
        global.jobThreeBarRankLondon = real(impArray[i]);
        i++;
        global.jobFourBarRankLondon = real(impArray[i]);
        i++;
        global.jobFiveBarRankLondon = real(impArray[i]);
        i++;
        global.jobSixBarRankLondon = real(impArray[i]);
        i++;
        global.jobSevenBarRankLondon = real(impArray[i]);
        i++;
        global.jobEightBarRankLondon = real(impArray[i]);
        i++;
        global.jobNineBarRankLondon = real(impArray[i]);
        i++;
        global.jobTenBarRankLondon = real(impArray[i]);
        i++;

        //Las Vegas Bars Read
        global.jobOneBarLasVegas = real(impArray[i]);
        i++;
        global.jobTwoBarLasVegas = real(impArray[i]);
        i++;
        global.jobThreeBarLasVegas = real(impArray[i]);
        i++;
        global.jobFourBarLasVegas = real(impArray[i]);
        i++;
        global.jobFiveBarLasVegas = real(impArray[i]);
        i++;
        global.jobSixBarLasVegas = real(impArray[i]);
        i++;
        global.jobSevenBarLasVegas = real(impArray[i]);
        i++;
        global.jobEightBarLasVegas = real(impArray[i]);
        i++;
        global.jobNineBarLasVegas = real(impArray[i]);
        i++;
        global.jobTenBarLasVegas = real(impArray[i]);
        i++;

        //Las Vegas Ranks Read
        global.jobOneBarRankLasVegas = real(impArray[i]);
        i++;
        global.jobTwoBarRankLasVegas = real(impArray[i]);
        i++;
        global.jobThreeBarRankLasVegas = real(impArray[i]);
        i++;
        global.jobFourBarRankLasVegas = real(impArray[i]);
        i++;
        global.jobFiveBarRankLasVegas = real(impArray[i]);
        i++;
        global.jobSixBarRankLasVegas = real(impArray[i]);
        i++;
        global.jobSevenBarRankLasVegas = real(impArray[i]);
        i++;
        global.jobEightBarRankLasVegas = real(impArray[i]);
        i++;
        global.jobNineBarRankLasVegas = real(impArray[i]);
        i++;
        global.jobTenBarRankLasVegas = real(impArray[i]);
        i++;

        //PROPERTIES ONLY
        global.propertiesOwner = string(impArray[i]);
        i++;
        global.propertiesLastEntry = string(impArray[i]);
        i++;
        global.totalPropertiesIncome = real(impArray[i]);
        i++;

        global.totalPropertiesIncomeMillion = real(impArray[i]);
        i++;
        global.totalPropertiesIncomeBillion = real(impArray[i]);
        i++;
        global.totalPropertiesIncomeTrillion = real(impArray[i]);
        i++;
        global.totalPropertiesIncomeSuffix = string(impArray[i]);
        i++;

        //PROPERTIES QUANTITIES - 9
        global.propertiesUninspiringGarageQuantityOwned = real(impArray[i]);
        i++;
        global.propertiesArchaicDinerQuantityOwned = real(impArray[i]);
        i++;
        global.propertiesTaxiDepotQuantityOwned = real(impArray[i]);
        i++;
        global.propertiesChinaShopQuantityOwned = real(impArray[i]);
        i++;
        global.propertiesMiaNightClubQuantityOwned = real(impArray[i]);
        i++;
        global.propertiesKenjiCasinoQuantityOwned = real(impArray[i]);
        i++;
        global.propertiesHighriseBuildingQuantityOwned = real(impArray[i]);
        i++;
        global.propertiesGrandCabaretClubQuantityOwned = real(impArray[i]);
        i++;
        global.propertiesDecadePenthouseQuantityOwned = real(impArray[i]);
        i++;

        //BLACKMARKET PROPERTIES - 13
        global.blackmarketProperty1QuantityOwned = real(impArray[i]); 
        i++;
        global.blackmarketProperty2QuantityOwned = real(impArray[i]);
        i++;
        global.blackmarketProperty3QuantityOwned = real(impArray[i]);
        i++;
        global.blackmarketProperty4QuantityOwned = real(impArray[i]);
        i++;
        global.blackmarketProperty5QuantityOwned = real(impArray[i]);
        i++;
        global.blackmarketProperty6QuantityOwned = real(impArray[i]);
        i++;
        global.blackmarketProperty7QuantityOwned = real(impArray[i]);
        i++;
        global.blackmarketProperty8QuantityOwned = real(impArray[i]);
        i++;
        global.blackmarketProperty9QuantityOwned = real(impArray[i]);
        i++;
        global.blackmarketProperty10QuantityOwned = real(impArray[i]);
        i++;
        global.blackmarketProperty11QuantityOwned = real(impArray[i]);
        i++;
        global.blackmarketProperty12QuantityOwned = real(impArray[i]);
        i++;
        global.blackmarketProperty13QuantityOwned = real(impArray[i]);
        i++;
        
        //CITY BOSSES
        global.qtePerformed = real(impArray[i]);
        i++;

        //Blackmarket Group
        global.slotPrice = real(impArray[i]);
        i++;
        global.clanParts = real(impArray[i]);
        i++;
        global.tripsStorageMaximum = real(impArray[i]);
        i++;
        global.agencyLevelHub = real(impArray[i]);
        i++;
        global.agencyLevelHubPoints = real(impArray[i]);
        i++;

        global.slot1Status = string(impArray[i]);
        i++;
        global.slot1AgentFee = real(impArray[i]);
        i++;
        global.slot1AgentLevel = real(impArray[i]);
        i++;
        global.slot1AgentHappy = real(impArray[i]);
        i++;
        global.slot1AgentEff = real(impArray[i]);
        i++;
        global.slot1AgentLootOdds = real(impArray[i]);
        i++;

        global.slot2Status = string(impArray[i]);
        i++;
        global.slot2AgentFee = real(impArray[i]);
        i++;
        global.slot2AgentLevel = real(impArray[i]);
        i++;
        global.slot2AgentHappy = real(impArray[i]);
        i++;
        global.slot2AgentEff = real(impArray[i]);
        i++;
        global.slot2AgentLootOdds = real(impArray[i]);
        i++;

        global.slot3Status = string(impArray[i]);
        i++;
        global.slot3AgentFee = real(impArray[i]);
        i++;
        global.slot3AgentLevel = real(impArray[i]);
        i++;
        global.slot3AgentHappy = real(impArray[i]);
        i++;
        global.slot3AgentEff = real(impArray[i]);
        i++;
        global.slot3AgentLootOdds = real(impArray[i]);
        i++;

        global.slot4Status = string(impArray[i]);
        i++;
        global.slot4AgentFee = real(impArray[i]);
        i++;
        global.slot4AgentLevel = real(impArray[i]);
        i++;
        global.slot4AgentHappy = real(impArray[i]);
        i++;
        global.slot4AgentEff = real(impArray[i]);
        i++;
        global.slot4AgentLootOdds = real(impArray[i]);
        i++;

        global.slot5Status = string(impArray[i]);
        i++;
        global.slot5AgentFee = real(impArray[i]);
        i++;
        global.slot5AgentLevel = real(impArray[i]);
        i++;
        global.slot5AgentHappy = real(impArray[i]);
        i++;
        global.slot5AgentEff = real(impArray[i]);
        i++;
        global.slot5AgentLootOdds = real(impArray[i]);
        i++;
        
        global.slot6Status = string(impArray[i]);
        i++;
        global.slot6AgentFee = real(impArray[i]);
        i++;
        global.slot6AgentLevel = real(impArray[i]);
        i++;
        global.slot6AgentHappy = real(impArray[i]);
        i++;
        global.slot6AgentEff = real(impArray[i]);
        i++;
        global.slot6AgentLootOdds = real(impArray[i]);
        i++;

        global.slot7Status = string(impArray[i]);
        i++;
        global.slot7AgentFee = real(impArray[i]);
        i++;
        global.slot7AgentLevel = real(impArray[i]);
        i++;
        global.slot7AgentHappy = real(impArray[i]);
        i++;
        global.slot7AgentEff = real(impArray[i]);
        i++;
        global.slot7AgentLootOdds = real(impArray[i]);
        i++;
        
        global.slot8Status = string(impArray[i]);
        i++;
        global.slot8AgentFee = real(impArray[i]);
        i++;
        global.slot8AgentLevel = real(impArray[i]);
        i++;
        global.slot8AgentHappy = real(impArray[i]);
        i++;
        global.slot8AgentEff = real(impArray[i]);
        i++;
        global.slot8AgentLootOdds = real(impArray[i]);
        i++;
        
        global.slot9Status = string(impArray[i]);
        i++;
        global.slot9AgentFee = real(impArray[i]);
        i++;
        global.slot9AgentLevel = real(impArray[i]);
        i++;
        global.slot9AgentHappy = real(impArray[i]);
        i++;
        global.slot9AgentEff = real(impArray[i]);
        i++;
        global.slot9AgentLootOdds = real(impArray[i]);
        i++;

        global.slot10Status = string(impArray[i]);
        i++;
        global.slot10AgentFee = real(impArray[i]);
        i++;
        global.slot10AgentLevel = real(impArray[i]);
        i++;
        global.slot10AgentHappy = real(impArray[i]);
        i++;
        global.slot10AgentEff = real(impArray[i]);
        i++;
        global.slot10AgentLootOdds = real(impArray[i]);
        i++;

        global.slot11Status = string(impArray[i]);
        i++;
        global.slot11AgentFee = real(impArray[i]);
        i++;
        global.slot11AgentLevel = real(impArray[i]);
        i++;
        global.slot11AgentHappy = real(impArray[i]);
        i++;
        global.slot11AgentEff = real(impArray[i]);
        i++;
        global.slot11AgentLootOdds = real(impArray[i]);
        i++;

        global.slot12Status = string(impArray[i]);
        i++;
        global.slot12AgentFee = real(impArray[i]);
        i++;
        global.slot12AgentLevel = real(impArray[i]);
        i++;
        global.slot12AgentHappy = real(impArray[i]);
        i++;
        global.slot12AgentEff = real(impArray[i]);
        i++;
        global.slot12AgentLootOdds = real(impArray[i]);
        i++;

        global.slot13Status = string(impArray[i]);
        i++;
        global.slot13AgentFee = real(impArray[i]);
        i++;
        global.slot13AgentLevel = real(impArray[i]);
        i++;
        global.slot13AgentHappy = real(impArray[i]);
        i++;
        global.slot13AgentEff = real(impArray[i]);
        i++;
        global.slot13AgentLootOdds = real(impArray[i]);
        i++;

        global.slot14Status = string(impArray[i]);
        i++;
        global.slot14AgentFee = real(impArray[i]);
        i++;
        global.slot14AgentLevel = real(impArray[i]);
        i++;
        global.slot14AgentHappy = real(impArray[i]);
        i++;
        global.slot14AgentEff = real(impArray[i]);
        i++;
        global.slot14AgentLootOdds = real(impArray[i]);
        i++;

        global.slot15Status = string(impArray[i]);
        i++;
        global.slot15AgentFee = real(impArray[i]);
        i++;
        global.slot15AgentLevel = real(impArray[i]);
        i++;
        global.slot15AgentHappy = real(impArray[i]);
        i++;
        global.slot15AgentEff = real(impArray[i]);
        i++;
        global.slot15AgentLootOdds = real(impArray[i]);
        i++;

        global.slot16Status = string(impArray[i]);
        i++;
        global.slot16AgentFee = real(impArray[i]);
        i++;
        global.slot16AgentLevel = real(impArray[i]);
        i++;
        global.slot16AgentHappy = real(impArray[i]);
        i++;
        global.slot16AgentEff = real(impArray[i]);
        i++;
        global.slot16AgentLootOdds = real(impArray[i]);
        i++;

        global.slot17Status = string(impArray[i]);
        i++;
        global.slot17AgentFee = real(impArray[i]);
        i++;
        global.slot17AgentLevel = real(impArray[i]);
        i++;
        global.slot17AgentHappy = real(impArray[i]);
        i++;
        global.slot17AgentEff = real(impArray[i]);
        i++;
        global.slot17AgentLootOdds = real(impArray[i]);
        i++;

        global.slot18Status = string(impArray[i]);
        i++;
        global.slot18AgentFee = real(impArray[i]);
        i++;
        global.slot18AgentLevel = real(impArray[i]);
        i++;
        global.slot18AgentHappy = real(impArray[i]);
        i++;
        global.slot18AgentEff = real(impArray[i]);
        i++;
        global.slot18AgentLootOdds = real(impArray[i]);
        i++;

        //--- Rocks - 7
        global.amber_rock = real(impArray[i]);
        i++;
        global.basalt_rock = real(impArray[i]);
        i++;
        global.rainbow_rock = real(impArray[i]);
        i++;
        global.volcanic_rock = real(impArray[i]);
        i++;
        global.tourmaline_rock = real(impArray[i]);
        i++;
        global.obsidian_rock = real(impArray[i]);
        i++;
        global.mystery_stone = real(impArray[i]);
        i++;

        //---Powders - 5
        global.black_metal_powder = real(impArray[i]);
        i++;
        global.silver_metal_powder = real(impArray[i]);
        i++;
        global.steel_metal_powder = real(impArray[i]);
        i++;
        global.gold_metal_powder = real(impArray[i]);
        i++;
        global.gun_powder = real(impArray[i]);
        i++;

        //---Ingots & Ores - 4
        global.iron_ingot = real(impArray[i]);
        i++;
        global.gold_ingot = real(impArray[i]);
        i++;
        global.copper_ingot = real(impArray[i]);
        i++;
        global.silver_ore = real(impArray[i]);
        i++;

        //---Gems - 6
        global.diamond_gem = real(impArray[i]);
        i++;
        global.crystal_gem = real(impArray[i]);
        i++;
        global.emerald_gem = real(impArray[i]);
        i++;
        global.ruby_gem = real(impArray[i]);
        i++;
        global.fluorite_gem = real(impArray[i]);
        i++;
        global.pearl_gem = real(impArray[i]);
        i++;

        //---Gears - 3
        global.bronze_gear = real(impArray[i]);
        i++;
        global.iron_gear = real(impArray[i]);
        i++;
        global.gold_gear = real(impArray[i]);
        i++;

        //---Technical - 4 
        global.high_voltage_battery = real(impArray[i]);
        i++;
        global.ic_chip = real(impArray[i]);
        i++;
        global.printed_circuit_board = real(impArray[i]);
        i++;
        global.magnet_technical = real(impArray[i]);
        i++;

        //---Building - 8
        global.steel = real(impArray[i]);
        i++;
        global.timber = real(impArray[i]);
        i++;
        global.glass_pane = real(impArray[i]);
        i++;
        global.spring = real(impArray[i]);
        i++;
        global.screw = real(impArray[i]);
        i++;
        global.wire = real(impArray[i]);
        i++;
        global.chain = real(impArray[i]);
        i++;
        global.lead_weight = real(impArray[i]);
        i++;

        //---Natural - 5
        global.quality_leather = real(impArray[i]);
        i++;
        global.plastic = real(impArray[i]);
        i++;
        global.silk_cloth = real(impArray[i]);
        i++;
        global.rubber = real(impArray[i]);
        i++;
        global.linen_cloth = real(impArray[i]);
        i++;

        //---Fibers - 2
        global.ballistic_fiber = real(impArray[i]);
        i++;
        global.carbon_fiber = real(impArray[i]);
        i++;

        //---Collectable - 2
        global.magazine = real(impArray[i]);
        i++;
        global.supply_crate = real(impArray[i]);
        i++;

        //---Blueprints - 18
        global.pistolBlueprint = real(impArray[i]);
        i++;
        global.pistolBlueprintFound = real(impArray[i]);
        i++;
        global.shotgunBlueprint = real(impArray[i]);
        i++;
        global.shotgunBlueprintFound = real(impArray[i]);
        i++;
        global.sniperBlueprint = real(impArray[i]);
        i++;
        global.sniperBlueprintFound = real(impArray[i]);
        i++;
        global.lmgBlueprint = real(impArray[i]);
        i++;
        global.lmgBlueprintFound = real(impArray[i]);
        i++;
        global.throwablesBlueprint = real(impArray[i]);
        i++;
        global.throwablesBlueprintFound = real(impArray[i]);
        i++;
        global.meleeBlueprint = real(impArray[i]);
        i++;
        global.meleeBlueprintFound = real(impArray[i]);
        i++;
        global.submachineBlueprint = real(impArray[i]);
        i++;
        global.submachineBlueprintFound = real(impArray[i]);
        i++;
        global.automaticBlueprint = real(impArray[i]);
        i++;
        global.automaticBlueprintFound = real(impArray[i]);
        i++;
        global.minesBlueprint = real(impArray[i]);
        i++;
        global.minesBlueprintFound = real(impArray[i]); 
        
        room_goto(rm_prologue_world_map);
        scr_log_message(scr_DebugDate() + "Scene Switch to: rm_prologue_world_map");

        scr_log_message(scr_DebugDate() + "LOAD: Loading Complete.");
        show_debug_message("OUTPUT: Loading complete.");
        show_message("OUTPUT: Load Complete.");     
    }
    
    else
    {
        show_error("Error: Please paste the exported text, and do not leave blank.",false)
    }
}
