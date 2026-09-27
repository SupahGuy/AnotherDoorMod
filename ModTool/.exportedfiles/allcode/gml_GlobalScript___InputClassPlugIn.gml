function __InputClassPlugIn(arg0, arg1, arg2, arg3, arg4) constructor
{
    static __Initialize = function()
    {
        __InputTrace("Using plug-in version ", __version, " for Input version ", __targetInputVersion, ": ", __author, "'s ", __alias);
        __initCallback();
    };
    
    __alias = arg0;
    __author = arg1;
    __version = arg2;
    __targetInputVersion = arg3;
    __initCallback = arg4;
}
