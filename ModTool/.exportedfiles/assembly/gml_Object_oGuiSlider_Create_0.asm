; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i event_inherited(argc=0)
popz.v
pushglb.v global.__ElementController
pop.v.v builtin.controller
pushi.e 100
pop.v.i builtin.valueVisual
pushi.e 100
pop.v.i builtin.newValueVisual
pushi.e 100
pop.v.i builtin.value
pushi.e 0
pop.v.i builtin.minRangeValue
pushi.e 100
pop.v.i builtin.maxRangeValue
pushi.e 0
pop.v.i builtin.minRangeVisualValue
pushi.e 100
pop.v.i builtin.maxRangeVisualValue
pushi.e 5
pop.v.i builtin.rangeStep
pushi.e 0
pop.v.i builtin.sliderDotX
push.v builtin.sliderDotX
pop.v.v builtin.sliderDotXTo
push.v builtin.valueVisual
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.valueTxt
pushbltn.v builtin.undefined
pop.v.v builtin.soundOnChange
b [6]

> gml_Script_anon@439@gml_Object_oGuiSlider_Create_0 (locals=0, argc=2)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument0

:[3]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e 100
pop.v.i builtin.argument1

:[5]
push.v arg.argument0
pop.v.v builtin.minRangeValue
push.v arg.argument1
pop.v.v builtin.maxRangeValue
exit.i

:[6]
push.i [function]gml_Script_anon@439@gml_Object_oGuiSlider_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.override_range_value
b [15]

> gml_Script_anon@574@gml_Object_oGuiSlider_Create_0 (locals=2, argc=2)
:[7]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.b builtin.argument1

:[9]
push.v arg.argument0
pop.v.v builtin.valueVisual
push.v builtin.maxRangeValue
push.v builtin.minRangeValue
push.v builtin.maxRangeVisualValue
push.v builtin.minRangeVisualValue
push.v builtin.valueVisual
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.value
push.v arg.argument1
conv.v.b
bf [11]

:[10]
push.v builtin.theSpriteWidth
pushi.e 0
conv.i.v
push.v builtin.maxRangeVisualValue
push.v builtin.minRangeVisualValue
push.v builtin.valueVisual
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.sliderDotXTo
b [12]

:[11]
push.v builtin.theSpriteWidth
pushi.e 0
conv.i.v
push.v builtin.maxRangeVisualValue
push.v builtin.minRangeVisualValue
push.v builtin.valueVisual
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.sliderDotX
push.v builtin.sliderDotX
pop.v.v builtin.sliderDotXTo

:[12]
push.v builtin.value
call.i @@This@@(argc=0)
push.v builtin.on_value_change
callv.v 1
popz.v
push.v builtin.valueVisual
call.i round(argc=1)
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.valueTxt
push.v builtin.soundOnChange
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [14]

:[13]
push.v builtin.soundOnChange
call.i array_length(argc=1)
pop.v.v local._soundsToPlay
pushloc.v local._soundsToPlay
pushi.e 1
sub.i.v
call.i irandom(argc=1)
pop.v.v local._randomSndIndex
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
pushi.e -6
pushloc.v local._randomSndIndex
conv.v.i
push.v [array]self.soundOnChange
call.i audio_play_sound(argc=6)
popz.v

:[14]
exit.i

:[15]
push.i [function]gml_Script_anon@574@gml_Object_oGuiSlider_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_value
b [17]

> gml_Script_anon@1453@gml_Object_oGuiSlider_Create_0 (locals=0, argc=0)
:[16]
exit.i

:[17]
push.i [function]gml_Script_anon@1453@gml_Object_oGuiSlider_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.on_value_change
b [19]

> gml_Script_anon@1494@gml_Object_oGuiSlider_Create_0 (locals=0, argc=1)
:[18]
push.v arg.argument0
pop.v.v builtin.on_value_change
exit.i

:[19]
push.i [function]gml_Script_anon@1494@gml_Object_oGuiSlider_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_on_value_change
b [21]

> gml_Script_anon@1578@gml_Object_oGuiSlider_Create_0 (locals=0, argc=1)
:[20]
push.v arg.argument0
pop.v.v builtin.soundOnChange
exit.i

:[21]
push.i [function]gml_Script_anon@1578@gml_Object_oGuiSlider_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_sound_on_change
pushi.e 100
conv.i.v
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.get_width
dup.e 2 0
callv.v 0
pushglb.v global.zoom
div.v.v
pop.v.v local._labelWidth

:[end]