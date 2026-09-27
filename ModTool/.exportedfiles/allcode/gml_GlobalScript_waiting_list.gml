function waiting_list() constructor
{
    waitingList = [];
    waitingListCount = 0;
    
    set = function(arg0)
    {
        if (!is_in_list(arg0))
        {
            array_push(waitingList, arg0);
            waitingListCount++;
        }
    };
    
    empty = function()
    {
        waitingList = [];
        waitingListCount = 0;
    };
    
    remove = function(arg0)
    {
        var _index = array_get_index(waitingList, arg0);
        
        if (_index != -1)
        {
            array_delete(waitingList, _index, 1);
            waitingListCount--;
        }
    };
    
    get_waiting_list = function()
    {
        return waitingList;
    };
    
    is_waiting_list_empty = function()
    {
        return get_waiting_list_count() == 0;
    };
    
    get_waiting_list_count = function()
    {
        return waitingListCount;
    };
    
    is_in_list = function(arg0)
    {
        var _index = array_get_index(waitingList, arg0);
        
        if (_index != -1)
            return true;
        else
            return false;
    };
}
