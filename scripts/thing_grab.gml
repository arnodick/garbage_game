///Controller
// argument0 = item's resting angle
// argument1 = minimum speed (mostly unused)

// when picked up, follow mouse, re-angle
if (picked_up == true)
{
    speed = (point_distance(mouse_x, mouse_y, x, y)/2);
    move_towards_point(mouse_x, mouse_y, speed);
    image_angle = argument0;
}

//spped clamp
if (speed > argument1)
{
    speed -= 0.7;
    if (speed < argument1)
    {
        speed = argument1;
    }
    else if (speed > 18)
    {
        speed = 18;
    }
    image_angle -= hspeed*3;    // angle item more if moving faster
}

// keep item in bounds! (unless falling off bottom of screen)
if (x < global.room_buffer)
{
    x = global.room_buffer;
}
if ((y < global.room_buffer*2) and (x > oDoor.door_width))
{
    y = global.room_buffer*2;
}
if (x > room_width - global.room_buffer)
{
    x = room_width - global.room_buffer;
}

// if in this area, score point
if ( (x <= (oDoor.door_width - global.room_buffer)) and (y <= global.room_buffer) )
{
    if (global.level_count != 3)    // unless passed 3 levels
    {
        oScene2.scored = true;
        instance_deactivate_object(id);
        if (object_index == oCoin)
        {
            score -= 11;
            if (instance_exists(oRaccoon_assault))
            {
                with (oRaccoon_assault)
                {
                    text = "MONEY#AIN'T#GARBAGE!!";
                    alarm[0] = room_speed * 6;
                }
            }
        }
        else if (object_index == oShard_special)
        {
            score += 9;
        }
    }
}
