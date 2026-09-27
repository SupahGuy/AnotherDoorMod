:[0]
b [7]

> gml_Script___InputRestartTimeout (locals=1, argc=0)
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
pushenv [5]

:[4]
push.v builtin.__time
push.v builtin.__restartTime
sub.v.v
pushi.e 1000
cmp.i.v LT
conv.b.v
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[5]
popenv [4]
pushi.e 1
conv.b.v
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script___InputRestartTimeout
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputRestartTimeout
popz.v

:[end]