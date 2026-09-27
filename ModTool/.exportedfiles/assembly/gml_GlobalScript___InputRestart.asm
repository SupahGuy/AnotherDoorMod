:[0]
b [8]

> gml_Script___InputRestart (locals=1, argc=0)
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
pop.v.v builtin.__restartTime

:[5]
popenv [4]
pushi.e 0
pop.v.i local._i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [7]

:[6]
pushloc.v local._i
call.i gml_Script_InputVerbConsumeAll(argc=1)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [6]

:[7]
popz.i
push.l 9
conv.l.v
call.i gml_Script___InputPlugInExecuteCallbacks(argc=1)
popz.v
exit.i

:[8]
push.i [function]gml_Script___InputRestart
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputRestart
popz.v

:[end]