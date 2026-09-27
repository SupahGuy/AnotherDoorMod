if (btnWannaLeave.is_pressed())
{
    var _numberWhoCliked = btnWannaLeave.who_clicked();
    
    if (_numberWhoCliked != undefined)
    {
        wannaWait[_numberWhoCliked] = false;
        check_counter_no_wait();
    }
}
