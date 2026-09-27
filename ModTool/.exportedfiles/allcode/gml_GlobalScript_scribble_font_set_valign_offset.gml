function scribble_font_set_valign_offset(arg0, arg1, arg2)
{
    if (arg1 == "pin_top")
        arg1 = 3;
    
    if (arg1 == "pin_middle")
        arg1 = 4;
    
    if (arg1 == "pin_bottom")
        arg1 = 5;
    
    __scribble_get_font_data(arg0).__valign_offset_array[arg1] = arg2;
}
