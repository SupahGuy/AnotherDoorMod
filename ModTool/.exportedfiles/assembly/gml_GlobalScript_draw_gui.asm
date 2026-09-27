:[0]
pushbltn.v builtin.undefined
pop.v.v global.matrixGui
b [4]

> gml_Script_draw_gui (locals=0, argc=1)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=9)
pop.v.v builtin.argument0

:[3]
exit.i

:[4]
push.i [function]gml_Script_draw_gui
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.draw_gui
popz.v
b [6]

> gml_Script_draw_gui_end (locals=0, argc=0)
:[5]
exit.i

:[6]
push.i [function]gml_Script_draw_gui_end
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.draw_gui_end
popz.v

:[end]