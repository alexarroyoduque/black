///persist_records_table_scr(recordsTableMap)
var recordsTableMap = argument0;
var numberOfLevels=5;
ini_open("leader_board.sav")
for(var i=0; i<=9; i++)
{
    var recordMap = ds_map_find_value(recordsTableMap, string(0));
    var totalResult = ds_map_find_value(recordMap,"total_result");
    
    if(totalResult > 0)
    {
        ini_write_real(string(i),"total_result",ds_map_find_value(recordMap,"total_result"));
        ini_write_string(string(i),"result_date",ds_map_find_value(recordMap,"result_date"));
        for(var j=1; j<= numberOfLevels; j++)
        {
            ini_write_real(string(i),"level0"+string(j)+"-seconds",ds_map_find_value(recordMap,"level0"+string(j)+"-seconds"));
            ini_write_real(string(i),"level0"+string(j)+"-minutes",ds_map_find_value(recordMap,"level0"+string(j)+"-minutes"));
        }
    }
}
