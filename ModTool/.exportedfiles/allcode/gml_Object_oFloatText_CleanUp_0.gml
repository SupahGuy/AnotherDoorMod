if (owner != undefined)
{
    if (instance_exists(owner))
        array_delete(owner.fightText, 0, 1);
}

global.waitingList.remove(id);
g_clean_up();
