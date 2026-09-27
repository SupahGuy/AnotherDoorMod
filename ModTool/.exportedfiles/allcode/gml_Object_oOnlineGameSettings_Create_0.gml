depth = global.depthManager.get_depth("settings");

if (!global.lobbyNameChanged && steam_initialised())
{
    var _name = steam_get_persona_name();
    _name = string_replace_all(_name, "[", "[[");
    global.lobbyNameDefault = LocPreprocessor($"lobby._defaultName#{steam_get_persona_name()}");
}

buttonList = [];
lobbyNameInput = instance_create_depth(0, 0, depth - 1, oGuiInput, 
{
    sprite_index: sprButtonPlay,
    charLimit: 50,
    value: global.lobbyNameDefault,
    widthFixed: 160,
    heightFixed: 24
});
lobbyNameInput.set_padding(12, 10, 12, 10);
array_push(buttonList, lobbyNameInput);
radioFriend = instance_create_depth(0, 0, depth - 1, oGuiRadio, 
{
    sprite_index: sprButtonRadioLeft,
    label: "menu._onlineGamePrivate",
    value: UnknownEnum.Value_1,
    labelAlignH: 0
});
array_push(buttonList, radioFriend);
radioPublic = instance_create_depth(0, 0, depth - 1, oGuiRadio, 
{
    sprite_index: sprButtonRadioRight,
    label: "menu._onlineGamePublic",
    value: UnknownEnum.Value_2,
    labelAlignH: 0
});
array_push(buttonList, radioPublic);

if (global.lobbyTypeDefault == UnknownEnum.Value_1)
    radioFriend.set_radio_checked();
else if (global.lobbyTypeDefault == UnknownEnum.Value_2)
    radioPublic.set_radio_checked();

radioFriend.set_radio_linked([radioPublic]);
radioPublic.set_radio_linked([radioFriend]);
radio2Players = instance_create_depth(0, 0, depth - 1, oGuiRadio, 
{
    sprite_index: sprButtonRadioLeft,
    label: "2",
    value: 2,
    labelAlignH: 0
});
array_push(buttonList, radio2Players);
radio3Players = instance_create_depth(0, 0, depth - 1, oGuiRadio, 
{
    sprite_index: sprButtonRadioCenter,
    label: "3",
    value: 3,
    labelAlignH: 0
});
array_push(buttonList, radio3Players);
radio4Players = instance_create_depth(0, 0, depth - 1, oGuiRadio, 
{
    sprite_index: sprButtonRadioRight,
    label: "4",
    value: 4,
    labelAlignH: 0
});
array_push(buttonList, radio4Players);

if (global.lobbyNbrPlayersDefault == 2)
    radio2Players.set_radio_checked();
else if (global.lobbyNbrPlayersDefault == 3)
    radio3Players.set_radio_checked();
else if (global.lobbyNbrPlayersDefault == 4)
    radio4Players.set_radio_checked();

