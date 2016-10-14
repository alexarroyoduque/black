show_debug_message('Event = ' + async_load[? 'event_type']);        // Debug cocde so you can see which event has been

show_debug_message("Pad = " + string(async_load[? "pad_index"]));   // triggered and the pad associated with it.


switch(async_load[? "event_type"]) {             // Parse the async_load map to see which event has been triggered
    case "gamepad discovered":                     // A game pad has been discovered
        global.padIndex = async_load[? "pad_index"];       // Get the pad index value from the async_load map
        show_debug_message(global.padIndex);
        gamepad_set_axis_deadzone(global.padIndex, 0.1);  
        
        break;
        
    case "gamepad lost":                           // Gamepad has been removed or otherwise disabled
        global.padIndex = -1;      

        break;
}
