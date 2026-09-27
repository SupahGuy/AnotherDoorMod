function forest_faun()
{
    monster_script_end = function()
    {
        with (oChain)
        {
            if (token != -4)
                instance_destroy(token);
            
            instance_destroy();
        }
    };
    
    activate_dialogue = function(arg0 = -1)
    {
        var _alignY = UnknownEnum.Value_0;
        var _alignX = UnknownEnum.Value_2;
        var _close = UnknownEnum.Value_1;
        ini_open("lore.ini");
        var _dialNbr = ini_read_real("faun", "encounter", 0);
        _dialNbr = (_dialNbr + 1) % 4;
        ini_write_real("faun", "encounter", _dialNbr);
        ini_close();
        instance_create_depth(200, 80, 0, oDialogue, new cDialogue($"faun._choice{_dialNbr}", _alignX, _alignY, UnknownEnum.Value_3, _close));
    };
    
    global.monsters.faun = new c_monster("faun", "monster._faun", "monster._faunDesc", "MonsterFaun", UnknownEnum.Value_6, [[]], [], monster_script_end, activate_dialogue);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_6 = 6
}