radio2Players.set_radio_linked([radio3Players, radio4Players]);
radio3Players.set_radio_linked([radio2Players, radio4Players]);
radio4Players.set_radio_linked([radio2Players, radio3Players]);
btnConfirmLobby = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "menu._host",
    alignH: UnknownEnum.Value_0,
    alignV: UnknownEnum.Value_0,
    heightFixed: 24
});
array_push(buttonList, btnConfirmLobby);
btnCloseMenu = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "global._cancel",
    alignH: UnknownEnum.Value_0,
    alignV: UnknownEnum.Value_0,
    heightFixed: 24
});
array_push(buttonList, btnCloseMenu);
var _modalTitle = scribble("menu._gameSettingsTitle").scale(global.fontScaleTitle).starting_format("ftAlkhemikalSh", global.color.grey1);
var _lobbyName = scribble("lobby._name");
var _lobbyType = scribble("lobby._type");
var _numberOfPlayersTitle = scribble("menu._numberOfPlayers");
var _titleHeight = round(_lobbyType.get_height() / global.zoom);
var _textHeight = round(_lobbyType.get_height() / global.zoom);
arrayElements = 
{
    modalTitle: new cFlexStruct("modalTitle", UnknownEnum.Value_1, _modalTitle, _titleHeight),
    lobbyName: new cFlexStruct("lobbyName", UnknownEnum.Value_1, _lobbyName, _textHeight),
    lobbyNameInput: new cFlexStruct("lobbyNameInput", UnknownEnum.Value_3, lobbyNameInput),
    lobbyType: new cFlexStruct("lobbyType", UnknownEnum.Value_1, _lobbyType, _textHeight),
    radioFriend: new cFlexStruct("radioFriend", UnknownEnum.Value_3, radioFriend, radioFriend.get_height(), radioFriend.get_width()),
    radioPublic: new cFlexStruct("radioPublic", UnknownEnum.Value_3, radioPublic, radioPublic.get_height(), radioPublic.get_width()),
    numberOfPlayersTitle: new cFlexStruct("numberOfPlayersTitle", UnknownEnum.Value_1, _numberOfPlayersTitle, _textHeight),
    radio2Players: new cFlexStruct("radio2Players", UnknownEnum.Value_3, radio2Players, radio2Players.get_height(), radio2Players.get_width()),
    radio3Players: new cFlexStruct("radio3Players", UnknownEnum.Value_3, radio3Players, radio3Players.get_height(), radio3Players.get_width()),
    radio4Players: new cFlexStruct("radio4Players", UnknownEnum.Value_3, radio4Players, radio4Players.get_height(), radio4Players.get_width()),
    confirmLobbyButton: new cFlexStruct("confirmLobbyButton", UnknownEnum.Value_3, btnConfirmLobby, btnConfirmLobby.get_height(), btnConfirmLobby.get_width()),
    closeMenuButton: new cFlexStruct("closeMenuButton", UnknownEnum.Value_3, btnCloseMenu, btnCloseMenu.get_height(), btnCloseMenu.get_width())
};
n_root = flexpanel_create_node(
{
    data: 
    {
        type: "node"
    },
    direction: "ltr",
    alignItems: "center",
    alignContent: "center",
    justifyContent: "center",
    flexDirection: "column",
    nodes: [
    {
        name: "mainBlock",
        flexDirection: "column",
        data: 
        {
            type: UnknownEnum.Value_7,
            element: sprBgDialogue3
        },
        paddingTop: 24,
        paddingLeft: 24,
        paddingRight: 24,
        paddingBottom: 24,
        gap: 0,
        nodes: [
        {
            justifyContent: "center",
            flexDirection: "row",
            marginBottom: 24,
            data: 
            {
                type: "node"
            },
            nodes: [arrayElements.modalTitle]
        }, 
        {
            flexDirection: "row",
            marginBottom: 4,
            data: 
            {
                type: "node"
            },
            nodes: [arrayElements.lobbyName]
        }, 
        {
            flexDirection: "row",
            marginBottom: 16,
            data: 
            {
                type: "node"
            },
            nodes: [arrayElements.lobbyNameInput]
        }, 
        {
            flexDirection: "row",
            marginBottom: 4,
            data: 
            {
                type: "node"
            },
            nodes: [arrayElements.lobbyType]
        }, 
        {
            flexDirection: "row",
            data: 
            {
                type: "node"
            },
            gap: 0,
            nodes: [arrayElements.radioFriend, arrayElements.radioPublic]
        }, 
        {
            flexDirection: "row",
            marginTop: 16,
            marginBottom: 4,
            data: 
            {
                type: "node"
            },
            nodes: [arrayElements.numberOfPlayersTitle]
        }, 
        {
            flexDirection: "row",
            data: 
            {
                type: "node"
            },
            gap: 0,
            nodes: [arrayElements.radio2Players, arrayElements.radio3Players, arrayElements.radio4Players]
        }, 
        {
            flexDirection: "row",
            data: 
            {
                type: "node"
            },
            marginTop: 24,
            gap: 8,
            nodes: [arrayElements.confirmLobbyButton, arrayElements.closeMenuButton]
        }]
    }]
});
flexpanel_calculate_layout(n_root, room_width, room_height, 0);
ik_flex_panel_generate_instance(n_root, 0, 0);

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_7 = 7
}
