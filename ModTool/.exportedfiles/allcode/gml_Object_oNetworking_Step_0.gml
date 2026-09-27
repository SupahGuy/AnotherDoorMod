if (is_steam_init())
    steam_update();

if (timeOutCreateHost.is_finished())
{
    timeOutCreateHost.reset();
    host_create_failed();
}

if (timeOutJoinHost.is_finished())
{
    timeOutJoinHost.reset();
    join_host_failed();
}

var _hasBufferImportant = true;

while (_hasBufferImportant)
{
    buffer_seek(bufferImportant, buffer_seek_start, 0);
    var _dataSizeImportant = steam_net_messages_receive_on_channel(UnknownEnum.Value_0, bufferImportant, buffer_get_size(bufferImportant));
    
    if (_dataSizeImportant)
        event_handler(bufferImportant);
    else
        _hasBufferImportant = false;
}

var _hasBufferNotVital = true;

while (_hasBufferNotVital)
{
    buffer_seek(bufferNotVital, buffer_seek_start, 0);
    var _dataSizebufferNotVital = steam_net_messages_receive_on_channel(UnknownEnum.Value_1, bufferNotVital, buffer_get_size(bufferNotVital));
    
    if (_dataSizebufferNotVital)
        event_handler(bufferNotVital);
    else
        _hasBufferNotVital = false;
}

enum UnknownEnum
{
    Value_0,
    Value_1
}
