:[0]
call.i gml_Script___InputVerbGroupSystem(argc=0)
popz.v
b [33]

> gml_Script___InputVerbGroupSystem (locals=1, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
pushbltn.v builtin.undefined
pop.v.v static._system

:[3]
push.v static._system
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [5]

:[4]
push.v static._system
ret.v

:[5]
call.i @@NewGMLObject@@(argc=0)
pop.v.v static._system
push.v static._system
pushi.e -9
pushenv [31]

:[6]
call.i gml_Script_InputPlugInGetAllVerbs(argc=0)
pop.v.v local._allVerbArray
pushi.e 0
conv.b.v
pushloc.v local._allVerbArray
call.i array_sort(argc=2)
popz.v
pushi.e 0
conv.i.v
pushi.e -7
pushi.e 0
push.v [array]self._allVerbArray
pushi.e 1
add.i.v
call.i array_create(argc=2)
pop.v.v builtin.__verbGroupLookupArray
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i array_create(argc=2)
pop.v.v builtin.__verbGroupInactiveArray
call.i gml_Script___InputVerbGroupsConfig(argc=0)
popz.v
b [30]

> gml_Script_anon@1619@__InputVerbGroupSystem@__InputVerbGroupSystem (locals=0, argc=0)
:[7]
b [18]

> gml_Script_anon@1732@anon@1619@__InputVerbGroupSystem@__InputVerbGroupSystem (locals=3, argc=1)
:[8]
isstaticok.e
bt [10]

:[9]
setstatic.e
call.i gml_Script___InputVerbGroupSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__verbGroupLookupArray
pop.v.v static._verbGroupLookupArray
call.i gml_Script___InputVerbGroupSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__verbGroupInactiveArray
pop.v.v static._verbGroupInactiveArray

:[10]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._verbGroupInactiveArray
pop.v.v local._inactiveBitmask
pushi.e 0
pop.v.i local._verbIndex
push.v static._verbGroupLookupArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [17]

:[11]
pushi.e -16
pushloc.v local._verbIndex
conv.v.i
push.v [array]self._verbGroupLookupArray
pop.v.v local._verbBitmask
pushloc.v local._verbBitmask
pushi.e 0
cmp.i.v NEQ
bf [13]

:[12]
pushloc.v local._verbBitmask
conv.v.l
pushloc.v local._inactiveBitmask
conv.v.l
and.l.l
pushloc.v local._verbBitmask
cmp.v.l EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.v arg.argument0
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._verbIndex
call.i gml_Script_InputPlugInVerbSet(argc=4)
popz.v

:[16]
push.v local._verbIndex
push.e 1
add.i.v
pop.v.v local._verbIndex
pushi.e 1
sub.i.i
dup.i 0
bt [11]

:[17]
popz.i
exit.i

:[18]
push.i [function]gml_Script_anon@1732@anon@1619@__InputVerbGroupSystem@__InputVerbGroupSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushbltn.v builtin.undefined
push.l 5
conv.l.v
call.i gml_Script_InputPlugInRegisterCallback(argc=3)
popz.v
b [29]

> gml_Script_anon@3511@anon@1619@__InputVerbGroupSystem@__InputVerbGroupSystem (locals=3, argc=6)
:[19]
isstaticok.e
bt [21]

:[20]
setstatic.e
call.i gml_Script___InputVerbGroupSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__verbGroupLookupArray
pop.v.v static._verbGroupLookupArray

:[21]
pushi.e -16
push.v arg.argument3
conv.v.i
push.v [array]self._verbGroupLookupArray
pop.v.v local._sourceBitmask
pushloc.v local._sourceBitmask
pushi.e 0
cmp.i.v EQ
bf [23]

:[22]
exit.i

:[23]
push.v arg.argument0
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pop.v.v local._i
push.v arg.argument0
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [28]

:[24]
pushi.e -16
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument0
pushi.e -9
push.v [stacktop]self.verbIndex
conv.v.i
push.v [array]self._verbGroupLookupArray
pop.v.v local._foundBitmask
pushloc.v local._foundBitmask
pushi.e 0
cmp.i.v NEQ
bf [27]

:[25]
pushloc.v local._sourceBitmask
conv.v.l
pushloc.v local._foundBitmask
conv.v.l
and.l.l
conv.l.b
not.b
bf [27]

:[26]
pushi.e 1
conv.i.v
pushloc.v local._i
push.v arg.argument0
call.i array_delete(argc=3)
popz.v

:[27]
push.v local._i
push.e 1
sub.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [24]

:[28]
popz.i
exit.i

:[29]
push.i [function]gml_Script_anon@3511@anon@1619@__InputVerbGroupSystem@__InputVerbGroupSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushbltn.v builtin.undefined
push.l 10
conv.l.v
call.i gml_Script_InputPlugInRegisterCallback(argc=3)
popz.v
exit.i

:[30]
push.i [function]gml_Script_anon@1619@__InputVerbGroupSystem@__InputVerbGroupSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.s "10.0"@466
conv.s.v
push.s "1.0"@467
conv.s.v
push.s "Input Team"@468
conv.s.v
push.s "InputTeam.VerbGroups"@1986
conv.s.v
call.i gml_Script_InputPlugInDefine(argc=5)
popz.v

:[31]
popenv [6]
push.v static._system
ret.v

:[32]
exit.i

:[33]
push.i [function]gml_Script___InputVerbGroupSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputVerbGroupSystem
popz.v

:[end]