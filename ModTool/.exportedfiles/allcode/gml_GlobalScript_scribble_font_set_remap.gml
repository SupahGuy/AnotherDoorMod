function scribble_font_set_remap(arg0, arg1)
{
    with (__scribble_get_font_data(arg0))
    {
        if (__remap != arg1)
        {
            __remap = arg1;
            __scribble_flush_nodels();
        }
    }
}
