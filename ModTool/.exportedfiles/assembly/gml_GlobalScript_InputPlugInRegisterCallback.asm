:[0]
b [10]

> gml_Script_InputPlugInRegisterCallback (locals=0, argc=3)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e -1
pop.v.i builtin.argument1

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
push.v [stacktop]self.__plugInsInitializeState
pushi.e 1
cmp.i.v NEQ
bf [7]

:[6]
push.s "`InputPlugInRegisterCallback()` can only be called in a plug-in's initialization callback"@6672
conv.s.v
call.i gml_Script___InputError(argc=1)
popz.v

:[7]
push.v arg.argument1
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
push.s "Cannot use priority 0 for plug-ins (reserved for internal code)"@6673
conv.s.v
call.i gml_Script___InputError(argc=1)
popz.v

:[9]
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script___InputPlugInRegisterCallbackInternal(argc=3)
popz.v
exit.i

:[10]
push.i [function]gml_Script_InputPlugInRegisterCallback
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlugInRegisterCallback
popz.v

:[end]