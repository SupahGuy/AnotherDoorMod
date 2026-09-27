; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i event_inherited(argc=0)
popz.v
pushglb.v global.__ElementController
pop.v.v builtin.controller
push.v builtin.sprH
push.v builtin.labelH
pushglb.v global.zoom
div.v.v
sub.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v local._padY
pushi.e 24
conv.i.v
pushloc.v local._padY
pushi.e 8
conv.i.v
pushloc.v local._padY
call.i @@This@@(argc=0)
push.v builtin.set_padding
callv.v 4
popz.v
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.radioLinkedTo
b [8]

> gml_Script_anon@246@gml_Object_oGuiRadio_Create_0 (locals=1, argc=1)
:[1]
push.v arg.argument0
call.i is_array(argc=1)
conv.v.b
bf [3]

:[2]
push.v arg.argument0
b [4]

:[3]
push.v arg.argument0
call.i @@NewGMLArray@@(argc=1)

:[4]
pop.v.v arg.argument0
pushi.e 0
pop.v.i local._i

:[5]
pushloc.v local._i
push.v arg.argument0
call.i array_length(argc=1)
cmp.v.v LT
bf [7]

:[6]
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument0
push.v builtin.radioLinkedTo
call.i array_push(argc=2)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [5]

:[7]
exit.i

:[8]
push.i [function]gml_Script_anon@246@gml_Object_oGuiRadio_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_radio_linked
pushi.e 0
pop.v.b builtin.radioChecked
b [18]

> gml_Script_anon@500@gml_Object_oGuiRadio_Create_0 (locals=1, argc=1)
:[9]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.b builtin.argument0

:[11]
push.v arg.argument0
pop.v.v builtin.radioChecked
push.v arg.argument0
conv.v.b
bf [16]

:[12]
pushi.e 0
pop.v.i local._i

:[13]
pushloc.v local._i
push.v builtin.radioLinkedTo
call.i array_length(argc=1)
cmp.v.v LT
bf [15]

:[14]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.radioLinkedTo
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_radio_checked
callv.v 1
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [13]

:[15]
push.l 2
pop.v.l builtin.stateGuiNext
b [17]

:[16]
push.v builtin.spriteDefault
pop.v.v builtin.sprite_index
push.l 0
pop.v.l builtin.stateGuiNext

:[17]
exit.i

:[18]
push.i [function]gml_Script_anon@500@gml_Object_oGuiRadio_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_radio_checked

:[end]