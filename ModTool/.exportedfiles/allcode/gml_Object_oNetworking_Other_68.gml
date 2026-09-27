var t = ds_map_find_value(async_load, "type");
var n_id = ds_map_find_value(async_load, "id");

if (t == 3)
{
    var _buffer = ds_map_find_value(async_load, "buffer");
    event_handler(_buffer, n_id);
}
