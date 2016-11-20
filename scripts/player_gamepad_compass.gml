//cane mechanics
if (global.padIndex != -1) {
    //takes directions from the right pad
    var h_point = gamepad_axis_value(global.padIndex, gp_axislh);
    var v_point = gamepad_axis_value(global.padIndex, gp_axislv);
    var pdir = point_direction(0, 0, h_point, v_point);
    var dif = angle_difference(pdir, image_angle);

     if ( ((h_point != 0) || (v_point != 0))) {
        with(compass_dynamic_obj) {
        show_debug_message("compass_dynamic_obj");
        image_angle = dif - 90;
        direction = image_angle;
        show_debug_message(compass_dynamic_obj.image_angle);
                
        }
     }
}
