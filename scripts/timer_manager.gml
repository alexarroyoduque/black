if (global.count_up == true)
{
    global.miliseconds += 1/room_speed*1000;   
}

if ( global.miliseconds < 1000 ) && ( global.miliseconds > 950)
{
    global.miliseconds = 0;
    global.seconds += 1;
}

if ( global.seconds <= 60 ) && ( global.seconds > 59 )
{
    global.seconds = 0;
    global.minutes += 1;
}
