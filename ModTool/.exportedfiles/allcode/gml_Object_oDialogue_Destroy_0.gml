if (tooltipList != -1)
{
    if (numberInList < (totalListLength - 1))
    {
        var _struct = tooltipList[numberInList + 1];
        var _tooltip = instance_create_depth(xOrigin, yOrigin, 0, oDialogue, _struct);
    }
}

var _callBackDestroyLength = array_length(callBackDestroy);

if (_callBackDestroyLength > 0)
{
    for (var _c = 0; _c < _callBackDestroyLength; _c++)
        callBackDestroy[_c]();
}

global.waitingList.remove(id);
