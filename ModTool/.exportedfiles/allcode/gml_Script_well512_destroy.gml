var _box_0 = argument0;

if (_box_0[0] != global.__ptrt_WELL512)
{
    show_error("Expected a WELL512, got " + string(_box_0), true);
    exit;
}

var _ptr_0 = _box_0[1];
_ptr_0 = _box_0[1];

if (int64(_ptr_0) == 0)
{
    show_error("This WELL512 is destroyed.", true);
    exit;
}

_box_0[1] = ptr(0);
well512_destroy_raw(_ptr_0);
