//argument0[0] = value to be oscillated
//argument0[1] = how much to increment the value
//argument1 = max value before decrement
//argument2 = min value before increment
if ( (argument0[0] >= argument1) or (argument0[0] <= argument2) )
{
    argument0[@ 1] = -argument0[@ 1];
}
argument0[@ 0] += argument0[@ 1];
