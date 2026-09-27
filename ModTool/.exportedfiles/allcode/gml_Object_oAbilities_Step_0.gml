event_inherited();

if (state == UnknownEnum.Value_0)
{
    if (statePrev != state)
    {
        if (is_pressed())
            stateNext = UnknownEnum.Value_1;
    }
}
else if (state == UnknownEnum.Value_1)
{
}
else if (state == UnknownEnum.Value_2)
{
}

statePrev = state;
state = stateNext;

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2
}
