event_inherited();

if (theClover != -4)
    instance_destroy(theClover);

global.waitingList.remove(id);
g_clean_up();
