if (global.padIndex != -1) {
   gamepad_set_vibration(global.padIndex, 0.3, 0.3);
   global.cane_vibrating = true;
   with(other)
   {
    sprite_index = phantom_wall_spr;
    depth= -100
   }
   instance_destroy();
}
