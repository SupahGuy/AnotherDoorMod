if (!variable_instance_exists(id, "spritePaneTop"))
    spritePaneTop = sprPlatoniaPaneTop;

if (!variable_instance_exists(id, "spritePaneBottom"))
    spritePaneBottom = sprPlatoniaPaneBottom;

if (!variable_instance_exists(id, "slotNumber"))
    slotNumber = 1;

if (!variable_instance_exists(id, "itemsList"))
    itemsList = [];

if (!variable_instance_exists(id, "nbrItemsVisible"))
    nbrItemsVisible = 2;

if (!variable_instance_exists(id, "spriteBg"))
    spriteBg = undefined;

slotHeight = sprite_get_height(spritePaneTop) + sprite_get_height(spritePaneBottom);
slotWidth = sprite_get_width(spritePaneTop);
paneTopY = 0;
paneTopYTo = paneTopY;
paneTopYInit = paneTopYTo;
paneBottomY = (slotHeight / 2) * global.zoom;
paneBottomYTo = paneBottomY;
paneBottomYInit = paneBottomY;
heightItem = slotHeight / nbrItemsVisible;
yItemDrawMin = -heightItem;
yItemDrawMax = slotHeight;
yModuloMax = array_length(itemsList) * heightItem;
bearingOffset = 0;
shouldBearingsStop = false;
canBearingsStop = false;
bearingStopTurnMax = array_length(itemsList) * heightItem * (slotNumber + 1);
bearingStopTurnCounter = 0;
bearingStopNbr = 0;
bearingStopY = (((slotHeight - heightItem) / 2) * nbrItemsVisible) - (heightItem / 2);
bearingSpeed = 6;
bearingCallback = undefined;

stop_on_item_nbr = function(arg0, arg1 = undefined)
{
    canBearingsStop = false;
    bearingStopTurnCounter = 0;
    shouldBearingsStop = true;
    bearingStopNbr = arg0;
    bearingCallback = arg1;
};

closePane = function()
{
    stateNext = UnknownEnum.Value_1;
};

openPane = function()
{
    stateNext = UnknownEnum.Value_0;
};

openPaneCallback = undefined;
openPaneCallbackPlayed = false;
timerDelayDefault = 0.125 * slotNumber;
timerClosePane = new myTimer(id, 0.3, timerDelayDefault, 1, "bounce-ease-out");
timerOpenPane = new myTimer(id, 0.25, timerDelayDefault, 1, "ease-in");
clipMaskSurface = -1;
canVfxSmoke = true;
pePane = part_emitter_create(global.particlesSys);
part_emitter_region(global.particlesSys, pePane, x, x + slotWidth, (y + (slotHeight / 2)) - 2, y + (slotHeight / 2) + 2, 0, 0);
pePaneSmoke = part_emitter_create(global.particlesSys);
part_emitter_region(global.particlesSys, pePaneSmoke, x, x + slotWidth, (y + (slotHeight / 2)) - 8, y + (slotHeight / 2) + 8, 0, 0);
checkForShock = false;
stateBearings = UnknownEnum.Value_1;
stateBearingsNext = UnknownEnum.Value_1;
stateBearingsPrev = UnknownEnum.Value_1;
state = UnknownEnum.Value_1;
stateNext = UnknownEnum.Value_1;
statePrev = UnknownEnum.Value_1;

enum UnknownEnum
{
    Value_0,
    Value_1
}
