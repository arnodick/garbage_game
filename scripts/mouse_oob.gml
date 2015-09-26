///is_mouse_outside()
var app_pos;
if(window_get_fullscreen())
{
    app_pos = application_get_position();    
}
else
{
    app_pos[0] = window_get_x();
    app_pos[1] = window_get_y();
    app_pos[2] = app_pos[0] + window_get_width();
    app_pos[3] = app_pos[1] + window_get_height();   
}

var mouse_pos;
mouse_pos[0] = display_mouse_get_x();
mouse_pos[1] = display_mouse_get_y();

var outside = mouse_pos[0]<app_pos[0] 
    or mouse_pos[0]>app_pos[2] 
    or mouse_pos[1]<app_pos[1] 
    or mouse_pos[1]>app_pos[3]; 
    
/*
var debug_out;
debug_out[0] = app_pos;
debug_out[1] = mouse_pos;
debug_out[2] = outside;

show_debug_message(debug_out);
*/
return outside;
