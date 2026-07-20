var descReturn;

desc = ds_list_create();

//A's
ds_list_add(desc, "Aggravated grand larceny of an automated teller machine.");
ds_list_add(desc, "Aggravated assault upon a police officer or a peace officer.");
ds_list_add(desc, "Aggravated manslaughter in the first degree.");
ds_list_add(desc, "Arson in the fifth degree.");

//B's
ds_list_add(desc, "Bribe receiving by a labour official.");

// C's
ds_list_add(desc, "Created a working iron-suit in a cave.");
ds_list_add(desc, "Criminally using drug paraphernalia in the first degree.");

//F's
ds_list_add(desc, "Former fourth chairman of the Tojo Clan.");
ds_list_add(desc, "Forgery in the first degree");

ds_list_add(desc, "Mob's significant other. Fucks other men and then kills them in cold blood.");
ds_list_add(desc, "Owner of a SpeakEasy. Tortures 'patients' in the back-room.");
ds_list_add(desc, "Get's off to inanimate objects.");
ds_list_add(desc, "They have a share in a failing greyhounds race track.");
ds_list_add(desc, "Child slave Labour, trafficking, addicted to drugs.");
ds_list_add(desc, "Owns three luxury sport cars, works as a professor at a local college.");
ds_list_add(desc, "Takes pictures of females inside a dark-room.");
ds_list_add(desc, "Runs a drug shipment business at the English Channel.");
ds_list_add(desc, "Uses heavy, blunt objects as weapons.");
ds_list_add(desc, "Owns the Millenium Tower in Tokyo.");
ds_list_add(desc, "Ex hitman, won't be an easy target... Unless you're good.");
ds_list_add(desc, "Gambling mastermind, can predict your hand... and your death.");
ds_list_add(desc, "The Pope's personal bodyguard, let's say they should keep their hands to themselves.");
ds_list_add(desc, "The Blossom Twins. ...Kill both to be sure.");
ds_list_add(desc, "Operator at West Tek Research Facility.");

//END OF DESCRIPTIONS!

ds_list_shuffle(desc);

//stores result in temp variable
descReturn = desc[| irandom(ds_list_size(desc)-1)];

//destroys the ds list
ds_list_destroy(desc);

//returns the name
return descReturn;
