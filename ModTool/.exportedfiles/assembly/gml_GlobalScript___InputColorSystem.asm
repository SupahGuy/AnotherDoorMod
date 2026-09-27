:[0]
call.i gml_Script___InputColorSystem(argc=0)
popz.v
b [22]

> gml_Script___InputColorSystem (locals=0, argc=0)
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
pushenv [20]

:[6]
b [9]

> gml_Script_anon@274@__InputColorSystem@__InputColorSystem (locals=0, argc=1)
:[7]
push.v arg.argument0
push.i [function]gml_Script___InputColorClassPlayer
conv.i.v
call.i @@NewGMLObject@@(argc=2)
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_anon@274@__InputColorSystem@__InputColorSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 4
conv.i.v
call.i array_create_ext(argc=2)
pop.v.v builtin.__playerArray
b [19]

> gml_Script_anon@464@__InputColorSystem@__InputColorSystem (locals=0, argc=0)
:[10]
b [14]

> gml_Script_anon@584@anon@464@__InputColorSystem@__InputColorSystem (locals=0, argc=3)
:[11]
pushi.e -6
push.v arg.argument0
conv.v.i
push.v [array]self.__playerArray
pushi.e -9
pushenv [13]

:[12]
push.v builtin.__color
call.i @@This@@(argc=0)
push.v builtin.__SetColor
callv.v 1
popz.v

:[13]
popenv [12]
exit.i

:[14]
push.i [function]gml_Script_anon@584@anon@464@__InputColorSystem@__InputColorSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushbltn.v builtin.undefined
push.l 4
conv.l.v
call.i gml_Script_InputPlugInRegisterCallback(argc=3)
popz.v
b [18]

> gml_Script_anon@897@anon@464@__InputColorSystem@__InputColorSystem (locals=1, argc=0)
:[15]
pushi.e 0
pop.v.i local._i
pushi.e 4
conv.i.v
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [17]

:[16]
pushloc.v local._i
call.i gml_Script_InputColorReset(argc=1)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [16]

:[17]
popz.i
exit.i

:[18]
push.i [function]gml_Script_anon@897@anon@464@__InputColorSystem@__InputColorSystem
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

:[19]
push.i [function]gml_Script_anon@464@__InputColorSystem@__InputColorSystem
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
push.s "InputTeam.GamepadColor"@469
conv.s.v
call.i gml_Script_InputPlugInDefine(argc=5)
popz.v

:[20]
popenv [6]
push.v static._system
ret.v

:[21]
exit.i

:[22]
push.i [function]gml_Script___InputColorSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputColorSystem
popz.v

:[end]