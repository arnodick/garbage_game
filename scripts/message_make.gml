//argument0 = x
//argument1 = y
//argument2 = text string
//argument3 = duration
var mess = instance_create(argument0, argument1, oMessage);
with (mess)
{
    text = argument2;
    alarm[9] = argument3;
}
