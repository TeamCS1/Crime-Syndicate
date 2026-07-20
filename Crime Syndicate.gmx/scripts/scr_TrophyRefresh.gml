//Deletes old trophy data

show_message("Warning: This is a very delicate command. Can cause save data and user profile corruption. The process will begin shortly, and will restart once finished.")

if file_exists("profile0.ini")
   {
        file_delete("profile0.ini");
   }
   
if file_exists("profile1.ini")
   {
        file_delete("profile1.ini");
   }
   
if file_exists("profile2.ini")
   {
        file_delete("profile2.ini");
   }
   
if file_exists("profile3.ini")
   {
        file_delete("profile3.ini");
   }
   
if file_exists("profile4.ini")
   {
        file_delete("profile4.ini");
   }
   
if file_exists("profile5.ini")
   {
        file_delete("profile5.ini");
   }
   
if file_exists("profile6.ini")
   {
        file_delete("profile6.ini");
   }
   
if file_exists("profile7.ini")
   {
        file_delete("profile7.ini");
   }
   
if file_exists("profile8.ini")
   {
        file_delete("profile8.ini");
   }
   
if file_exists("profile9.ini")
   {
        file_delete("profile9.ini");
   }
   
if file_exists("profile10.ini")
   {
        file_delete("profile10.ini");
   }
   
if file_exists("profile11.ini")
   {
        file_delete("profile11.ini");
   }
   
if file_exists("profile12.ini")
   {
        file_delete("profile12.ini");
   }
   
if file_exists("profile13.ini")
   {
        file_delete("profile13.ini");
   }
   
if file_exists("profile14.ini")
   {
        file_delete("profile14.ini");
   }
   
if file_exists("profile15.ini")
   {
        file_delete("profile15.ini");
   }
   
if file_exists("profile16.ini")
   {
        file_delete("profile16.ini");
   }

if file_exists("profile17.ini")
   {
        file_delete("profile17.ini");
   }

if file_exists("profile18.ini")
   {
        file_delete("profile18.ini");
   }

if file_exists("profile19.ini")
   {
        file_delete("profile19.ini");
   }

if file_exists("profile20.ini")
   {
        file_delete("profile20.ini");
   }

if file_exists("profile21.ini")
   {
        file_delete("profile21.ini");
   }
if file_exists("profile22.ini")
   {
        file_delete("profile22.ini");
   }
if file_exists("profile23.ini")
   {
        file_delete("profile23.ini");
   }
if file_exists("profile24.ini")
   {
        file_delete("profile24.ini");
   }
if file_exists("profile25.ini")
   {
        file_delete("profile25.ini");
   }
if file_exists("profile26.ini")
   {
        file_delete("profile26.ini");
   }
if file_exists("profile27.ini")
   {
        file_delete("profile27.ini");
   }
if file_exists("profile28.ini")
   {
        file_delete("profile28.ini");
   }
if file_exists("profile29.ini")
   {
        file_delete("profile29.ini");
   }
 
show_message("User Profiles and Trophy Data have been reset, do not reset the application. Some Trophies may not be re-earned by this process.")
   
ini_open("savedata.ini");

ini_write_real("Setup", "firstTimeSetupTrophies", 0);

ini_write_real("Trophies", "earnedNewYorkKingTrophy", 0);
ini_write_real("Trophies", "earnedAllNighterTrophy", 0);
ini_write_real("Trophies", "earnedMaxedOutTrophy", 0);
ini_write_real("Trophies", "earnedJobsCompleted750", 0);
ini_write_real("Trophies", "trophiesEarned", 0);
ini_write_real("Trophies", "earnedJobsCompletedTwoHundredFifty", 0);
ini_write_real("Trophies", "earnedJobsCompleted", 0);
ini_write_real("Trophies", "earnedRealEstateStartup", 0);
ini_write_real("Trophies", "earnedJobsCompleted2500", 0);
ini_write_real("Trophies", "earnedChampionJockey", 0);
ini_write_real("Trophies", "earnedFightOrFlight", 0);
ini_write_real("Trophies", "earnedVergeOfDeath", 0);
ini_write_real("Trophies", "earnedAgainstTheClock", 0);
ini_write_real("Trophies", "earnedZoneScoreBeginner", 0);
ini_write_real("Trophies", "earnedZoneScoreIntermediate", 0);
ini_write_real("Trophies", "earnedZoneScoreVeteran", 0);
ini_write_real("Trophies", "earnedSignatureSpecialist", 0);
ini_write_real("Trophies", "earnedBringerOfDeath", 0);
ini_write_real("Trophies", "earnedNewYorkCityBossDefeatedT3", 0);
ini_write_real("Trophies", "earnedChicagoCityBossDefeatedT3", 0);
ini_write_real("Trophies", "earnedLondonCityBossDefeatedT3", 0);
ini_write_real("Trophies", "earnedLasVegasCityBossDefeatedT3", 0);
ini_write_real("Trophies", "earnedOverpowered", 0);
ini_write_real("Trophies", "earnedTheHarbinger", 0);
ini_write_real("Trophies", "earnedQuickTimeEventsMaster", 0);

ini_close();

ini_open("savedata.ini");

    ini_write_real("Setup", "firstTimeSetupTrophies", 1);

ini_close();

show_message("Trophy List Refresh completed. Once the game has been restarted, please view the Trophy Menu for 10 seconds. Then load your game saved data. Then wait up to a minute.")
game_restart();
show_debug_message("Trophy Refresh Script Finished")

