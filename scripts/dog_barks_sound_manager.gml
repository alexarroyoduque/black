if (dogIndex == black_obj.dogs) {
    if (distance_to_object(black_obj) < 50) {
      audio_sound_gain(barksSound, 1, 5);
      
    } else if (distance_to_object(black_obj) > 50 &&
        distance_to_object(black_obj) < 80) {
      audio_sound_gain(barksSound, 0.9, 5);
      
    } else if (distance_to_object(black_obj) > 80 &&
        distance_to_object(black_obj) < 100) {
      audio_sound_gain(barksSound, 0.8, 5);
      
    } else if (distance_to_object(black_obj) > 100 &&
        distance_to_object(black_obj) < 130) {
      audio_sound_gain(barksSound, 0.6, 5);
      
    } else if (distance_to_object(black_obj) > 130 &&
        distance_to_object(black_obj) < 160) {
      audio_sound_gain(barksSound, 0.5, 5);
      
    } else if (distance_to_object(black_obj) > 160 &&
        distance_to_object(black_obj) < 200) {
      audio_sound_gain(barksSound, 0.3, 5);
      
    } else if (distance_to_object(black_obj) > 220 &&
        distance_to_object(black_obj) < 250) {
      audio_sound_gain(barksSound, 0.2, 5);
      
    } else if (distance_to_object(black_obj) > 250 &&
        distance_to_object(black_obj) < 280) {
      audio_sound_gain(barksSound, 0.1, 5);
      
    } else {
        audio_sound_gain(barksSound, 0, 5);
    }
} else {
    show_debug_message('entrando');
    audio_sound_gain(barksSound, 0, 5);
}

