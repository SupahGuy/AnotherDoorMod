if (InputPressed(UnknownEnum.Value_7, 0))
{
    monstersCounter = (monstersCounter + 1) % get_size(global.monsters);
    set_current_monster(monstersCounter);
}

if (InputPressed(UnknownEnum.Value_8, 0))
{
    if (monstersCounter == 0)
        monstersCounter = get_size(global.monsters) - 1;
    else
        monstersCounter--;
    
    set_current_monster(monstersCounter);
}

enum UnknownEnum
{
    Value_7 = 7,
    Value_8
}
