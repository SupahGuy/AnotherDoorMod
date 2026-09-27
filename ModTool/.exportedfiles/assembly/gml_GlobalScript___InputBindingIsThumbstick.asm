:[0]
b [10]

> gml_Script___InputBindingIsThumbstick (locals=0, argc=1)
:[1]
push.v arg.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
conv.b.v
ret.v

:[3]
push.v arg.argument0
call.i abs(argc=1)
pop.v.v arg.argument0
push.v arg.argument0
push.i 32785
cmp.i.v EQ
bt [7]

:[4]
push.v arg.argument0
push.i 32785
cmp.i.v EQ
bt [7]

:[5]
push.v arg.argument0
push.i -32786
cmp.i.v EQ
bt [7]

:[6]
push.v arg.argument0
push.i 32786
cmp.i.v EQ
b [8]

:[7]
push.e 1

:[8]
conv.b.v
ret.v

:[9]
exit.i

:[10]
push.i [function]gml_Script___InputBindingIsThumbstick
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputBindingIsThumbstick
popz.v

:[end]