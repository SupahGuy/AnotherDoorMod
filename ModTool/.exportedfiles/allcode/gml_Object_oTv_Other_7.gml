if (screenState == UnknownEnum.Value_16)
{
    image_speed = 0;
    image_index = sprite_get_number(sprite_index) - 1;
    screenStateNext = screenAfterTurnOn;
    screenAfterTurnOn = UnknownEnum.Value_22;
}
else if (screenState == UnknownEnum.Value_18)
{
    image_speed = 0;
    image_index = sprite_get_number(sprite_index) - 1;
    screenStateNext = UnknownEnum.Value_17;
}

enum UnknownEnum
{
    Value_16 = 16,
    Value_17,
    Value_18,
    Value_22 = 22
}
