title = scribble("settings._controllerDisconnected").align(1, 0);
titleH = title.get_bbox(0, 0).height;
desc = scribble("settings._controllerDisconnected2").wrap(192 * global.zoom).align(1, 0);
descH = desc.get_bbox(0, 0).height;
txtSpacing = 8;
controllerSpacing = 24;
animSuccess = new myTimer(id, 0.3);

update_text = function()
{
    desc = scribble("settings._controllerDisconnected2").wrap(192 * global.zoom).align(1, 0);
};
