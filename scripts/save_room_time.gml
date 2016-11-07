ini_open("player_room_timer.sav")
ini_write_real("Current_Time-"+room_get_name(room),"minutes",global.minutes)
ini_write_real("Current_Time-"+room_get_name(room),"seconds", global.seconds)
ini_close();
