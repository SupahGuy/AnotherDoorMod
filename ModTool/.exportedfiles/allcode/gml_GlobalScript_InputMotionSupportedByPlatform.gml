function InputMotionSupportedByPlatform()
{
    static _result = false || (true && InputGetSteamInfo(UnknownEnum.Value_0));
    
    return _result;
}

enum UnknownEnum
{
    Value_0
}
