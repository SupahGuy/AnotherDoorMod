:[0]
b [10]

> gml_Script_InputPlugInDefine (locals=1, argc=5)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system
push.v static._system
pushi.e -9
push.v [stacktop]self.__plugInArray
pop.v.v static._plugInArray
push.v static._system
pushi.e -9
push.v [stacktop]self.__plugInDict
pop.v.v static._plugInDict

:[3]
push.v static._system
pushi.e -9
push.v [stacktop]self.__plugInsInitializeState
pushi.e 0
cmp.i.v NEQ
bf [5]

:[4]
push.s "`InputPlugInDefine()` must only be called on boot"@6635
conv.s.v
call.i gml_Script___InputError(argc=1)
popz.v

:[5]
push.v arg.argument0
push.v static._plugInDict
call.i variable_struct_exists(argc=2)
conv.v.b
bf [7]

:[6]
push.s "\" already exists"@6636
conv.s.v
push.v arg.argument0
push.s "Plug-in with alias \""@6637
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[7]
push.s "10.2.2"@6638
conv.s.v
push.v arg.argument3
call.i gml_Script___InputCompareVersions(argc=2)
conv.v.b
not.b
bf [9]

:[8]
push.v arg.argument3
push.s ")\nTarget Input version is "@6639
conv.s.v
push.s "10.2.2"@6638
conv.s.v
push.s "\" is incompatible with this version of Input ("@6640
conv.s.v
push.v arg.argument0
push.s "Plug-in \""@6627
conv.s.v
call.i gml_Script___InputError(argc=6)
popz.v

:[9]
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script___InputClassPlugIn
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local._plugInStruct
pushloc.v local._plugInStruct
push.v static._plugInArray
call.i array_push(argc=2)
popz.v
pushloc.v local._plugInStruct
push.v arg.argument0
push.v static._plugInDict
call.i variable_struct_set(argc=3)
popz.v
exit.i

:[10]
push.i [function]gml_Script_InputPlugInDefine
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlugInDefine
popz.v

:[end]