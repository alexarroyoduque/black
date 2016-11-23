//collisions
var tilesCollisionXId =instance_place(x+hspeed,y,tiles_obj);
if (tilesCollisionXId) {
    var lastSpeedH = hspeed;
    hspeed=0;
    with(tilesCollisionXId)
    {
        sprite_index = phantom_wall_spr;
        depth= -100
    }

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

var tilesCollisionYId =instance_place(x,y+vspeed,tiles_obj);
if (tilesCollisionYId) {
    var lastSpeedV = vspeed;
    vspeed=0;
    with(tilesCollisionYId)
    {
        sprite_index = phantom_wall_spr;
        depth= -100
    }
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
