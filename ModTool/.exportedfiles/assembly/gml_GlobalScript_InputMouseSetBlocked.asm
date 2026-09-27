:[0]
b [6]

> gml_Script_InputMouseSetBlocked (locals=0, argc=1)
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
push.v arg.argument0
pop.v.v builtin.__pointerBlockedByUser
push.v arg.argument0
pop.v.v builtin.__pointerBlockedByUserThisFrame

:[5]
popenv [4]
exit.i

:[6]
push.i [function]gml_Script_InputMouseSetBlocked
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputMouseSetBlocked
popz.v

:[end]