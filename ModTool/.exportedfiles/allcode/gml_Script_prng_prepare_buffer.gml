var _size = argument0;
var _buf = global.__PRNG_buffer;

if (_buf == undefined)
{
    _buf = buffer_create(_size, buffer_grow, 1);
    global.__PRNG_buffer = _buf;
}
else if (buffer_get_size(_buf) < _size)
{
    buffer_resize(_buf, _size);
}

buffer_seek(_buf, buffer_seek_start, 0);
return _buf;
