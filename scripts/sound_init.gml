var args = argument_count;

for (var i = 0; i < args; i++)
{
    sound[i] = argument[i];
}
sound_amount = (i-1);

if (sound_amount == 0)
{
    if (sound[0] != -1)
    {
        audio_play_sound(sound[0], 1, false);
    }
}
else
{
    audio_play_sound(sound[irandom(sound_amount)], 1, false);
}
