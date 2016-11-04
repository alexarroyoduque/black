if(gamepadDelay) exit;
if (global.padIndex != -1) { 
    if(gamepad_button_check(global.padIndex, gp_start)){
        if(!pause){
            pause = 1;
            instance_deactivate_all(true);
            gamepadDelay = 1;
            alarm_set(0,room_speed*0.5);
        } else {
             pause = 0;
             instance_activate_all();
             gamepadDelay = 1;
             alarm_set(0,room_speed*0.5);
        }
    }

    if (pause) {
        var verticalLeft = gamepad_axis_value(global.padIndex, gp_axislv);
        var verticalRight = gamepad_axis_value(global.padIndex, gp_axisrv);
        
        if (verticalLeft > +0.8 && verticalRight > +0.8) { // down
            room_goto(menu_main);
        }
    }

}

