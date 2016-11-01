if (file_exists("player_room_timer.sav")) file_delete("player_room_timer.sav")
ini_open("player_room_timer.sav")
ini_write_real("Current_Time","minutes",global.minutes)
ini_write_real("Current_Time","seconds", global.seconds)
ini_close();
