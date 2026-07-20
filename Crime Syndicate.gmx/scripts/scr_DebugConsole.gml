///Debug Console
global.consoleInput = get_string("Debug Console: ", "/");

if global.consoleInput == "/help" || global.consoleInput == "/list"
{
    show_message("Console Commands: ##/help or /list - Display commands list.
                                    #/debug <bool> - Enable debug mode
                                    #/xplevel - Choose level
                                    #/give million - Gives 1 million.
                                    #/give money custom - Gives entered integer as cash.
                                    #/give skillpoints custom - Gives entered integer as skillpoints.
                                    #/fullscreen <bool> - Enables/disables fullscreen mode.
                                    #/set money clear - Clears the current money.
                                    #/add properties max - Gives you 9999 properties
                                    #/theme int - 0 - light theme, 1 - dark theme
                                    #/fpsmode - Experimental enter int
                                    #/blackmarket - Scene shortcut. 
                                    #/trips - Scene shortcut.
                                    #/reset OR /restart - Resets game state.
                                    #/stop OR /end - Quits game.
                                    #/testing - test room
                                    ")    
}

else if global.consoleInput == "/debug true"
{
    if !instance_exists(obj_draw_debug)
    {
        instance_create(x ,y , obj_draw_debug)
        show_debug_overlay(true);
    }        
}

else if global.consoleInput == "/debug false"
{
    if instance_exists(obj_draw_debug)
    {
        with obj_draw_debug
        {
            instance_destroy();
            show_debug_overlay(false);
        } 
    }        
}

else if global.consoleInput == "/testing"
{
    room_goto(rm_testing);    
}

else if global.consoleInput == "/xplevel"
{
    xp = get_integer("Please enter the xp level as integer.", 10);
    global.currentPlayerLevel = xp;
}

else if global.consoleInput == "/give million"
{
    global.moneyCount += 1000000    
}

else if global.consoleInput == "/blackmarket"
{
    room_goto(rm_blackmarket_home)    
}

else if global.consoleInput == "/trips"
{
    room_goto(rm_blackmarket_trips_menu)    
}

else if global.consoleInput == "/restart" || global.consoleInput == "/reset"
{
    game_restart();
}

else if global.consoleInput == "/end" || global.consoleInput == "/stop"
{
    game_end();
}

else if global.consoleInput == "/fullscreen true"
{
    window_set_fullscreen(true);
}

else if global.consoleInput == "/fullscreen false"
{
    window_set_fullscreen(false);
}

else if global.consoleInput == "/give money custom"
{
    cash = get_integer("Please enter the cash as integer.", 0);
    global.moneyCount += cash;
}

else if global.consoleInput == "/give skillpoints custom"
{
    sp = get_integer("Please enter the skillpoints as integer.", 10);
    global.skillPointsRemaining += sp;       
}

else if global.consoleInput == "/set money clear"
{
    global.moneyCount = 0;
}

else if global.consoleInput == "/add properties max"
{
    global.totalPropertiesIncome += 1000000000;
    global.propertiesDecadePenthouseQuantityOwned += 10000
}

else if global.consoleInput == "/theme 0"
{
    themeType = 0;
}

else if global.consoleInput == "/theme 1"
{
    themeType = 1;
}

else if global.consoleInput == "/fpsmode"
{
    global.fpsMode = get_integer("Please enter fps:", 60);
    room_speed = global.fpsMode;
    
}

else if global.consoleInput == "/gui"
{
    global.width111 = 0;
    global.height111 = 0;
    global.width111 = get_integer("Please enter width", 1920);
    global.height111 = get_integer("Please enter height", 1080);
    //display_set_gui_size(-1,-1);
    //display_set_gui_size(global.width111,global.height111);
    window_set_size(global.width111,global.height111);
    
    
}

else if global.consoleInput == "/gui clear"
{
    global.width111 = -1;
    global.height111 = -1;
    window_set_size(global.width111,global.height111);
    
    
}

else
{
    show_message("Command not found. Please enter /list or /help");
}
