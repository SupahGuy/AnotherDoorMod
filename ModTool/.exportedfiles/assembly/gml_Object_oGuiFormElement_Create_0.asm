:[0]
call.i event_inherited(argc=0)
popz.v
push.s "label"@8853
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [2]

:[1]
pushbltn.v builtin.undefined
pop.v.v builtin.label

:[2]
push.s "labelAlignH"@8873
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [4]

:[3]
pushi.e 1
pop.v.i builtin.labelAlignH

:[4]
push.s "heightFixed"@8840
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [6]

:[5]
pushi.e -1
pop.v.i builtin.heightFixed

:[6]
push.s "widthFixed"@8839
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [8]

:[7]
pushi.e -1
pop.v.i builtin.widthFixed

:[8]
push.v builtin.id
push.s "{0}Button"@9834
conv.s.v
call.i @@string@@(argc=2)
push.v builtin.label
call.i gml_Script_scribble(argc=2)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 1
conv.i.v
push.v builtin.labelAlignH
dup.e 2 16
callv.v 2
pop.v.v builtin.labelDraw
push.v builtin.labelDraw
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
pop.v.v builtin.labelW
push.v builtin.labelDraw
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
pop.v.v builtin.labelH
b [14]

> gml_Script_anon@607@gml_Object_oGuiFormElement_Create_0 (locals=0, argc=1)
:[9]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [11]

:[10]
push.v builtin.label
pop.v.v builtin.argument0

:[11]
push.v arg.argument0
pop.v.v builtin.label
push.v builtin.labelDraw
call.i gml_Script_scribble_is_text_element(argc=1)
conv.v.b
bf [13]

:[12]
push.v builtin.labelDraw
dup.v 0 8
dup.v 0
push.v stacktop.flush
callv.v 0
popz.v

:[13]
push.v builtin.id
push.s "{0}Button"@9834
conv.s.v
call.i @@string@@(argc=2)
push.v builtin.label
call.i gml_Script_scribble(argc=2)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 1
conv.i.v
push.v builtin.labelAlignH
dup.e 2 16
callv.v 2
pop.v.v builtin.labelDraw
push.v builtin.labelDraw
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
pop.v.v builtin.labelW
push.v builtin.labelDraw
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
pop.v.v builtin.labelH
call.i @@This@@(argc=0)
push.v builtin.set_width
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.set_height
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.set_position
callv.v 0
popz.v
exit.i

:[14]
push.i [function]gml_Script_anon@607@gml_Object_oGuiFormElement_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_label
push.v builtin.x
pop.v.v builtin.xInit
push.v builtin.y
pop.v.v builtin.yInit
b [20]

> gml_Script_anon@1089@gml_Object_oGuiFormElement_Create_0 (locals=0, argc=2)
:[15]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [17]

:[16]
push.v builtin.xInit
pop.v.v builtin.argument0

:[17]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [19]

:[18]
push.v builtin.yInit
pop.v.v builtin.argument1

:[19]
push.v arg.argument0
pop.v.v builtin.xInit
push.v arg.argument1
pop.v.v builtin.yInit
push.v builtin.xInit
push.v builtin.offsetH
add.v.v
pop.v.v builtin.x
push.v builtin.yInit
push.v builtin.offsetV
add.v.v
pop.v.v builtin.y
exit.i

:[20]
push.i [function]gml_Script_anon@1089@gml_Object_oGuiFormElement_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_position
pushi.e 0
pop.v.i builtin.padLeft
pushi.e 0
pop.v.i builtin.padTop
pushi.e 0
pop.v.i builtin.padRight
pushi.e 0
pop.v.i builtin.padBottom
push.v builtin.padLeft
push.v builtin.padRight
add.v.v
pop.v.v builtin.padX
push.v builtin.padTop
push.v builtin.padBottom
add.v.v
pop.v.v builtin.padY
b [22]

> gml_Script_anon@1431@gml_Object_oGuiFormElement_Create_0 (locals=0, argc=4)
:[21]
push.v arg.argument3
pop.v.v builtin.padLeft
push.v arg.argument0
pop.v.v builtin.padTop
push.v arg.argument1
pop.v.v builtin.padRight
push.v arg.argument2
pop.v.v builtin.padBottom
push.v builtin.padLeft
push.v builtin.padRight
add.v.v
pop.v.v builtin.padX
push.v builtin.padTop
push.v builtin.padBottom
add.v.v
pop.v.v builtin.padY
call.i @@This@@(argc=0)
push.v builtin.set_width
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.set_height
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.set_position
callv.v 0
popz.v
exit.i

:[22]
push.i [function]gml_Script_anon@1431@gml_Object_oGuiFormElement_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_padding
push.s "alignH"@9422
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [24]

:[23]
push.l 0
pop.v.l builtin.alignH

:[24]
push.s "alignV"@9423
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [26]

:[25]
push.l 0
pop.v.l builtin.alignV

:[26]
b [34]

> gml_Script_anon@2027@gml_Object_oGuiFormElement_Create_0 (locals=0, argc=1)
:[27]
push.v arg.argument0
pop.v.v builtin.alignH
push.v builtin.alignH
push.l 2
cmp.l.v EQ
bf [29]

:[28]
call.i @@This@@(argc=0)
push.v builtin.get_width
callv.v 0
neg.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v builtin.offsetH
b [33]

