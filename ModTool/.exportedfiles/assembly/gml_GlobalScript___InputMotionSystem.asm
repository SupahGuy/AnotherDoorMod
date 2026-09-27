:[0]
call.i gml_Script___InputMotionSystem(argc=0)
popz.v
b [26]

> gml_Script___InputMotionSystem (locals=0, argc=0)
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
pushenv [24]

:[6]
call.i ds_map_create(argc=0)
pop.v.v builtin.__deviceMap
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.__deviceArray
b [23]

> gml_Script_anon@376@__InputMotionSystem@__InputMotionSystem (locals=0, argc=0)
:[7]
call.i gml_Script_InputMotionSupportedByPlatform(argc=0)
conv.v.b
bf [22]

:[8]
b [10]

> gml_Script_anon@676@anon@376@__InputMotionSystem@__InputMotionSystem (locals=1, argc=1)
:[9]
push.v arg.argument0
push.i [function]gml_Script___InputMotionClass
conv.i.v
call.i @@NewGMLObject@@(argc=2)
pop.v.v local._struct
pushloc.v local._struct
push.v arg.argument0
push.v builtin.__deviceMap
call.i ds_map_set(argc=3)
popz.v
pushloc.v local._struct
push.v builtin.__deviceArray
call.i array_push(argc=2)
popz.v
exit.i

:[10]
push.i [function]gml_Script_anon@676@anon@376@__InputMotionSystem@__InputMotionSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushbltn.v builtin.undefined
push.l 3
conv.l.v
call.i gml_Script_InputPlugInRegisterCallback(argc=3)
popz.v
b [17]

> gml_Script_anon@1033@anon@376@__InputMotionSystem@__InputMotionSystem (locals=1, argc=2)
:[11]
push.v arg.argument0
push.v builtin.__deviceMap
call.i ds_map_delete(argc=2)
popz.v
pushi.e 0
pop.v.i local._i
push.v builtin.__deviceArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [16]

:[12]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.__deviceArray
pushi.e -9
push.v [stacktop]self.__device
push.v arg.argument0
cmp.v.v EQ
bf [14]

:[13]
pushi.e 1
conv.i.v
pushloc.v local._i
push.v builtin.__deviceArray
call.i array_delete(argc=3)
popz.v
b [15]

:[14]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i

:[15]
pushi.e 1
sub.i.i
dup.i 0
bt [12]

:[16]
popz.i
exit.i

:[17]
push.i [function]gml_Script_anon@1033@anon@376@__InputMotionSystem@__InputMotionSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushbltn.v builtin.undefined
push.l 2
conv.l.v
call.i gml_Script_InputPlugInRegisterCallback(argc=3)
popz.v
b [21]

> gml_Script_anon@1741@anon@376@__InputMotionSystem@__InputMotionSystem (locals=0, argc=0)
:[18]
b [20]

> gml_Script_anon@1821@anon@1741@anon@376@__InputMotionSystem@__InputMotionSystem (locals=0, argc=2)
:[19]
push.v arg.argument0
dup.v 0 8
dup.v 0
push.v stacktop.__Update
callv.v 0
popz.v
exit.i

:[20]
push.i [function]gml_Script_anon@1821@anon@1741@anon@376@__InputMotionSystem@__InputMotionSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v builtin.__deviceArray
call.i array_foreach(argc=2)
popz.v
exit.i

:[21]
push.i [function]gml_Script_anon@1741@anon@376@__InputMotionSystem@__InputMotionSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushbltn.v builtin.undefined
push.l 1
conv.l.v
call.i gml_Script_InputPlugInRegisterCallback(argc=3)
popz.v

:[22]
exit.i

:[23]
push.i [function]gml_Script_anon@376@__InputMotionSystem@__InputMotionSystem
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
push.s "InputTeam.GyroMotion"@1656
conv.s.v
call.i gml_Script_InputPlugInDefine(argc=5)
popz.v

:[24]
popenv [6]
push.v static._system
ret.v

:[25]
exit.i

:[26]
push.i [function]gml_Script___InputMotionSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputMotionSystem
popz.v

:[end]