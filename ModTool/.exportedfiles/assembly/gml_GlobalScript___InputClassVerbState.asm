:[0]
b [2]

> gml_Script___InputClassVerbState (locals=0, argc=1)
:[1]
call.i @@SetStatic@@(argc=0)
push.v arg.argument0
pop.v.v builtin.__verbIndex
pushi.e 0
pop.v.b builtin.__prevHeld
pushi.e 0
pop.v.b builtin.__held
pushi.e 0
pop.v.i builtin.__valueRaw
pushi.e 0
pop.v.i builtin.__valueClamp
pushbltn.v builtin.infinity
neg.v
pop.v.v builtin.__pressFrame
exit.i

:[2]
push.i [function]gml_Script___InputClassVerbState
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputClassVerbState
popz.v

:[end]