:[29]
push.v builtin.alignH
push.l 0
cmp.l.v EQ
bf [31]

:[30]
pushi.e 0
pop.v.i builtin.offsetH
b [33]

:[31]
push.v builtin.alignH
push.l 1
cmp.l.v EQ
bf [33]

:[32]
call.i @@This@@(argc=0)
push.v builtin.get_width
callv.v 0
neg.v
pop.v.v builtin.offsetH

:[33]
exit.i

:[34]
push.i [function]gml_Script_anon@2027@gml_Object_oGuiFormElement_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_align_h
b [42]

> gml_Script_anon@2340@gml_Object_oGuiFormElement_Create_0 (locals=0, argc=1)
:[35]
push.v arg.argument0
pop.v.v builtin.alignV
push.v builtin.alignV
push.l 2
cmp.l.v EQ
bf [37]

:[36]
call.i @@This@@(argc=0)
push.v builtin.get_height
callv.v 0
neg.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v builtin.offsetV
b [41]

:[37]
push.v builtin.alignV
push.l 0
cmp.l.v EQ
bf [39]

:[38]
pushi.e 0
pop.v.i builtin.offsetV
b [41]

:[39]
push.v builtin.alignV
push.l 1
cmp.l.v EQ
bf [41]

:[40]
call.i @@This@@(argc=0)
push.v builtin.get_height
callv.v 0
neg.v
pop.v.v builtin.offsetV

:[41]
exit.i

:[42]
push.i [function]gml_Script_anon@2340@gml_Object_oGuiFormElement_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_align_v
pushi.e 0
pop.v.i builtin.theWidth
pushi.e 0
pop.v.i builtin.theHeight
push.v builtin.sprite_index
call.i sprite_get_width(argc=1)
pop.v.v builtin.sprW
push.v builtin.sprite_index
call.i sprite_get_height(argc=1)
pop.v.v builtin.sprH
b [53]

> gml_Script_anon@2815@gml_Object_oGuiFormElement_Create_0 (locals=0, argc=0)
:[43]
push.v builtin.heightFixed
pushi.e -1
cmp.i.v NEQ
bf [45]

:[44]
push.v builtin.heightFixed
pop.v.v builtin.theHeight
push.v builtin.heightFixed
push.v builtin.sprH
div.v.v
pop.v.v builtin.image_yscale
b [52]

:[45]
push.v builtin.label
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [47]

:[46]
push.v builtin.sprH
b [48]

:[47]
push.v builtin.labelH
pushglb.v global.zoom
div.v.v
call.i round(argc=1)
push.v builtin.padTop
push.v builtin.padBottom
add.v.v
add.v.v

:[48]
pop.v.v builtin.theHeight
push.v builtin.label
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [50]

:[49]
pushi.e 1
conv.i.v
b [51]

:[50]
push.v builtin.theHeight
push.v builtin.sprH
div.v.v

:[51]
pop.v.v builtin.image_yscale

:[52]
push.v builtin.alignV
call.i @@This@@(argc=0)
push.v builtin.set_align_v
callv.v 1
popz.v
exit.i

:[53]
push.i [function]gml_Script_anon@2815@gml_Object_oGuiFormElement_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_height
b [56]

> gml_Script_anon@3307@gml_Object_oGuiFormElement_Create_0 (locals=0, argc=0)
:[54]
push.v builtin.theHeight
ret.v

:[55]
exit.i

:[56]
push.i [function]gml_Script_anon@3307@gml_Object_oGuiFormElement_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_height
b [67]

> gml_Script_anon@3447@gml_Object_oGuiFormElement_Create_0 (locals=0, argc=0)
:[57]
push.v builtin.widthFixed
pushi.e -1
cmp.i.v NEQ
bf [59]

:[58]
push.v builtin.widthFixed
pop.v.v builtin.theWidth
push.v builtin.widthFixed
push.v builtin.sprW
div.v.v
pop.v.v builtin.image_xscale
b [66]

:[59]
push.v builtin.label
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [61]

:[60]
push.v builtin.sprW
b [62]

:[61]
push.v builtin.labelW
pushglb.v global.zoom
div.v.v
call.i round(argc=1)
push.v builtin.padLeft
push.v builtin.padRight
add.v.v
add.v.v

:[62]
pop.v.v builtin.theWidth
push.v builtin.label
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [64]

:[63]
pushi.e 1
conv.i.v
b [65]

:[64]
push.v builtin.theWidth
push.v builtin.sprW
div.v.v

:[65]
pop.v.v builtin.image_xscale

:[66]
push.v builtin.alignH
call.i @@This@@(argc=0)
push.v builtin.set_align_h
callv.v 1
popz.v
exit.i

:[67]
push.i [function]gml_Script_anon@3447@gml_Object_oGuiFormElement_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_width
b [70]

> gml_Script_anon@4082@gml_Object_oGuiFormElement_Create_0 (locals=0, argc=0)
:[68]
push.v builtin.theWidth
ret.v

:[69]
exit.i

:[70]
push.i [function]gml_Script_anon@4082@gml_Object_oGuiFormElement_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_width
call.i @@This@@(argc=0)
push.v builtin.set_width
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.set_height
callv.v 0
popz.v

:[end]