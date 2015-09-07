//argument0 = value to be oscillated
//argument1 = how much to increment the value
//argument2 = max value before decrement
//argument3 = min value before increment
if ( (argument0[0] >= argument1) or (argument0[0] <= argument2) )
{
    argument0[@ 1] = -argument0[@ 1];
}
argument0[@ 0] += argument0[@ 1];
