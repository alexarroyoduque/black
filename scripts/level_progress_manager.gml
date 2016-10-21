with(black_obj) {
    global.distanceToFlag = distance_to_object(flag_obj)
}

calculateProgress = 1-(global.distanceToFlag/global.initialDistanceToFlag);


if (calculateProgress < 0) {
    global.progress = 0;
} else {
    global.progress = calculateProgress;
}
