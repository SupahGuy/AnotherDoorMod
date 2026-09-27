if (!variable_instance_exists(id, "number"))
    number = 0;

inputWidth = 160;
theInput = instance_create_depth(0, 0, depth - 1, oGuiInput, 
{
    sprite_index: sprButtonPlay,
    charLimit: 64,
    inputType: UnknownEnum.Value_1,
    widthFixed: inputWidth,
    heightFixed: 24
});
theInput.set_padding(12, 10, 12, 10);
theInput.focus(number);
theInput.set_paused(false);
chatboxTitle = scribble("chatbox._title").starting_format("ftAlkhemikalSh", global.color.grey1).scale(global.fontScaleTitle).align(1, 0);
messageToTxt = scribble("chatbox._recipient").align(0, 0);
messageLabel = scribble("chatbox._message").align(0, 0);
theButton = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "chatbox._send",
    heightFixed: 24
});
theButton.set_paused(false);

send_message = function()
{
    var _value = theInput.get_value();
    var _characterSpeaking = global.playersManager.get_characters(number);
    var _xDestination = _characterSpeaking.xUi + 19;
    var _yDestination = _characterSpeaking.yUi - 16;
    
    if (string_length(_value) != 0)
    {
        for (var _i = 0; _i < array_length(buttonsPlayer); _i++)
        {
            if (!buttonsPlayer[_i].isCheck)
                continue;
            
            generate_chatbox_tooltip(number, _xDestination, _yDestination, _value, buttonsPlayer[_i].value, true);
        }
    }
};

var _xBtn = 0;
buttonsPlayer = [];
nodeBtnPlayer = [];
var _lengthBtn = global.playersCount;

for (var _p = 0; _p < _lengthBtn; _p++)
{
    if (!InputPlayerGetGhost(_p))
        continue;
    
    var _pName = LocPreprocessor($"player._p#{_p + 1}");
    var _mercName = global.playersManager.get_name(_p);
    var _btn = instance_create_depth(0, 0, depth - 1, oGuiCheckbox, 
    {
        sprite_index: sprButtonPlay,
        label: $"[p{_p}]{_pName} - {_mercName}[/c]",
        heightFixed: 24,
        labelAlignH: 0,
        value: _p
    });
    _btn.set_padding(0, 8, 0, 22);
    _btn.set_paused(false);
    _xBtn += _btn.get_width();
    array_push(buttonsPlayer, _btn);
    array_push(nodeBtnPlayer, new cFlexStruct($"btn{_p}", UnknownEnum.Value_3, _btn));
}

textTitle = scribble("settings._textTitle", "title").starting_format("ftMonobitSh", global.color.grey4);
n_root = flexpanel_create_node(
{
    data: 
    {
        type: "node"
    },
    width: "100%",
    height: global.gameHeight,
    alignItems: "center",
    justifyContent: "center",
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
            flexDirection: "row",
            alignItems: "center",
            justifyContent: "center",
            paddingBottom: 16,
            data: 
            {
                type: "node"
            },
            flexWrap: "wrap",
            nodes: [new cFlexStruct("textTitle", UnknownEnum.Value_1, chatboxTitle)]
        }, 
        {
            flexDirection: "row",
            alignItems: "center",
            paddingBottom: 2,
            data: 
            {
                type: "node"
            },
            flexWrap: "wrap",
            nodes: [new cFlexStruct("textTitle", UnknownEnum.Value_1, messageToTxt)]
        }, 
        {
            flexDirection: "row",
            alignItems: "center",
            paddingBottom: 16,
            gap: 4,
            data: 
            {
                type: "node"
            },
            flexWrap: "wrap",
            nodes: nodeBtnPlayer
        }, 
        {
            flexDirection: "row",
            alignItems: "center",
            paddingBottom: 2,
            data: 
            {
                type: "node"
            },
            flexWrap: "wrap",
            nodes: [new cFlexStruct("textTitle", UnknownEnum.Value_1, messageLabel)]
        }, 
        {
            flexDirection: "row",
            alignItems: "center",
            marginBottom: 20,
            data: 
            {
                type: "node"
            },
            nodes: [new cFlexStruct("btn", UnknownEnum.Value_3, theInput)]
        }, 
        {
            flexDirection: "row",
            alignItems: "center",
            data: 
            {
                type: "node"
            },
            nodes: [new cFlexStruct("btn", UnknownEnum.Value_3, theButton)]
        }]
    }]
});
flexpanel_calculate_layout(n_root, room_width, room_height, 0);
ik_flex_panel_generate_instance(n_root, 0, 0);

enum UnknownEnum
{
    Value_1 = 1,
    Value_3 = 3,
    Value_7 = 7
}
