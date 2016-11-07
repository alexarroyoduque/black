a = clamp(a + (fade * fadeFactor),0,1);

if (a == 1) {
    if(room > 3)
    {
        script_execute(save_room_time());
    }
    room_goto_next();
    fade = -1;
}

if (a == 0) && (fade == -1) {
    instance_destroy();
}

draw_set_color(c_black);
draw_set_alpha(a);
draw_rectangle(
    view_xview[0],
    view_yview[0],
    view_xview[0] + view_wview[0],
    view_yview[0] + view_hview[0],
    0
)
draw_set_alpha(1);
