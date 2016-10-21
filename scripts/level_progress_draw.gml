var xPosition = view_xview[0] + x;
var yPosition = view_yview[0] + y;


draw_sprite(progress_bar_bg_spr, 1, xPosition, yPosition);
draw_sprite_ext(progress_bar_fill_spr, 1, xPosition, yPosition, global.progress,1,0,c_white,1)
draw_sprite(progress_bar_border_spr, 1, xPosition-4, yPosition - 35);
            

//draw_sprite(progress_bar_bg_spr,1,view_xview[0]+229,view_yview[0]+650);
//draw_sprite_ext(progress_bar_fill_spr,1,view_xview[0]+229,view_yview[0]+650,global.progress,1,0,c_white,1)
//draw_sprite(progress_bar_border_spr,1,view_xview[0]+225,view_yview[0]+615);
            
