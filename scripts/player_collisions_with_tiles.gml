//collisions
if (place_meeting(x+hspeed,y,tiles_obj)) {
    var lastSpeedH = hspeed;
    hspeed=0;
    if (!invulnerable) {
        audio_sound_gain(ouch_sound, 0.2, 1);
        audio_play_sound(ouch_sound, 0, false);
        invulnerable = true;
        health--;
        alarm[1] = room_speed*2;
        health_obj.image_index = health;
        
        if (lastSpeedH < 0) {
            instance_create(0, 0, hit_left_obj);
        } else {
            instance_create(0, 0, hit_right_obj);
        }
    }

}

if (place_meeting(x,y+vspeed,tiles_obj)) {
    var lastSpeedV = vspeed;
    vspeed=0;
    if (!invulnerable) {
        audio_sound_gain(ouch_sound, 1, 1);
        audio_play_sound(ouch_sound, 0, false);
        invulnerable = true;
        health--;
        alarm[1] = room_speed*2;
        health_obj.image_index = health;
        if (lastSpeedV < 0) {
            instance_create(0, 0, hit_top_obj);
        } else {
            instance_create(0, 0, hit_bottom_obj);
        }
    }
}
