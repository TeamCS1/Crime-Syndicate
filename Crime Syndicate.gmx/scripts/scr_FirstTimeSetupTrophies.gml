///This section updates the titles of each trophy for first time setup only. This acts as the "create event" for trophy information

if global.firstTimeSetupTrophies == true
{
    instance_create(x,y,obj_saving_to_hdd_controller)
    show_debug_message("Saving to HDD Controller created.")
    
    //preventing server polling
    file_ensure("profile0.ini", "[Profile]")
    file_ensure("profile1.ini", "[Profile]")
    file_ensure("profile2.ini", "[Profile]")
    file_ensure("profile3.ini", "[Profile]")
    file_ensure("profile4.ini", "[Profile]")
    file_ensure("profile5.ini", "[Profile]")
    file_ensure("profile6.ini", "[Profile]")
    file_ensure("profile7.ini", "[Profile]")
    file_ensure("profile8.ini", "[Profile]")
    file_ensure("profile9.ini", "[Profile]")
    file_ensure("profile10.ini", "[Profile]")
    file_ensure("profile11.ini", "[Profile]")
    file_ensure("profile12.ini", "[Profile]")
    file_ensure("profile13.ini", "[Profile]")
    file_ensure("profile14.ini", "[Profile]")
    file_ensure("profile15.ini", "[Profile]")
    file_ensure("profile16.ini", "[Profile]")
    file_ensure("profile17.ini", "[Profile]")
    file_ensure("profile18.ini", "[Profile]")
    file_ensure("profile19.ini", "[Profile]")
    file_ensure("profile20.ini", "[Profile]")
    file_ensure("profile21.ini", "[Profile]")
    file_ensure("profile22.ini", "[Profile]")
    file_ensure("profile23.ini", "[Profile]")
    file_ensure("profile24.ini", "[Profile]")
    file_ensure("profile25.ini", "[Profile]")
    file_ensure("profile26.ini", "[Profile]")
    file_ensure("profile27.ini", "[Profile]")
    file_ensure("profile28.ini", "[Profile]")
    file_ensure("profile29.ini", "[Profile]")
    
    
    ini_open("profile0.ini")    //done
    ini_write_string("Profile", "Desc", "Complete 50 Jobs found in the Job Panel.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Rookie");
    show_debug_message("Rookie Added");
    obj_webCreateTrophiesProgress.drawPercent = 1;
    ini_close();
    
    ini_open("profile1.ini")    //done
    ini_write_string("Profile", "Desc", "Complete 250 Jobs found in the Job Panel.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Intermediate");
    show_debug_message("Intermediate Added");
    obj_webCreateTrophiesProgress.drawPercent = 2;
    ini_close();
    
    ini_open("profile2.ini")    //done
    ini_write_string("Profile", "Desc", "Complete 750 Jobs found in the Job Panel.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Expert");
    show_debug_message("Expert Profile Added");
    obj_webCreateTrophiesProgress.drawPercent = 3;
    ini_close();
    
    ini_open("profile3.ini")    //done
    ini_write_string("Profile", "Desc", "Complete 2,500 Jobs found in the Job Panel.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Professional");
    show_debug_message("Professional Profile Added");
    obj_webCreateTrophiesProgress.drawPercent = 4;
    ini_close();
    
    ini_open("profile4.ini")    //done
    ini_write_string("Profile", "Desc", "Level up a single job to Rank S via the Jobs Panel.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Maxed Out!");
    show_debug_message("Maxed Out! Profile Added");
    obj_webCreateTrophiesProgress.drawPercent = 5;
    ini_close();
    
    ini_open("profile5.ini")    //done
    ini_write_string("Profile", "Desc", "Purchase your first property in the Properties Management minigame.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Real Estate Startup");
    show_debug_message("Real Estate Startup Profile Added");
    obj_webCreateTrophiesProgress.drawPercent = 6;
    ini_close();
    
    ini_open("profile6.ini")    //done
    ini_write_string("Profile", "Desc", "Fully upgrade an employee's base stats.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Employee of the Month");
    obj_webCreateTrophiesProgress.drawPercent = 7;
    ini_close();
    
    ini_open("profile7.ini")    //done
    ini_write_string("Profile", "Desc", "Achieve this trophy to view the description.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "All Nighter");
    obj_webCreateTrophiesProgress.drawPercent = 8;
    ini_close();
    
    ini_open("profile8.ini")    //done
    ini_write_string("Profile", "Desc", "Assassinate all special characters in Hitmen Jobs.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Marked Men");
    obj_webCreateTrophiesProgress.drawPercent = 9;
    ini_close();
    
    ini_open("profile9.ini")    //done
    ini_write_string("Profile", "Desc", "All Jobs are mastered to S rank in New York.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "New York King");
    obj_webCreateTrophiesProgress.drawPercent = 10;
    ini_close();
    
    ini_open("profile10.ini")   //done
    ini_write_string("Profile", "Desc", "All Jobs are mastered to S rank in Chicago.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Chicago King");
    obj_webCreateTrophiesProgress.drawPercent = 11;
    ini_close();
    
    ini_open("profile11.ini")   //done
    ini_write_string("Profile", "Desc", "All Jobs are mastered to S rank in London.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "London King");
    obj_webCreateTrophiesProgress.drawPercent = 12;
    ini_close();
    
    ini_open("profile12.ini")   //done
    ini_write_string("Profile", "Desc", "All Jobs are mastered to S rank in Las Vegas.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Las Vegas King");
    show_debug_message("Las Vegas king profile Added");
    obj_webCreateTrophiesProgress.drawPercent = 13;
    ini_close();
    
    ini_open("profile13.ini")   //done
    ini_write_string("Profile", "Desc", "Earn all other trophies to unlock this trophy.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Criminal Minds");
    obj_webCreateTrophiesProgress.drawPercent = 14;
    ini_close();
    
    ini_open("profile14.ini")   //done
    ini_write_string("Profile", "Desc", "Defeat your very first City Boss. ");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Champion Jockey");
    obj_webCreateTrophiesProgress.drawPercent = 15;
    ini_close();
    
    ini_open("profile15.ini")   //done  
    ini_write_string("Profile", "Desc", "Flee a City Boss Battle, for a price...");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Fight or Flight");
    obj_webCreateTrophiesProgress.drawPercent = 16;
    ini_close();
    
    ini_open("profile16.ini")  //done 
    ini_write_string("Profile", "Desc", "Defeat a City Boss while your Health is below 30% of your total Health.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "On the Verge of Death");
    obj_webCreateTrophiesProgress.drawPercent = 17;
    ini_close();
    
    ini_open("profile17.ini")   //done
    ini_write_string("Profile", "Desc", "Defeat a City Boss with a minute to spare on any difficulty.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Against The Clock");
    obj_webCreateTrophiesProgress.drawPercent = 18;
    ini_close();
    
    ini_open("profile18.ini")   //done
    ini_write_string("Profile", "Desc", "In a City Bosses Quick Time Event, Zone Score hit 1,000 on Beginner Difficulty.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Zone Score Beginner");
    obj_webCreateTrophiesProgress.drawPercent = 19;
    ini_close();
    
    ini_open("profile19.ini")   //done 
    ini_write_string("Profile", "Desc", "In a City Bosses Quick Time Event, Zone Score hit 2,500 on Intermediate Difficulty.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Zone Score Intermediate");
    obj_webCreateTrophiesProgress.drawPercent = 20;
    ini_close();
    
    ini_open("profile20.ini")   //done  
    ini_write_string("Profile", "Desc", "In a City Bosses Quick Time Event, Zone Score hit 3,500 on Veteran Difficulty. ");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Zone Score Veteran");
    obj_webCreateTrophiesProgress.drawPercent = 21;
    ini_close();
    
    ini_open("profile21.ini")   //done
    ini_write_string("Profile", "Desc", "Perform a Signature move to a City Boss, on any difficulty.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Signature Specialist");
    obj_webCreateTrophiesProgress.drawPercent = 22;
    ini_close();
    
    ini_open("profile22.ini")   //done  
    ini_write_string("Profile", "Desc", "Perform a Final Blow to a City Boss, on any difficulty.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Bringer of Death");
    obj_webCreateTrophiesProgress.drawPercent = 23;
    ini_close();
    
    ini_open("profile23.ini")   //done   
    ini_write_string("Profile", "Desc", "Defeated Tier 3 New York Boss.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "New York City Boss Defeated");
    obj_webCreateTrophiesProgress.drawPercent = 24;
    ini_close();
    
    ini_open("profile24.ini")   //done
    ini_write_string("Profile", "Desc", "Defeated Tier 3 Chicago Boss.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Chicago City Boss Defeated");
    obj_webCreateTrophiesProgress.drawPercent = 25;
    ini_close();
    
    ini_open("profile25.ini")   //done
    ini_write_string("Profile", "Desc", "Defeated Tier 3 London Boss.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "London City Boss Defeated");
    obj_webCreateTrophiesProgress.drawPercent = 26;
    ini_close();
    
    ini_open("profile26.ini")   //done
    ini_write_string("Profile", "Desc", "Defeated Tier 3 Las Vegas Boss.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Las Vegas City Boss Defeated");
    obj_webCreateTrophiesProgress.drawPercent = 27;
    ini_close();
    
    ini_open("profile27.ini")   //done
    ini_write_string("Profile", "Desc", "Deal 100,000 damage in a single hit to a City Boss on any difficulty.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Overpowered");
    obj_webCreateTrophiesProgress.drawPercent = 28;
    ini_close();
    
    ini_open("profile28.ini")   //done   
    ini_write_string("Profile", "Desc", "Bank a Signature Move of 15x or higher.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "The Harbinger");
    obj_webCreateTrophiesProgress.drawPercent = 29;
    ini_close();
    
    ini_open("profile29.ini")   //done   
    ini_write_string("Profile", "Desc", "Reach a cumulative total of 100 QTE's performed while fighting a City Boss.");
    ini_write_real("Profile", "Icon", 0);
    ini_write_string("Profile", "Name", "Quick Time Events Master");
    obj_webCreateTrophiesProgress.drawPercent = 30
    ini_close();

    //Part 2
    global.firstTimeSetupTrophies = false
    
    ini_open("savedata.ini")
    ini_write_real("Setup", "firstTimeSetupTrophies", global.firstTimeSetupTrophies);
    ini_close();
    show_debug_message("First Time Trophies Setup Complete!")
    global.toDrawTextHDD = false;
    
    with obj_saving_to_hdd_controller
    {
        instance_destroy()
        show_debug_message("Saving to HDD Controller Destroyed.")
    }
    
    room_restart();
    
    show_debug_message("First Time Trophies Script Finished")
    
}
