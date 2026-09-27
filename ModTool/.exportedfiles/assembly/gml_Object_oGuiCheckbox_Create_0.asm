:[0]
call.i event_inherited(argc=0)
popz.v
pushref.i 16777293
call.i sprite_get_width(argc=1)
pop.v.v builtin.spriteCheckW
pushi.e 1
pop.v.b builtin.isCheck
b [2]

> gml_Script_anon@117@gml_Object_oGuiCheckbox_Create_0 (locals=0, argc=0)
:[1]
push.v builtin.isCheck
conv.v.b
not.b
pop.v.b builtin.isCheck
exit.i

:[2]
push.i [function]gml_Script_anon@117@gml_Object_oGuiCheckbox_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.check

:[end]