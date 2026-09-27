function InputManualUpdate()
{
    __InputError("Cannot call InputManualUpdate(), INPUT_UPDATE_AFTER_COLLECT must be set to `false` (=", true, ")");
    __InputPlugInExecuteCallbacks(UnknownEnum.Value_1);
}

enum UnknownEnum
{
    Value_1 = 1
}
