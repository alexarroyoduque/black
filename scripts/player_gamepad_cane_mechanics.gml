//cane mechanics
if (global.padIndex != -1)
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
        if !instance_exists(cane_obj)
        {
           
            with (instance_create(x, y, cane_obj))
            {
                speed = 0;
                image_angle = dif;
                direction = image_angle;
            }
        }
        //if it exists moves the cane
        else
        {
            with(cane_obj)
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
        if instance_exists(cane_obj)
        {

          with (cane_obj)
          {
            instance_destroy();
          }  
        }
    }
}
