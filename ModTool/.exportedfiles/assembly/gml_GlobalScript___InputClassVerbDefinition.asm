:[0]
b [16]

> gml_Script___InputClassVerbDefinition (locals=1, argc=5)
:[1]
call.i @@SetStatic@@(argc=0)
push.v arg.argument2
call.i is_array(argc=1)
conv.v.b
bf [7]

:[2]
pushi.e 0
pop.v.i local._i
push.v arg.argument2
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [6]

:[3]
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument2
call.i is_string(argc=1)
conv.v.b
bf [5]

:[4]
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument2
call.i ord(argc=1)
pushi.e -15
pushloc.v local._i
conv.v.i
pop.v.v [array]self.argument2

:[5]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [3]

:[6]
popz.i
b [9]

:[7]
push.v arg.argument2
call.i is_string(argc=1)
conv.v.b
bf [9]

:[8]
push.v arg.argument2
call.i ord(argc=1)
pop.v.v arg.argument2

:[9]
push.v arg.argument0
pop.v.v builtin.__verbIndex
push.v arg.argument1
pop.v.v builtin.__exportName
push.v arg.argument2
call.i is_array(argc=1)
conv.v.b
bf [11]

:[10]
push.v arg.argument2
b [12]

:[11]
push.v arg.argument2
call.i @@NewGMLArray@@(argc=1)

:[12]
pop.v.v builtin.__kbmBinding
push.v arg.argument3
call.i is_array(argc=1)
conv.v.b
bf [14]

:[13]
push.v arg.argument3
b [15]

:[14]
push.v arg.argument3
call.i @@NewGMLArray@@(argc=1)

:[15]
pop.v.v builtin.__gamepadBinding
push.v arg.argument4
call.i variable_clone(argc=1)
pop.v.v builtin.__metadata
exit.i

:[16]
push.i [function]gml_Script___InputClassVerbDefinition
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputClassVerbDefinition
popz.v

:[end]