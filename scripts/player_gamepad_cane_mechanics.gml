///caneMechanics(caneObject)
var caneObject = argument0;

if (global.padIndex != -1 && !is_undefined(caneObject))
{
    //takes directions from the right pad
    var h_point = gamepad_axis_value(global.padIndex, gp_axisrh);
    var v_point = gamepad_axis_value(global.padIndex, gp_axisrv);
    var pdir = point_direction(0, 0, h_point, v_point);
    var dif = angle_difference(pdir, image_angle);
    //rotates the player image
     if ( ((h_point != 0) || (v_point != 0)))
     {
        
        //if cane doesn't exists, creates the obj pointing to the player direction
        if !instance_exists(caneObject)
        {
           
            with (instance_create(x, y, caneObject))
            {
            show_debug_message('crea el baston');
                speed = 0;
                image_angle = dif;
                direction = image_angle;
            }
        }
        //if it exists moves the cane
        else
        {
            with(caneObject)
            {
                x = other.x + lengthdir_x(14, pdir);
                y = other.y + lengthdir_y(14, pdir);
                image_angle = dif;
            }
        }
     }

    
    //if both axis are equal to 0 the cane its removed
   if ( ((h_point == 0) && (v_point == 0)))
    {
        if instance_exists(caneObject)
        {

          with (caneObject)
          {
          show_debug_message('destruye el baston');
            instance_destroy();
          }  
        }
    }
}
