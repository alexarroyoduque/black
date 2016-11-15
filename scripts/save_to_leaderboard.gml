var resultsMap = ds_map_create();

var totalMinutes = 0;
var totalSeconds = 0;
for (var i = 1; i <= 5; i += 1)
{    ini_open("player_room_timer.sav")
     var levelResults = ds_map_create();
     var levelMinutes = ini_read_real("Current_Time-level0"+string(i),"minutes",0);
     var levelSeconds = ini_read_real("Current_Time-level0"+string(i),"seconds",0);
     ini_close();
     ds_map_add(levelResults,"minutes",levelMinutes);
     ds_map_add(levelResults,"seconds",levelSeconds);
     totalMinutes += levelMinutes;
     totalSeconds += levelSeconds;
     
     ds_map_add_map(resultsMap,"level0"+string(i),levelResults)
     show_debug_message("level0"+string(i))
show_debug_message(ds_map_find_value(levelResults,"seconds"))
}
totalSeconds += totalMinutes*60;
ds_map_add(resultsMap,"total_result",totalSeconds);
var date = twoDigitsCheck_scr(string(current_day) + "/" + twoDigitsCheck_scr(string(current_month)) + "/" + string(current_year));
ds_map_add(resultsMap,"result_date",date);

ini_open("leader_board.sav");
for ( i = 0; i <10; i += 1)
{
     var totalResultRanking = ini_read_real(string(i),"total_result",0);
     var totalResultPlayer = ds_map_find_value(resultsMap,"total_result");
     if( totalResultPlayer < totalResultRanking || totalResultRanking == 0)
     {
            var originResult = ds_map_find_first(resultsMap);
            var levelMinutesAndSecondsMap = ds_map_find_value(resultsMap,originResult);
            if(originResult != "total_result" && originResult != "result_date")
            {
                ini_write_real(string(i),string(originResult)+"-minutes",ds_map_find_value(levelMinutesAndSecondsMap,"minutes"));
                ini_write_real(string(i),string(originResult)+"-seconds",ds_map_find_value(levelMinutesAndSecondsMap,"seconds"));
            }
            if( originResult == "result_date")
            {
                ini_write_string(string(i),string(originResult),levelMinutesAndSecondsMap);
            }
            else
            {
                ini_write_real(string(i),string(originResult),levelMinutesAndSecondsMap);
            }
            for (var j = 1; j < ds_map_size(resultsMap); j += 1)
            {  
                var nextResult = ds_map_find_next(resultsMap, originResult);
                if(!is_undefined(nextResult))
                {
                    levelMinutesAndSecondsMap = ds_map_find_value(resultsMap,nextResult);
                    show_debug_message("nextResult")
                    show_debug_message(nextResult)
                    show_debug_message("levelMinutesAndSecondsMap")
                    show_debug_message(levelMinutesAndSecondsMap)
                    if(nextResult != "total_result" && nextResult != "result_date")
                    {
                        ini_write_real(string(i),string(nextResult)+"-minutes",ds_map_find_value(levelMinutesAndSecondsMap,"minutes"));
                        ini_write_real(string(i),string(nextResult)+"-seconds",ds_map_find_value(levelMinutesAndSecondsMap,"seconds"));
                    }
                    if( nextResult == "result_date")
                    {
                        ini_write_string(string(i),string(nextResult),levelMinutesAndSecondsMap);
                    }
                    else
                    {
                        ini_write_real(string(i),string(nextResult),levelMinutesAndSecondsMap);
                    }
                    originResult = nextResult;
                }

            }
            ini_close();
            exit    
     }

}
ini_close();

