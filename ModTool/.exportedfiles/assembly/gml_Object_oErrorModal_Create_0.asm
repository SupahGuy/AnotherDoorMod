; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushglb.v global.depthManager
push.s "settings"@4990
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pop.v.v builtin.depth
push.s "errorCallbackState"@9417
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [2]

:[1]
push.l 0
pop.v.l builtin.errorCallbackState

:[2]
push.s "errorMessageLabel"@9418
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [4]

:[3]
push.s ""@61
pop.v.s builtin.errorMessageLabel

:[4]
b [10]

> gml_Script_anon@272@gml_Object_oErrorModal_Create_0 (locals=0, argc=1)
:[5]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[6]
push.v builtin.errorCallbackState
pop.v.v builtin.argument0

:[7]
pushref.i 45
pushi.e -9
pushenv [9]

:[8]
push.v arg.argument0
pop.v.v builtin.stateNext

:[9]
popenv [8]
exit.i

:[10]
push.i [function]gml_Script_anon@272@gml_Object_oErrorModal_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.callbackOnceDestroy
push.l 0
conv.l.v
push.l 0
conv.l.v
b [12]

> gml_Script____struct___352@gml_Object_oErrorModal_Create_0 (locals=0, argc=0)
:[11]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "global._cancel"@9421
pop.v.s self.label
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.alignH
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.alignV
pushi.e 24
pop.v.i self.heightFixed
exit.i

:[12]
push.i [function]gml_Script____struct___352@gml_Object_oErrorModal_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___352
call.i @@NewGMLObject@@(argc=3)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnClose
push.s "lobby._errorTitle"@9427
conv.s.v
call.i gml_Script_scribble(argc=1)
pop.v.v local._modalTitle
push.v builtin.errorMessageLabel
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.wrap
pushi.e 192
pushglb.v global.zoom
mul.v.i
dup.e 2 8
callv.v 1
pop.v.v local._errorText
push.v builtin.btnClose
push.l 3
conv.l.v
push.s "btnClose"@9426
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushloc.v local._errorText
push.l 1
conv.l.v
push.s "errorText"@9430
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pushloc.v local._modalTitle
push.l 1
conv.l.v
push.s "modalTitle"@9431
conv.s.v
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NewGMLObject@@(argc=4)
b [14]

> gml_Script____struct___353@gml_Object_oErrorModal_Create_0 (locals=0, argc=0)
:[13]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.modalTitle
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.errorText
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.btnClose
exit.i

:[14]
push.i [function]gml_Script____struct___353@gml_Object_oErrorModal_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___353
call.i @@NewGMLObject@@(argc=4)
pop.v.v builtin.arrayElements
push.v builtin.arrayElements
pushi.e -9
push.v [stacktop]self.btnClose
call.i @@NewGMLArray@@(argc=1)
b [18]

> gml_Script____struct___362@gml_Object_oErrorModal_Create_0 (locals=0, argc=0)
:[15]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
b [17]

> gml_Script____struct___363@___struct___362@gml_Object_oErrorModal_Create_0 (locals=0, argc=0)
:[16]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[17]
push.i [function]gml_Script____struct___363@___struct___362@gml_Object_oErrorModal_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___363
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
push.s "center"@8883
pop.v.s self.justifyContent
pushi.e 16
pop.v.i self.marginTop
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[18]
push.i [function]gml_Script____struct___362@gml_Object_oErrorModal_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___362
call.i @@NewGMLObject@@(argc=2)
push.v builtin.arrayElements
pushi.e -9
push.v [stacktop]self.errorText
call.i @@NewGMLArray@@(argc=1)
b [22]

> gml_Script____struct___360@gml_Object_oErrorModal_Create_0 (locals=0, argc=0)
:[19]
call.i @@SetStatic@@(argc=0)
push.s "row"@8881
pop.v.s self.flexDirection
b [21]

