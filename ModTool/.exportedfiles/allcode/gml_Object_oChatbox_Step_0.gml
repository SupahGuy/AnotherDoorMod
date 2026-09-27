with (oCursor)
{
    if (chatBoxCreatedThisStep)
        exit;
    
    if (InputPlayerGetGhost(other.number))
        exit;
    
    if (instance_exists(other.theButton))
    {
        if (other.theButton.is_released() || is_verb_active(UnknownEnum.Value_10, UnknownEnum.Value_1))
        {
            other.send_message();
            instance_destroy(other);
        }
    }
}

enum UnknownEnum
{
    Value_1 = 1,
    Value_10 = 10
}
