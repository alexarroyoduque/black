//movement left pad
if (global.padIndex != -1) {
    var xDirection,yDirection;
    xDirection = gamepad_axis_value(global.padIndex, gp_axislh);
    yDirection = gamepad_axis_value(global.padIndex, gp_axislv);
    hspeed = xDirection * player_speed;
    vspeed = yDirection * player_speed;
}
