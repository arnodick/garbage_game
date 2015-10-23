///Controller
// argument0 = item's resting angle
// argument1 = minimum speed (mostly unused)

// when picked up, follow mouse, re-angle
if (picked_up == true)
{
    speed = (point_distance(mouse_x, mouse_y, x, y)/2);
    move_towards_point(mouse_x, mouse_y, speed);
    image_angle = argument0;
    picked_up_once = true;
}
else
{
    speed = 4;
    image_angle -= hspeed*3;    // angle item more if moving faster
    
    // keep item in bounds! (unless falling off bottom of screen)
    if (x < global.room_buffer)
    {
        hspeed = -hspeed;
    }
    else if (x > room_width - global.room_buffer)
    {
        hspeed = -hspeed;
    }
    if (picked_up_once == false)
    {
        if (y < global.room_buffer*2)
        {
            vspeed = -vspeed;
        }
        else if (y > room_height - global.room_buffer)
        {
            vspeed = -vspeed;
        }
    }
    else
    {
        if ((y < global.room_buffer*2) and (x > oDoor.door_width))
        {
            vspeed = -vspeed;
        }
        else if (y > room_height - global.room_buffer)
        {
            vspeed = -vspeed;
        }
    }
}


// if in this area, score point
if ( (x <= (oDoor.door_width - global.room_buffer)) and (y <= global.room_buffer) )
{
    if (global.level_count != 3)    // unless passed 3 levels
    {
        oScene2.scored = true;
        if (!instance_exists(oWin)) //unless level is done
        {
            score += 9;
        }
        instance_deactivate_object(id);
    }
}
