var _box_0 = argument0;

if (_box_0[0] != global.__ptrt_MINSTD)
{
    show_error("Expected a MINSTD, got " + string(_box_0), true);
    exit;
}

var _ptr_0 = _box_0[1];
_ptr_0 = _box_0[1];

if (int64(_ptr_0) == 0)
{
    show_error("This MINSTD is destroyed.", true);
    exit;
}

_box_0[1] = ptr(0);
minstd_destroy_raw(_ptr_0);
