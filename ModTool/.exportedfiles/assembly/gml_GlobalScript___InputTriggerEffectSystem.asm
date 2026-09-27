:[0]
call.i gml_Script___InputTriggerEffectSystem(argc=0)
popz.v
b [28]

> gml_Script___InputTriggerEffectSystem (locals=0, argc=0)
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
pushenv [26]

:[6]
call.i ds_map_create(argc=0)
pop.v.v builtin.__deviceMap
b [9]

> gml_Script_anon@845@__InputTriggerEffectSystem@__InputTriggerEffectSystem (locals=0, argc=1)
:[7]
push.v arg.argument0
push.i [function]gml_Script___InputTriggerEffectPlayer
conv.i.v
call.i @@NewGMLObject@@(argc=2)
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_anon@845@__InputTriggerEffectSystem@__InputTriggerEffectSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 4
conv.i.v
call.i array_create_ext(argc=2)
pop.v.v builtin.__playerArray
b [25]

> gml_Script_anon@1040@__InputTriggerEffectSystem@__InputTriggerEffectSystem (locals=0, argc=0)
:[10]
b [12]

> gml_Script_anon@1156@anon@1040@__InputTriggerEffectSystem@__InputTriggerEffectSystem (locals=0, argc=1)
:[11]
push.v arg.argument0
push.i [function]gml_Script___InputTriggerEffectGamepad
conv.i.v
call.i @@NewGMLObject@@(argc=2)
push.v arg.argument0
push.v builtin.__deviceMap
call.i ds_map_set(argc=3)
popz.v
exit.i

:[12]
push.i [function]gml_Script_anon@1156@anon@1040@__InputTriggerEffectSystem@__InputTriggerEffectSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushbltn.v builtin.undefined
push.l 3
conv.l.v
call.i gml_Script_InputPlugInRegisterCallback(argc=3)
popz.v
b [14]

> gml_Script_anon@1401@anon@1040@__InputTriggerEffectSystem@__InputTriggerEffectSystem (locals=0, argc=2)
:[13]
push.v arg.argument0
push.v builtin.__deviceMap
call.i ds_map_delete(argc=2)
popz.v
exit.i

:[14]
push.i [function]gml_Script_anon@1401@anon@1040@__InputTriggerEffectSystem@__InputTriggerEffectSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushbltn.v builtin.undefined
push.l 2
conv.l.v
call.i gml_Script_InputPlugInRegisterCallback(argc=3)
popz.v
b [16]

> gml_Script_anon@1629@anon@1040@__InputTriggerEffectSystem@__InputTriggerEffectSystem (locals=0, argc=0)
:[15]
call.i gml_Script___InputTriggerEffectStop(argc=0)
popz.v
exit.i

:[16]
push.i [function]gml_Script_anon@1629@anon@1040@__InputTriggerEffectSystem@__InputTriggerEffectSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushbltn.v builtin.undefined
push.l 7
conv.l.v
call.i gml_Script_InputPlugInRegisterCallback(argc=3)
popz.v
b [18]

> gml_Script_anon@1818@anon@1040@__InputTriggerEffectSystem@__InputTriggerEffectSystem (locals=0, argc=0)
:[17]
pushi.e -3
conv.i.v
call.i gml_Script___InputTriggerEffectReapply(argc=1)
popz.v
exit.i

:[18]
push.i [function]gml_Script_anon@1818@anon@1040@__InputTriggerEffectSystem@__InputTriggerEffectSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushbltn.v builtin.undefined
push.l 8
conv.l.v
call.i gml_Script_InputPlugInRegisterCallback(argc=3)
popz.v
b [20]

> gml_Script_anon@2038@anon@1040@__InputTriggerEffectSystem@__InputTriggerEffectSystem (locals=0, argc=3)
:[19]
push.v arg.argument1
call.i gml_Script___InputTriggerEffectStop(argc=1)
popz.v
push.v arg.argument0
call.i gml_Script___InputTriggerEffectReapply(argc=1)
popz.v
exit.i

:[20]
push.i [function]gml_Script_anon@2038@anon@1040@__InputTriggerEffectSystem@__InputTriggerEffectSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushbltn.v builtin.undefined
push.l 4
conv.l.v
call.i gml_Script_InputPlugInRegisterCallback(argc=3)
popz.v
b [24]

> gml_Script_anon@2335@anon@1040@__InputTriggerEffectSystem@__InputTriggerEffectSystem (locals=1, argc=0)
:[21]
pushi.e 0
pop.v.i local._i
pushi.e 4
conv.i.v
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [23]

:[22]
pushloc.v local._i
push.i 32775
conv.i.v
call.i gml_Script_InputTriggerEffectOff(argc=2)
popz.v
pushloc.v local._i
push.i 32776
conv.i.v
call.i gml_Script_InputTriggerEffectOff(argc=2)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [22]

:[23]
popz.i
exit.i

:[24]
push.i [function]gml_Script_anon@2335@anon@1040@__InputTriggerEffectSystem@__InputTriggerEffectSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushbltn.v builtin.undefined
push.l 9
conv.l.v
call.i gml_Script_InputPlugInRegisterCallback(argc=3)
popz.v
exit.i

:[25]
push.i [function]gml_Script_anon@1040@__InputTriggerEffectSystem@__InputTriggerEffectSystem
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
push.s "InputTeam.TriggerEffects"@1965
conv.s.v
call.i gml_Script_InputPlugInDefine(argc=5)
popz.v

:[26]
popenv [6]
push.v static._system
ret.v

:[27]
exit.i

:[28]
push.i [function]gml_Script___InputTriggerEffectSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputTriggerEffectSystem
popz.v

:[end]