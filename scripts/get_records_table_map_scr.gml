///getRecordsTableMap()
var numberOfLevels = 5
if (file_exists("leader_board.sav"))
{   //opens file of leader boards
    ini_open("leader_board.sav")
    
    var recordsTableMap = ds_map_create();
    //we need to go throught the 10 positions of the ranking(var i)
    //each position has total, date and the different game levels(var j)
    for (var i=0; i <= 9; i++)
    {   var rankedPositionMap = ds_map_create();
        //charges info from the ranked position on the map
        var total_result = ini_read_real(string(i),"total_result",0);
        // we only want the result if total_result > 0
        if (total_result > 0)
        {
            ds_map_add(rankedPositionMap,"total_result", total_result);
            ds_map_add(rankedPositionMap,"result_date", ini_read_string(string(i),"result_date",0));
            for (var j=1; j <= numberOfLevels; j++)
            {
                ds_map_add(rankedPositionMap,"level0"+string(j)+"-seconds", ini_read_real(string(i),"level0"+string(j)+"-seconds",0));
                ds_map_add(rankedPositionMap,"level0"+string(j)+"-minutes", ini_read_real(string(i),"level0"+string(j)+"-minutes",0));
            }
            //add the info from the position on the main map
            ds_map_add(recordsTableMap,string(i),rankedPositionMap)
        }           
    }
    return recordsTableMap;
}
