:[0]
call.i event_inherited(argc=0)
popz.v
push.s "inputType"@8838
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [2]

:[1]
push.l 0
pop.v.l builtin.inputType

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.clipMaskSurface
pushbltn.v builtin.undefined
pop.v.v builtin.lastKeyPressed
pushbltn.v builtin.undefined
pop.v.v builtin.keyPressed
push.s "charLimit"@8837
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [4]

:[3]
pushi.e -1
pop.v.i builtin.charLimit

:[4]
push.v builtin.value
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [6]

:[5]
push.s ""@61
conv.s.v
b [7]

:[6]
push.v builtin.value

:[7]
pop.v.v builtin.value
pushi.e 0
pop.v.i builtin.textOffsetX
pushglb.v global.fontOpenEnded
call.i draw_set_font(argc=1)
popz.v
push.v builtin.value
call.i string_width(argc=1)
pushglb.v global.fontScaleOpenEnded
mul.v.v
pop.v.v builtin.textWidth
b [67]

> gml_Script_anon@543@gml_Object_oGuiInput_Create_0 (locals=4, argc=0)
:[8]
pushbltn.v builtin.keyboard_key
dup.v 0
pushi.e 37
cmp.i.v EQ
bt [30]

:[9]
dup.v 0
pushi.e 39
cmp.i.v EQ
bt [30]

:[10]
dup.v 0
pushi.e 38
cmp.i.v EQ
bt [30]

:[11]
dup.v 0
pushi.e 40
cmp.i.v EQ
bt [30]

:[12]
dup.v 0
pushi.e 27
cmp.i.v EQ
bt [30]

:[13]
dup.v 0
pushi.e 16
cmp.i.v EQ
bt [30]

:[14]
dup.v 0
pushi.e 160
cmp.i.v EQ
bt [30]

:[15]
dup.v 0
pushi.e 164
cmp.i.v EQ
bt [30]

:[16]
dup.v 0
pushi.e 161
cmp.i.v EQ
bt [30]

:[17]
dup.v 0
pushi.e 165
cmp.i.v EQ
bt [30]

:[18]
dup.v 0
pushi.e 18
cmp.i.v EQ
bt [30]

:[19]
dup.v 0
pushi.e 9
cmp.i.v EQ
bt [30]

:[20]
dup.v 0
pushi.e 36
cmp.i.v EQ
bt [30]

:[21]
dup.v 0
pushi.e 35
cmp.i.v EQ
bt [30]

:[22]
dup.v 0
pushi.e 17
cmp.i.v EQ
bt [30]

:[23]
dup.v 0
pushi.e 162
cmp.i.v EQ
bt [30]

:[24]
dup.v 0
pushi.e 163
cmp.i.v EQ
bt [30]

:[25]
dup.v 0
pushi.e 13
cmp.i.v EQ
bt [30]

:[26]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [31]

:[27]
dup.v 0
pushi.e 46
cmp.i.v EQ
bt [31]

:[28]
b [37]

:[29]
b [66]

:[30]
b [66]

:[31]
pushbltn.v builtin.keyboard_lastkey
pushi.e 8
cmp.i.v EQ
bf [35]

:[32]
push.v builtin.value
call.i string_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [34]

:[33]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v builtin.value
call.i string_delete(argc=3)
pop.v.v builtin.value

:[34]
call.i @@This@@(argc=0)
push.v builtin.update_value_text
callv.v 0
popz.v
b [36]

:[35]
pushbltn.v builtin.keyboard_lastkey
pushi.e 46
cmp.i.v EQ
bf [36]

:[36]
b [66]

:[37]
pushbltn.v builtin.keyboard_lastchar
pop.v.v local._defaultValue
push.v builtin.charLimit
pushi.e -1
cmp.i.v NEQ
bf [39]

:[38]
push.v builtin.value
call.i string_length(argc=1)
push.v builtin.charLimit
cmp.v.v GTE
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
exit.i

