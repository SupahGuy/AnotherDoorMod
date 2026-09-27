:[0]
b [4]

> gml_Script_InputPlugInError (locals=1, argc=0)
:[1]
push.s "Plug-In Error\n"@6642
conv.s.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v local._argumentArray
pushbltn.v builtin.argument_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [3]

:[2]
pushi.e -15
pushloc.v local._argumentArray
call.i array_length(argc=1)
pushi.e 1
sub.i.v
conv.v.i
push.v [array]self.argument
pushloc.v local._argumentArray
call.i array_push(argc=2)
popz.v
pushi.e 1
sub.i.i
dup.i 0
bt [2]

:[3]
popz.i
pushloc.v local._argumentArray
pushref.i gml_Script___InputError
call.i method_call(argc=2)
popz.v
exit.i

:[4]
push.i [function]gml_Script_InputPlugInError
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputPlugInError
popz.v

:[end]