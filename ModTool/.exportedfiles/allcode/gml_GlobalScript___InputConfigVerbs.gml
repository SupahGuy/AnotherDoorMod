function __InputConfigVerbs()
{
    InputDefineVerb(UnknownEnum.Value_0, "scroll_up", 40964, [-32788]);
    InputDefineVerb(UnknownEnum.Value_1, "scroll_down", 40965, [32788]);
    InputDefineVerb(UnknownEnum.Value_2, "up", 32781, -32786);
    InputDefineVerb(UnknownEnum.Value_3, "down", 32782, 32786);
    InputDefineVerb(UnknownEnum.Value_4, "left", 32783, -32785);
    InputDefineVerb(UnknownEnum.Value_5, "right", 32784, 32785);
    InputDefineVerb(UnknownEnum.Value_6, "bottomChoice", 1, 32769);
    InputDefineVerb(UnknownEnum.Value_7, "leftChoice", undefined, 32771);
    InputDefineVerb(UnknownEnum.Value_8, "rightChoice", undefined, 32770);
    InputDefineVerb(UnknownEnum.Value_9, "topChoice", undefined, 32772);
    InputDefineVerb(UnknownEnum.Value_10, "enter", 13, undefined);
    InputDefineVerb(UnknownEnum.Value_12, "pause", 27, 32778);
    InputDefineVerb(UnknownEnum.Value_13, "show_mouse", 32, undefined);
    InputDefineCluster(UnknownEnum.Value_0, UnknownEnum.Value_2, UnknownEnum.Value_5, UnknownEnum.Value_3, UnknownEnum.Value_4);
}

enum UnknownEnum
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_6,
    Value_7,
    Value_8,
    Value_9,
    Value_10,
    Value_12 = 12,
    Value_13
}
