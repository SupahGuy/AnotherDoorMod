function InputManualCollect()
{
    __InputError("Cannot call InputManualCollect(), INPUT_COLLECT_MODE must be set to 2 (=", 0, ")");
    __InputCollect();
}
