if (global.padIndex != -1) {
   gamepad_set_vibration(global.padIndex, 0.3, 0.3);
   global.cane_vibrating = true;
   instance_destroy();
}
