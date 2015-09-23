///Controller
if (picked_up == true)
{
    speed = (point_distance(mouse_x, mouse_y, x, y)/2);
    move_towards_point(mouse_x, mouse_y, speed);
    image_angle = argument0;
}

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
    image_angle -= hspeed*3;
}

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
/*
if (y > room_height - global.room_buffer)
{
    y = room_height - global.room_buffer;
}*/

if ( (x <= (oDoor.door_width - global.room_buffer)) and (y <= global.room_buffer) )
{
    if (global.level_count != 3)
    {
        oScene2.scored = true;
        instance_deactivate_object(id);
    }
}
