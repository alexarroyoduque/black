var image = argument0;
var imageTitle = argument1;
var description = argument2;
var colorScript = argument3;

var imageX = 250;
var imageY = 370;

var descriptionX = 500;
var descriptionY = 220;

draw_sprite(image, 0, imageX, imageY);

draw_set_font(menu_font);

script_execute(colorScript);

draw_set_halign(fa_center);
draw_text(imageX, imageY + 240, imageTitle);

script_execute(setLightGray_color);
draw_set_halign(fa_left);
draw_text_ext(
    descriptionX, descriptionY,
    description,
    45, 500);
/*

draw_text_ext(
    descriptionX, descriptionY,
    'Hijo, ¿Puedes ayudarme?'+
    ' Necesito que vayas a la frutería. Quedé con el señor Green en que me apartaría unas ricas fresas. Al volver pásate por la casa de tu amiga Rose y les dejamos algunas fresas a los vecinos.',
    40, 500);
*/

