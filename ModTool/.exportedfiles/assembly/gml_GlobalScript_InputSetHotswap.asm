:[0]
b [12]

> gml_Script_InputSetHotswap (locals=1, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system

:[3]
push.v static._system
pushi.e -9
pushenv [11]

:[4]
push.v arg.argument0
push.v builtin.__hotswap
cmp.v.v EQ
bf [6]

:[5]
popenv <drop>
exit.i

:[6]
push.v arg.argument0
conv.v.b
bf [10]

:[7]
pushi.e 1
pop.v.i local._i
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [9]

:[8]
pushloc.v local._i
pushi.e -666
conv.i.v
call.i gml_Script_InputPlayerSetDevice(argc=2)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [8]

:[9]
popz.i
pushi.e 1
pop.v.b builtin.__hotswap
b [11]

:[10]
pushi.e 0
pop.v.b builtin.__hotswap

:[11]
popenv [4]
exit.i

:[12]
push.i [function]gml_Script_InputSetHotswap
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputSetHotswap
popz.v

:[end]