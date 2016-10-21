global.progress = 0;
global.distanceToFlag = 0;
global.initialDistanceToFlag = 0;
global.progress_checkpoints = ds_list_create();


with(black_obj) {
    global.initialDistanceToFlag = distance_to_object(flag_obj)
}
        
