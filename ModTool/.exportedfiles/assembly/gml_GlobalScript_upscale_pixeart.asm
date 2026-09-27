:[0]
b [20]

> gml_Script_upscale_pixelart_start (locals=1, argc=9)
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
pushi.e 0
pop.v.i builtin.argument1

:[5]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i builtin.argument2

:[7]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.i builtin.argument3

:[9]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [11]

:[10]
pushi.e 0
pop.v.i builtin.argument4

:[11]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [13]

:[12]
pushi.e 0
pop.v.i builtin.argument5

:[13]
pushbltn.v builtin.argument6
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [15]

:[14]
pushglb.v global.zoom
pop.v.v builtin.argument6

:[15]
pushbltn.v builtin.argument7
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [17]

:[16]
pushglb.v global.zoom
pop.v.v builtin.argument7

:[17]
pushbltn.v builtin.argument8
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [19]

:[18]
pushi.e 0
pop.v.i builtin.argument8

:[19]
pushi.e 2
conv.i.v
call.i matrix_get(argc=1)
pop.v.v global.upscaleMatrix
push.v arg.argument8
push.v arg.argument7
push.v arg.argument6
push.v arg.argument5
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i matrix_build(argc=9)
pop.v.v local._new_m
pushloc.v local._new_m
pushi.e 2
conv.i.v
call.i matrix_set(argc=2)
popz.v
exit.i

:[20]
push.i [function]gml_Script_upscale_pixelart_start
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.upscale_pixelart_start
popz.v
b [22]

> gml_Script_upscale_pixelart_end (locals=0, argc=0)
:[21]
pushglb.v global.upscaleMatrix
pushi.e 2
conv.i.v
call.i matrix_set(argc=2)
popz.v
exit.i

:[22]
push.i [function]gml_Script_upscale_pixelart_end
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.upscale_pixelart_end
popz.v

:[end]