if (black_obj.dogs == dogIndex) {
    audio_sound_gain(barksSound, 0, 5);
    black_obj.dogs++;
    instance_destroy();
}
