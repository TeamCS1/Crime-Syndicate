/// scr_log_message(message)

var _message = argument0;

var _log_to_screen = false;

if ( _log_to_screen)
{
    show_debug_message(_message);
}

else
{
    var _log_file = file_text_open_append("logs/game-log-output-1" + '.txt')
    file_text_write_string(_log_file, _message + chr($0D)+chr($0A))
    file_text_close(_log_file)
}
