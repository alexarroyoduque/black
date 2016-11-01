if (file_exists("player_room_timer.sav"))
{
    ini_open("player_room_timer.sav")
    global.minutes = ini_read_real("Current_Time","minutes",0)
    global.seconds = ini_read_real("Current_Time","seconds",0)
    ini_close();
    global.count_up = true;
}

