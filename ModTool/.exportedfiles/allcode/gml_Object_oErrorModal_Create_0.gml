depth = global.depthManager.get_depth("settings");

if (!variable_instance_exists(id, "errorCallbackState"))
    errorCallbackState = UnknownEnum.Value_0;

if (!variable_instance_exists(id, "errorMessageLabel"))
    errorMessageLabel = "";

callbackOnceDestroy = function(arg0 = errorCallbackState)
{
    with (oMenu)
        stateNext = arg0;
};

btnClose = instance_create_depth(0, 0, depth - 1, oGuiButton, 
{
    sprite_index: sprButtonPlay,
    label: "global._cancel",
    alignH: UnknownEnum.Value_0,
    alignV: UnknownEnum.Value_0,
    heightFixed: 24
});
var _modalTitle = scribble("lobby._errorTitle");
var _errorText = scribble(errorMessageLabel).align(1, 0).wrap(192 * global.zoom);
arrayElements = 
{
    modalTitle: new cFlexStruct("modalTitle", UnknownEnum.Value_1, _modalTitle),
    errorText: new cFlexStruct("errorText", UnknownEnum.Value_1, _errorText),
    btnClose: new cFlexStruct("btnClose", UnknownEnum.Value_3, btnClose)
};
n_root = flexpanel_create_node(
{
    data: 
    {
        type: "node"
    },
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
            marginBottom: 8,
            data: 
            {
                type: "node"
            },
            nodes: [arrayElements.modalTitle]
        }, 
        {
            flexDirection: "row",
            data: 
            {
                type: "node"
            },
            justifyContent: "center",
            nodes: [arrayElements.errorText]
        }, 
        {
            flexDirection: "row",
            data: 
            {
                type: "node"
            },
            justifyContent: "center",
            marginTop: 16,
            nodes: [arrayElements.btnClose]
        }]
    }]
});
flexpanel_calculate_layout(n_root, room_width, room_height, 0);
ik_flex_panel_generate_instance(n_root, 0, 0);

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_3 = 3,
    Value_7 = 7
}
