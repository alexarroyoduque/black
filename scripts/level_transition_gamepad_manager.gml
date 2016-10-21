if (global.padIndex != -1) {
    var verticalLeft = gamepad_axis_value(global.padIndex, gp_axislv);
    var verticalRight = gamepad_axis_value(global.padIndex, gp_axisrv);
    
    if (verticalLeft < -0.8 && verticalRight < -0.8) { // up
        room_goto(room_next(room));
    }
}
