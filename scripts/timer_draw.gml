var xPosition = view_xview[0] + x;
var yPosition = view_yview[0] + y;

if (global.seconds < 10) && (global.minutes < 10) {
    draw_text(xPosition, yPosition, "0" + string(global.minutes)+" : 0"+string(global.seconds)+" : "+string(global.miliseconds));
} else if (global.seconds < 10) && (global.minutes >= 10) {
    draw_text(xPosition, yPosition, string(global.minutes)+" : 0"+string(global.seconds)+" : "+string(global.miliseconds));
} else if (global.seconds >= 10) && (global.minutes < 10) {
    draw_text(xPosition, yPosition, "0" + string(global.minutes)+" : "+string(global.seconds)+" : "+string(global.miliseconds));
} else {
    draw_text(xPosition, yPosition, string(global.minutes)+" : "+string(global.seconds)+" : "+string(global.miliseconds));
}
