:[0]
b [14]

> gml_Script___InputTriggerEffectReapply (locals=1, argc=1)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument0

:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___InputTriggerEffectSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__playerArray
pop.v.v static._playerArray

:[5]
push.v arg.argument0
pushi.e -3
cmp.i.v EQ
bf [9]

:[6]
pushi.e 0
pop.v.i local._i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [8]

:[7]
pushloc.v local._i
call.i gml_Script___InputTriggerEffectReapply(argc=1)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [7]

:[8]
popz.i
exit.i

:[9]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._playerArray
pushi.e -9
pushenv [13]

:[10]
push.v builtin.__paused
conv.v.b
bf [12]

:[11]
popenv <drop>
exit.i

:[12]
pushi.e 0
conv.b.v
push.v builtin.__effectLeft
push.i 32775
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.__SetTriggerEffect
callv.v 3
popz.v
pushi.e 0
conv.b.v
push.v builtin.__effectRight
push.i 32776
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.__SetTriggerEffect
callv.v 3
popz.v

:[13]
popenv [10]
exit.i

:[14]
push.i [function]gml_Script___InputTriggerEffectReapply
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputTriggerEffectReapply
popz.v

:[end]