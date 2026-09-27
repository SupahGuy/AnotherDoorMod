function __InputGamepadIdentifyDescriptionType(arg0)
{
    arg0 = string_lower(arg0);
    
    if (__InputStringContains(arg0, "joy-con (l)", "left joy-con"))
        return 6;
    else if (__InputStringContains(arg0, "joy-con (r)", "right joy-con"))
        return 7;
    else if (__InputStringContains(arg0, "ps5", "dualsense", "backbone one playstation"))
        return 4;
    else if (__InputStringContains(arg0, "ps4", "ps3", "ps2", "ps1", "psx", "playstation", "dualshock", "sony", "8bitdo p30"))
        return 3;
    else if (__InputStringContains(arg0, "xinput", "xbox", "stadia", "luna", "amazon game", "steam", "nimbus", "horipad ultimate", "mfi"))
        return 2;
    else if (__InputStringContains(arg0, "joy-con (l/r)", "for switch", "for nintendo switch", "switch controller", "switch pro", "lic pro", "mobapad", "8bitdo", "retroid", "odin", "wii", "snes", "sfc"))
        return 5;
    
    return undefined;
}
