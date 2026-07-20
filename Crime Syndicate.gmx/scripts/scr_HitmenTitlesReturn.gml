var titlesReturn;

title = ds_list_create();

//A
ds_list_add(title, "the Absoluter");
ds_list_add(title, "the Adulterer");
ds_list_add(title, "the Applauder");
ds_list_add(title, "the Augmenter");
ds_list_add(title, "the Assassin");

//B
ds_list_add(title, "the Blockader");
ds_list_add(title, "the Brigadier");
ds_list_add(title, "the Butcherer");
ds_list_add(title, "the Barbarian");
ds_list_add(title, "the Bystander");
ds_list_add(title, "the Brave");
ds_list_add(title, "the Bold");
ds_list_add(title, "the Brutal");

//C
ds_list_add(title, "the Canonizer");
ds_list_add(title, "the Carabiner");
ds_list_add(title, "the Carjacker");
ds_list_add(title, "the Chafferer");
ds_list_add(title, "the Civilizer");
ds_list_add(title, "the Clatterer");
ds_list_add(title, "the Commencer");
ds_list_add(title, "the Corrupter");
ds_list_add(title, "the Challenger");
ds_list_add(title, "the Cocky");
ds_list_add(title, "the Coward");
ds_list_add(title, "the Cannibal");

//D
ds_list_add(title, "the Denouncer");
ds_list_add(title, "the Descender");
ds_list_add(title, "the Doomsayer");
ds_list_add(title, "the Destroyer");
ds_list_add(title, "the Dowitcher");
ds_list_add(title, "the Dynameter");
ds_list_add(title, "the Drifter");
ds_list_add(title, "the Damned");
ds_list_add(title, "the Devil");
ds_list_add(title, "the Dreg");
ds_list_add(title, "the Dog");
ds_list_add(title, "the Dragon");

//E
ds_list_add(title, "the Easterner");
ds_list_add(title, "the Energizer");
ds_list_add(title, "the Equaliser");
ds_list_add(title, "the Embezzler");
ds_list_add(title, "the Escalader");
ds_list_add(title, "the Expediter");
ds_list_add(title, "the Expounder");
ds_list_add(title, "the Eyepopper");

//F
ds_list_add(title, "the Fashioner");
ds_list_add(title, "the Financier");
ds_list_add(title, "the Fire-starter");
ds_list_add(title, "the Fracturer");
ds_list_add(title, "the Florist");
ds_list_add(title, "the Foolhardy");

//G
ds_list_add(title, "the Gainsayer");
ds_list_add(title, "the Godmother");
ds_list_add(title, "the Gristlier");
ds_list_add(title, "the Groveller");
ds_list_add(title, "the Grunt");

//H
ds_list_add(title, "the Hesitater");
ds_list_add(title, "the Hotdogger");
ds_list_add(title, "the Hacker");
ds_list_add(title, "the Haggler");
ds_list_add(title, "the Haymaker");
ds_list_add(title, "the Hunter");
ds_list_add(title, "the Harsh");

//I
ds_list_add(title, "the Invincible");

//J
ds_list_add(title, "the Jaywalker");

//K
ds_list_add(title, "the Knight");
ds_list_add(title, "the Kingpin");

//L
ds_list_add(title, "the Loner");
ds_list_add(title, "the Lethargic");
ds_list_add(title, "the Lion");
ds_list_add(title, "the Loyal");

//M
ds_list_add(title, "the Magician");
ds_list_add(title, "the Mercenary");
ds_list_add(title, "the Mad Dog");
ds_list_add(title, "the Mad Dogg");
ds_list_add(title, "the Meek");
ds_list_add(title, "the Merciful");
ds_list_add(title, "the Murderer");

//N
ds_list_add(title, "the Nagger");

//O
ds_list_add(title, "the Opportunist");

//P
ds_list_add(title, "the Punisher");
ds_list_add(title, "the Paranoid");
ds_list_add(title, "the Punk");
ds_list_add(title, "the Puny");
ds_list_add(title, "the Pirate");

//Q

//R
ds_list_add(title, "the Randy");
ds_list_add(title, "the Restless");
ds_list_add(title, "the Ruthless");
ds_list_add(title, "the Rainmaker");
ds_list_add(title, "the Rat");
//S
ds_list_add(title, "the Saint");
ds_list_add(title, "the Savage");
ds_list_add(title, "the Syndicate");
ds_list_add(title, "the Shiv");
ds_list_add(title, "the Shifty");
ds_list_add(title, "the Scoundrel");
ds_list_add(title, "the Smuggler");
ds_list_add(title, "the Scout");
ds_list_add(title, "the Shill");
ds_list_add(title, "the Shunned");
ds_list_add(title, "the Soldier");
ds_list_add(title, "the Scumbag");
ds_list_add(title, "the Snake");

//T
ds_list_add(title, "the Trigger");
ds_list_add(title, "the Troublemaker");
ds_list_add(title, "the Thug");
ds_list_add(title, "the Tiger");
ds_list_add(title, "the Tyrant");

//U
ds_list_add(title, "the Untouchable");
ds_list_add(title, "the Unstoppable");

//V
ds_list_add(title, "the Vanguard");
ds_list_add(title, "the Viking");

//W
ds_list_add(title, "the Wanderer");
ds_list_add(title, "the Wise");
ds_list_add(title, "the Whistleblower");

//X

//Y
ds_list_add(title, "the Yellow-belly");

//Z

//END OF TITLES!

ds_list_shuffle(title);

//stores result in temp variable
titlesReturn = title[| irandom(ds_list_size(title)-1)];

//destroys the ds list
ds_list_destroy(title);

//returns the title
return titlesReturn;
