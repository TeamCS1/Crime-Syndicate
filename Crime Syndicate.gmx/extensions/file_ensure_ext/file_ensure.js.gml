#define file_ensure
/// (path, ?content):
var v = ""; if (argument_count > 1) v = argument[1];
return file_ensure_js(game_save_id + argument[0], v);
