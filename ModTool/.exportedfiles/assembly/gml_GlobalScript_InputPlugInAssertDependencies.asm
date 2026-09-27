:[0]
b [11]

> gml_Script_InputPlugInAssertDependencies (locals=3, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__plugInDict
pop.v.v static._plugInDict

:[3]
pushi.e 0
pop.v.i local._i
pushbltn.v builtin.argument_count
pushi.e 2
rem.i.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [9]

:[4]
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument
push.v static._plugInDict
call.i variable_struct_get(argc=2)
pop.v.v local._plugInStruct
pushloc.v local._plugInStruct
call.i is_struct(argc=1)
conv.v.b
not.b
bf [6]

:[5]
push.s "\" required as a dependency but it cannot be found\nPlease import this missing plug-in"@6626
conv.s.v
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument
push.s "Plug-in \""@6627
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
push.v local.$$$$temp$$$$
ret.v

:[6]
pushloc.v local._plugInStruct
pushi.e -9
push.v [stacktop]self.__version
pushi.e -15
pushloc.v local._i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.argument
call.i gml_Script___InputCompareVersions(argc=2)
conv.v.b
not.b
bf [8]

:[7]
push.s "\nPlease check for updates"@6628
conv.s.v
pushloc.v local._plugInStruct
pushi.e -9
push.v [stacktop]self.__version
push.s "\" is newer than current version "@6629
conv.s.v
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument
push.s ") of plug-in \""@6630
conv.s.v
pushi.e -15
pushloc.v local._i
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.argument
push.s "Required version ("@6631
conv.s.v
call.i gml_Script___InputError(argc=7)
popz.v
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
push.v local.$$$$temp$$$$
ret.v

:[8]
push.v local._i
pushi.e 2
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [4]

:[9]
popz.i
pushi.e 1
conv.b.v
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script_InputPlugInAssertDependencies
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlugInAssertDependencies
popz.v

:[end]