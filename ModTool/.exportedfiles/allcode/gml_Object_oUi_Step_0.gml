if (room != roomStage)
    exit;

if (instance_exists(btnCursor))
{
    if (btnCursor.is_released())
    {
        var _clickNbr = btnCursor.who_released();
        
        if (_clickNbr != undefined)
        {
            var _cursor = global.playersManager.get_cursor(_clickNbr);
            _cursor.show_cursor(!_cursor.isCursorVisible, _clickNbr, true);
        }
    }
}

if (instance_exists(btnSettings))
{
    if (btnSettings.is_released())
    {
        with (oSettings)
            switch_state();
    }
}
