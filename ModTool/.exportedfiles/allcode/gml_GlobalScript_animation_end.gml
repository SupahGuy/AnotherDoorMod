function animation_end()
{
    var _sprite = (argument_count > 0) ? argument[0] : sprite_index;
    var _image = (argument_count > 1) ? argument[1] : image_index;
    var _type = sprite_get_speed_type(_sprite);
    var _spd = sprite_get_speed(_sprite) * image_speed;
    
    if (_type == 0)
        _spd = _spd / room_speed;
    
    if (argument_count > 2)
        _spd = argument[2];
    
    if (sign(_spd))
        return (_image + _spd) >= sprite_get_number(_sprite);
    else
        return (_image + _spd) <= 0;
}
