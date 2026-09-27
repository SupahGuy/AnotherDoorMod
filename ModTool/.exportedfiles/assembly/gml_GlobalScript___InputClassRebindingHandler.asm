:[0]
b [36]

> gml_Script___InputClassRebindingHandler (locals=4, argc=3)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [13]

:[2]
setstatic.e
b [12]

> gml_Script___Update@anon@2392@__InputClassRebindingHandler@__InputClassRebindingHandler (locals=1, argc=0)
:[3]
push.v builtin.__createTime
pushbltn.v builtin.current_time
sub.v.v
pushi.e 5000
cmp.i.v GT
bf [5]

:[4]
pushi.e 0
conv.b.v
push.v builtin.__device
call.i gml_Script_InputDeviceSetRebinding(argc=2)
popz.v
exit.i

:[5]
push.v builtin.__rebindingAllowStruct
push.v builtin.__rebindingIgnoreStruct
push.v builtin.__device
call.i gml_Script___InputBindingScan(argc=3)
pop.v.v local._binding
push.v builtin.__rebindingWait
conv.v.b
bf [9]

:[6]
pushloc.v local._binding
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [8]

:[7]
pushi.e 0
pop.v.b builtin.__rebindingWait

:[8]
b [11]

:[9]
pushloc.v local._binding
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [11]

:[10]
pushloc.v local._binding
pop.v.v builtin.__rebindingResult
pushi.e 1
pop.v.b builtin.__rebindingWait

:[11]
exit.i

:[12]
push.i [function]gml_Script___Update@anon@2392@__InputClassRebindingHandler@__InputClassRebindingHandler
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__Update

:[13]
push.v arg.argument0
pop.v.v builtin.__device
pushbltn.v builtin.current_time
pop.v.v builtin.__createTime
push.v arg.argument1
call.i is_struct(argc=1)
conv.v.b
bf [15]

:[14]
push.v arg.argument1
pop.v.v local._ignoreStruct
b [24]

:[15]
push.v arg.argument1
call.i is_undefined(argc=1)
conv.v.b
bf [17]

:[16]
call.i @@NewGMLObject@@(argc=0)
pop.v.v local._ignoreStruct
b [24]

:[17]
push.v arg.argument1
call.i is_array(argc=1)
conv.v.b
not.b
bf [19]

:[18]
push.s "\")"@194
conv.s.v
push.v arg.argument1
call.i typeof(argc=1)
push.s "Rebinding ignore data must be an array or `undefined` (was \""@196
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v
b [24]

:[19]
call.i @@NewGMLObject@@(argc=0)
pop.v.v local._ignoreStruct
pushi.e 0
pop.v.i local._i
push.v arg.argument1
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [23]

:[20]
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument1
pop.v.v local._binding
pushloc.v local._binding
call.i is_string(argc=1)
conv.v.b
bf [22]

:[21]
pushloc.v local._binding
call.i ord(argc=1)
pop.v.v local._binding

:[22]
pushi.e 1
conv.b.v
pushloc.v local._binding
call.i string(argc=1)
pushloc.v local._ignoreStruct
call.i variable_struct_set(argc=3)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [20]

:[23]
popz.i

:[24]
push.v arg.argument2
call.i is_struct(argc=1)
conv.v.b
bf [26]

:[25]
push.v arg.argument2
pop.v.v local._allowStruct
b [35]

:[26]
push.v arg.argument2
call.i is_undefined(argc=1)
conv.v.b
bf [28]

:[27]
pushbltn.v builtin.undefined
pop.v.v local._allowStruct
b [35]

:[28]
push.v arg.argument2
call.i is_array(argc=1)
conv.v.b
not.b
bf [30]

:[29]
push.s "\")"@194
conv.s.v
push.v arg.argument2
call.i typeof(argc=1)
push.s "Rebinding allow data must be an array or `undefined` (was \""@202
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v
b [35]

:[30]
call.i @@NewGMLObject@@(argc=0)
pop.v.v local._allowStruct
pushi.e 0
pop.v.i local._i
push.v arg.argument2
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [34]

:[31]
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument2
pop.v.v local._binding
pushloc.v local._binding
call.i is_string(argc=1)
conv.v.b
bf [33]

:[32]
pushloc.v local._binding
call.i ord(argc=1)
pop.v.v local._binding

:[33]
pushi.e 1
conv.b.v
pushloc.v local._binding
call.i string(argc=1)
pushloc.v local._allowStruct
call.i variable_struct_set(argc=3)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [31]

:[34]
popz.i

:[35]
pushi.e 1
pop.v.b builtin.__rebindingWait
pushbltn.v builtin.undefined
pop.v.v builtin.__rebindingResult
pushloc.v local._ignoreStruct
pop.v.v builtin.__rebindingIgnoreStruct
pushloc.v local._allowStruct
pop.v.v builtin.__rebindingAllowStruct
exit.i

:[36]
push.i [function]gml_Script___InputClassRebindingHandler
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputClassRebindingHandler
popz.v

:[end]