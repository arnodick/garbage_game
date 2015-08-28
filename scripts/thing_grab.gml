///Controller
if (picked_up == true)
{
    speed = (point_distance(mouse_x, mouse_y, x, y)/2);
    move_towards_point(mouse_x, mouse_y, speed);
    image_angle = argument0;
}
if (speed > 0)
{
    speed -= 1;
    if (speed < 0)
    {
        speed = 0;
    }
    else if (speed > 18)
    {
        speed = 18;
    }
    image_angle -= hspeed*3;
}
if (x < room_buffer)
{
    x = room_buffer;
}
if (y < room_buffer)
{
    y = room_buffer;
}
if (x > room_width - room_buffer)
{
    x = room_width - room_buffer;
}
if (y > room_height - room_buffer)
{
    y = room_height - room_buffer;
}

if ( (x <= (oDoor.door_width - room_buffer)) and (y <= room_buffer) )
{
    oScene2.scored = true;
    instance_deactivate_object(id);
}
