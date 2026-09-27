function __scribble_gen_11_set_padding_flags()
{
    static _generator_state = __scribble_system().__generator_state;
    
    var _uses_halign_center, _uses_halign_left, _uses_halign_right;
    
    with (_generator_state)
    {
        _uses_halign_left = __uses_halign_left;
        _uses_halign_center = __uses_halign_center;
        _uses_halign_right = __uses_halign_right;
    }
    
    __pad_bbox_t = false;
    __pad_bbox_b = true;
    
    if (__valign == 0)
        __pad_bbox_t = false;
    
    if (__valign == 2)
        __pad_bbox_b = false;
    
    if (_uses_halign_center)
    {
        __pad_bbox_l = true;
        __pad_bbox_r = true;
    }
    else if (_uses_halign_left)
    {
        if (_uses_halign_right)
        {
            __pad_bbox_l = true;
            __pad_bbox_r = true;
        }
        else
        {
            __pad_bbox_l = false;
            __pad_bbox_r = true;
        }
    }
    else if (_uses_halign_right)
    {
        __pad_bbox_l = true;
        __pad_bbox_r = false;
    }
    else
    {
        __pad_bbox_l = false;
        __pad_bbox_r = true;
    }
}