> gml_Script____struct___361@___struct___360@gml_Object_oErrorModal_Create_0 (locals=0, argc=0)
:[20]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[21]
push.i [function]gml_Script____struct___361@___struct___360@gml_Object_oErrorModal_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___361
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
push.s "center"@8883
pop.v.s self.justifyContent
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[22]
push.i [function]gml_Script____struct___360@gml_Object_oErrorModal_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___360
call.i @@NewGMLObject@@(argc=2)
push.v builtin.arrayElements
pushi.e -9
push.v [stacktop]self.modalTitle
call.i @@NewGMLArray@@(argc=1)
b [26]

> gml_Script____struct___358@gml_Object_oErrorModal_Create_0 (locals=0, argc=0)
:[23]
call.i @@SetStatic@@(argc=0)
push.s "center"@8883
pop.v.s self.justifyContent
push.s "row"@8881
pop.v.s self.flexDirection
pushi.e 8
pop.v.i self.marginBottom
b [25]

> gml_Script____struct___359@___struct___358@gml_Object_oErrorModal_Create_0 (locals=0, argc=0)
:[24]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[25]
push.i [function]gml_Script____struct___359@___struct___358@gml_Object_oErrorModal_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___359
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[26]
push.i [function]gml_Script____struct___358@gml_Object_oErrorModal_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___358
call.i @@NewGMLObject@@(argc=2)
call.i @@NewGMLArray@@(argc=3)
push.l 7
conv.l.v
b [30]

> gml_Script____struct___356@gml_Object_oErrorModal_Create_0 (locals=0, argc=0)
:[27]
call.i @@SetStatic@@(argc=0)
push.s "mainBlock"@8916
pop.v.s self.name
push.s "column"@8917
pop.v.s self.flexDirection
pushi.e -15
pushi.e 0
push.v [array]self.argument
b [29]

> gml_Script____struct___357@___struct___356@gml_Object_oErrorModal_Create_0 (locals=0, argc=0)
:[28]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushref.i 16777258
pop.v.v self.element
exit.i

:[29]
push.i [function]gml_Script____struct___357@___struct___356@gml_Object_oErrorModal_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___357
call.i @@NewGMLObject@@(argc=2)
pop.v.v self.data
pushi.e 24
pop.v.i self.paddingTop
pushi.e 24
pop.v.i self.paddingLeft
pushi.e 24
pop.v.i self.paddingRight
pushi.e 24
pop.v.i self.paddingBottom
pushi.e 0
pop.v.i self.gap
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[30]
push.i [function]gml_Script____struct___356@gml_Object_oErrorModal_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___356
call.i @@NewGMLObject@@(argc=3)
call.i @@NewGMLArray@@(argc=1)
b [34]

> gml_Script____struct___354@gml_Object_oErrorModal_Create_0 (locals=0, argc=0)
:[31]
call.i @@SetStatic@@(argc=0)
b [33]

> gml_Script____struct___355@___struct___354@gml_Object_oErrorModal_Create_0 (locals=0, argc=0)
:[32]
call.i @@SetStatic@@(argc=0)
push.s "node"@8885
pop.v.s self.type
exit.i

:[33]
push.i [function]gml_Script____struct___355@___struct___354@gml_Object_oErrorModal_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___355
call.i @@NewGMLObject@@(argc=1)
pop.v.v self.data
push.s "center"@8883
pop.v.s self.alignItems
push.s "center"@8883
pop.v.s self.alignContent
push.s "center"@8883
pop.v.s self.justifyContent
push.s "column"@8917
pop.v.s self.flexDirection
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.nodes
exit.i

:[34]
push.i [function]gml_Script____struct___354@gml_Object_oErrorModal_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___354
call.i @@NewGMLObject@@(argc=2)
call.i flexpanel_create_node(argc=1)
pop.v.v builtin.n_root
pushi.e 0
conv.i.v
pushbltn.v builtin.room_height
pushbltn.v builtin.room_width
push.v builtin.n_root
call.i flexpanel_calculate_layout(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.n_root
call.i gml_Script_ik_flex_panel_generate_instance(argc=3)
popz.v

:[end]