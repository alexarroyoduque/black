if (dogIndex == black_obj.dogs) {
    if (distance_to_object(black_obj) < 50) {
      audio_sound_gain(barksSound, 1, 5);
      
    } else if (distance_to_object(black_obj) > 50 &&
        distance_to_object(black_obj) < 90) {
      audio_sound_gain(barksSound, 0.95, 5);
      
    } else if (distance_to_object(black_obj) > 90 &&
        distance_to_object(black_obj) < 130) {
      audio_sound_gain(barksSound, 0.9, 5);
      
    } else if (distance_to_object(black_obj) > 130 &&
        distance_to_object(black_obj) < 160) {
      audio_sound_gain(barksSound, 0.85, 5);
      
    } else if (distance_to_object(black_obj) > 160 &&
        distance_to_object(black_obj) < 200) {
      audio_sound_gain(barksSound, 0.80, 5);
      
    } else if (distance_to_object(black_obj) > 200 &&
        distance_to_object(black_obj) < 230) {
      audio_sound_gain(barksSound, 0.75, 5);
      
    } else if (distance_to_object(black_obj) > 230 &&
        distance_to_object(black_obj) < 260) {
      audio_sound_gain(barksSound, 0.70, 5);
      
    } else if (distance_to_object(black_obj) > 260 &&
        distance_to_object(black_obj) < 290) {
      audio_sound_gain(barksSound, 0.65, 5);
      
    } else if (distance_to_object(black_obj) > 290 &&
        distance_to_object(black_obj) < 310) {
      audio_sound_gain(barksSound, 0.6, 5);
      
    } else if (distance_to_object(black_obj) > 310 &&
        distance_to_object(black_obj) < 340) {
      audio_sound_gain(barksSound, 0.55, 5);
      
    } else if (distance_to_object(black_obj) > 340 &&
        distance_to_object(black_obj) < 370) {
      audio_sound_gain(barksSound, 0.5, 5);
      
    } else if (distance_to_object(black_obj) > 370 &&
        distance_to_object(black_obj) < 400) {
      audio_sound_gain(barksSound, 0.4, 5);
      
    } else if (distance_to_object(black_obj) > 400 &&
        distance_to_object(black_obj) < 430) {
      audio_sound_gain(barksSound, 0.3, 5);
      
    } else if (distance_to_object(black_obj) > 430 &&
        distance_to_object(black_obj) < 460) {
      audio_sound_gain(barksSound, 0.2, 5);
      
    } else if (distance_to_object(black_obj) > 460 &&
        distance_to_object(black_obj) < 490) {
      audio_sound_gain(barksSound, 0.15, 5);
      
    } else if (distance_to_object(black_obj) > 490 &&
        distance_to_object(black_obj) < 520) {
      audio_sound_gain(barksSound, 0.1, 5);
      
    } else if (distance_to_object(black_obj) > 520 &&
        distance_to_object(black_obj) < 550) {
      audio_sound_gain(barksSound, 0.05, 5);
      
    } else {
        audio_sound_gain(barksSound, 0, 5);
    }
} else {
    audio_sound_gain(barksSound, 0, 5);
}

