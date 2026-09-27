function get_stacking_percentage(arg0, arg1)
{
    return (1 - (1 / (1 + ((arg1 / 100) * arg0)))) * 100;
}

function calculate_percentage_reduction(arg0, arg1)
{
    return (arg0 * arg1) / 100;
}
