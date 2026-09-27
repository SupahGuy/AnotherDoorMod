:[0]
b [12]

> gml_Script___InputCollect (locals=0, argc=0)
:[1]
isstaticok.e
bt [11]

:[2]
setstatic.e
call.i @@This@@(argc=0)
b [10]

> gml_Script__once@anon@518@__InputCollect@__InputCollect (locals=1, argc=0)
:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system

:[5]
push.v static._system
pushi.e -9
pushenv [9]

:[6]
push.s " plug-in(s)"@431
conv.s.v
push.v builtin.__plugInArray
call.i array_length(argc=1)
push.s "Initializing "@433
conv.s.v
call.i gml_Script___InputTrace(argc=3)
popz.v
pushi.e 1
pop.v.i builtin.__plugInsInitializeState
pushi.e 0
pop.v.i local._i
push.v builtin.__plugInArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [8]

:[7]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.__plugInArray
dup.v 0 8
dup.v 0
push.v stacktop.__Initialize
callv.v 0
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
push.s "Plug-in initialization complete"@435
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 2
pop.v.i builtin.__plugInsInitializeState

:[9]
popenv [6]
exit.i

:[10]
push.i [function]gml_Script__once@anon@518@__InputCollect@__InputCollect
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
callv.v 0
pop.v.v static._once

:[11]
push.l 0
conv.l.v
call.i gml_Script___InputPlugInExecuteCallbacks(argc=1)
popz.v
push.l 1
conv.l.v
call.i gml_Script___InputPlugInExecuteCallbacks(argc=1)
popz.v
exit.i

:[12]
push.i [function]gml_Script___InputCollect
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputCollect
popz.v

:[end]