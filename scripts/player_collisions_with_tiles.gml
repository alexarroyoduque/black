//collisions
if (place_meeting(x+hspeed,y,tiles_obj)) {
    hspeed=0;
    if (!invulnerable) {
        audio_sound_gain(ouch_sound, 0.2, 1);
        audio_play_sound(ouch_sound, 0, false);
        invulnerable = true;
        health--;
        alarm[1] = room_speed*2;
        health_obj.image_index = health;
    }
    instance_create(0, 0, layer_blood_obj);
}

if (place_meeting(x,y+vspeed,tiles_obj)) {
    vspeed=0;
    if (!invulnerable) {
        audio_sound_gain(ouch_sound, 1, 1);
        audio_play_sound(ouch_sound, 0, false);
        invulnerable = true;
        health--;
        alarm[1] = room_speed*2;
        health_obj.image_index = health;
    }
    instance_create(0, 0, layer_blood_obj);
}
