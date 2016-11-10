if (black_obj.dogs == dogIndex) {
    audio_sound_gain(barksSound, 0, 5);
    black_obj.dogs++;
    
    var tile1 = instance_create(x-100, y - 100, tiles_dog_obj);
    tile1.image_xscale =  10;

    var tile2 = instance_create(x-100, y -100, tiles_dog_obj);
    tile2.image_yscale =  10;
    instance_destroy();
}
