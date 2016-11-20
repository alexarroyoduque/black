depth = -9999;
var xPosition = view_xview[0] + 260;
var yPosition = view_yview[0] + 200;

script_execute(setLightGray_color);

draw_set_halign(fa_left);
draw_set_font(default_font);

var message = argument0;
draw_text_ext(xPosition, yPosition, argument0, 30, 350);