:[42]
pushloc.v local._defaultValue
push.s ""@61
cmp.s.v EQ
bf [44]

:[43]
exit.i

:[44]
pushi.e 17
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bt [47]

:[45]
pushi.e 162
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
bt [47]

:[46]
pushi.e 163
conv.i.v
call.i keyboard_check(argc=1)
conv.v.b
b [48]

:[47]
push.e 1

:[48]
bf [50]

:[49]
pushbltn.v builtin.keyboard_key
pushi.e 86
cmp.i.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [59]

:[52]
call.i clipboard_has_text(argc=0)
conv.v.b
bf [58]

:[53]
push.v builtin.value
call.i string_length(argc=1)
push.v builtin.charLimit
cmp.v.v GTE
bf [56]

:[54]
exit.i

:[55]
b [57]

:[56]
push.v builtin.charLimit
push.v builtin.value
call.i string_length(argc=1)
sub.v.v
pushi.e 1
conv.i.v
call.i clipboard_get_text(argc=0)
call.i string_copy(argc=3)
pop.v.v local._defaultValue

:[57]
b [59]

:[58]
exit.i

:[59]
push.s ""@61
pop.v.s local._theValue
pushi.e 1
pop.v.i local._k

:[60]
pushloc.v local._k
pushloc.v local._defaultValue
call.i string_length(argc=1)
pushi.e 1
add.i.v
cmp.v.v LT
bf [65]

:[61]
pushloc.v local._k
pushloc.v local._defaultValue
call.i string_char_at(argc=2)
pop.v.v local._char
pushloc.v local._char
pushglb.v global.disabledCharacters
call.i array_contains(argc=2)
conv.v.b
bf [63]

:[62]
b [64]

:[63]
push.v local._theValue
pushloc.v local._char
add.v.v
pop.v.v local._theValue

:[64]
push.v local._k
push.e 1
add.i.v
pop.v.v local._k
b [60]

:[65]
pushloc.v local._theValue
push.v builtin.value
call.i string_concat(argc=2)
pop.v.v builtin.value
call.i @@This@@(argc=0)
push.v builtin.update_value_text
callv.v 0
popz.v
b [66]

:[66]
popz.v
exit.i

:[67]
push.i [function]gml_Script_anon@543@gml_Object_oGuiInput_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_value
b [69]

> gml_Script_anon@2426@gml_Object_oGuiInput_Create_0 (locals=0, argc=0)
:[68]
pushglb.v global.fontOpenEnded
call.i draw_set_font(argc=1)
popz.v
push.v builtin.value
call.i string_width(argc=1)
pushglb.v global.fontScaleOpenEnded
mul.v.v
pop.v.v builtin.textWidth
pushi.e 0
conv.i.v
push.v builtin.theWidth
push.v builtin.padX
sub.v.v
pushglb.v global.zoom
mul.v.v
push.v builtin.textWidth
sub.v.v
call.i min(argc=2)
pop.v.v builtin.textOffsetX
push.d 1.1
conv.d.v
push.d 0.9
conv.d.v
call.i random_range(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushref.i 33554445
pushref.i 33554444
pushref.i 33554443
call.i choose(argc=3)
call.i audio_play_sound(argc=6)
popz.v
exit.i

:[69]
push.i [function]gml_Script_anon@2426@gml_Object_oGuiInput_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_value_text
pushi.e 1
pop.v.b builtin.backspaceFirstTime
push.d 0.4
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.backspaceTimerFirst
push.d 0.05
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.backspaceTimer
b [71]

> gml_Script_anon@2890@gml_Object_oGuiInput_Create_0 (locals=0, argc=1)
:[70]
push.v arg.argument0
pop.v.v builtin.on_value_change
exit.i

:[71]
push.i [function]gml_Script_anon@2890@gml_Object_oGuiInput_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_on_value_change

:[end]