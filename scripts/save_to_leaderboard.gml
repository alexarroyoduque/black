var resultsMap = ds_map_create();
var totalMinutes = 0;
var totalSeconds = 0;
var numberOfLevels = 5;
//we need to charge the player results on a map
for (var i = 1; i <= numberOfLevels; i += 1)
{    ini_open("player_room_timer.sav")
     var levelResults = ds_map_create();
     var levelMinutes = ini_read_real("Current_Time-level0"+string(i),"minutes",0);
     var levelSeconds = ini_read_real("Current_Time-level0"+string(i),"seconds",0);
     ini_close();
     ds_map_add(resultsMap,"level0"+string(i)+"-minutes",levelMinutes);
     ds_map_add(resultsMap,"level0"+string(i)+"-seconds",levelSeconds);
     //adds the minutes and seconds spent on the level to the total count
     totalMinutes += levelMinutes;
     totalSeconds += levelSeconds;
}
totalSeconds += totalMinutes*60;
//adds total level results to the levels result map
ds_map_add(resultsMap,"total_result",totalSeconds);

//calculates todays date on the desired format
var date =  twoDigitsCheck_scr(string(current_day))+ "/" + twoDigitsCheck_scr(string(current_month)) + "/" + string(current_year);
ds_map_add(resultsMap,"result_date",date);

var recordsTableMap = get_records_table_map_scr();


for ( i = 0; i <10; i += 1)
{
    if(ds_map_exists(recordsTableMap,string(i)))
    {
        // get map of the record matching with the i value
        var recordMap = ds_map_find_value(recordsTableMap,string(i));
        //get total result of the record
        var totalResultRecord =ds_map_find_value(recordMap,"total_result");
        //get total result achieved by the player on this round
        var totalResultPlayer = ds_map_find_value(resultsMap,"total_result");
         if( totalResultPlayer < totalResultRecord )
         {
    
            //aha! we found a record worse than the players mark, now we need to go through the recordsTableMap on reverse order
            //to push down the rest of the results pe: if the players score is better than score n position 4, now score on position 4 is score 5 and so on
            for (var j = 8; j > i ; j--)
            {
                //we get the record on the j position and we replace the record on the next position
                if(ds_map_exists(recordsTableMap,string(j)))
                {
                 var resultSubstitutor = ds_map_find_value(recordsTableMap,string(j));
                 if(ds_map_exists(recordsTableMap,string(j+1)))
                 {
                    ds_map_replace_map(recordsTableMap,string(j+1),resultSubstitutor);
                 }else
                 {
                    ds_map_add(recordsTableMap,string(j+1),resultSubstitutor);
                 }
                }              
              
            }
            //finally we replace the old ranked position with the new player scores
            ds_map_replace_map(recordsTableMap,string(i),resultsMap);
            show_debug_message(recordsTableMap);
         }
     }else
     {
        ds_map_add(recordsTableMap,string(i),resultsMap);
     }
     persist_records_table_scr(recordsTableMap);
     exit

}


