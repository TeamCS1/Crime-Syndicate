//(OPTIONAL) Countdown seconds with lag-free delta_time's microseconds
deltaSecond = 1000000 
totalSeconds = argument[0]; //Any Positive Value in seconds before 65

totalSeconds -= (delta_time/deltaSecond); //equals 1 second

var t,years,days,hours,minutes,seconds,timerDisplay;

//Integer Math
t = (60*60*24*365); years   = (totalSeconds div t);      //The last local variable
t = (60*60*24);     days    = (totalSeconds div t) % 365;//..will have no % value
t = (60*60);        hours   = (totalSeconds div t) % 24; // ..on the end.
t = (60);           minutes = (totalSeconds div t) % 60;
t = (1);            seconds = (totalSeconds div t) % 60;

//Convert Integers to writable String Values
years = string(years);
days  = string(days);
if (hours   < 10) hours   = "0"+string(hours);   //If timer value is less than 10
else              hours   =     string(hours); // add "0" for two-digit counter
if (minutes < 10) minutes = "0"+string(minutes); 
else              minutes =     string(minutes);
if (seconds < 10) seconds = "0"+string(seconds); 
else              seconds =     string(seconds);

//Combine above strings into one string
timerDisplay = hours + ":" + minutes + ":" + seconds;

return(timerDisplay);
