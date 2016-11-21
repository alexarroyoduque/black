
if (place_meeting(x+hspeed,y, car_obj) || place_meeting(x,y+vspeed,car_obj)) {
    hspeed=0;
    vspeed=0;

    vibration_gamepad_stop();
    
    health = 0;
    health_obj.image_index = health;

    instance_create(0, 0, layer_blood_obj);
    instance_create(0, 0, hit_by_car_message_obj);
}
