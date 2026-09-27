:[0]
b [5]

> gml_Script_trace (locals=2, argc=0)
:[1]
pushi.e -15
pushi.e 0
push.v [array]self.argument
call.i string(argc=1)
pop.v.v local.r
pushi.e 1
pop.v.i local.i

:[2]
pushloc.v local.i
pushbltn.v builtin.argument_count
cmp.v.v LT
bf [4]

:[3]
push.v local.r
push.s ", "@2181
pushi.e -15
pushloc.v local.i
conv.v.i
push.v [array]self.argument
call.i string(argc=1)
add.v.s
add.v.v
pop.v.v local.r
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [2]

:[4]
pushloc.v local.r
call.i show_debug_message(argc=1)
popz.v
exit.i

:[5]
push.i [function]gml_Script_trace
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.trace
popz.v

:[end]