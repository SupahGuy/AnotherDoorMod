if (room == roomInit)
{
    init_game();
    
    if (global.firstInit)
        room_goto(roomSplashScreen);
    else
        room_goto(roomStart);
}
else if (room == roomStage)
{
    with (oCursor)
    {
        set_sprite(UnknownEnum.Value_0);
        set_cursor_visibility_forced(false);
    }
}
else if (room == roomIntroduction)
{
    instance_create_depth(0, 0, depth, oIntro);
}
else if (room == roomScore)
{
    with (oRoomTransition)
        open();
    
    instance_create_depth(0, 0, depth, oEnd);
}
else if (room == roomShop)
{
    room_goto(roomStage);
}
else if (room == roomBestiary)
{
    instance_create_depth(0, 0, depth, oBestiary);
}
else if (room == roomStart)
{
    part_particles_clear(global.particlesSys);
    instance_create_depth(0, 0, global.depthManager.get_depth("ui"), oMenu);
    global.tvState.turn_off(true);
}

global.networkingManager.state_switched();

enum UnknownEnum
{
    Value_0
}
