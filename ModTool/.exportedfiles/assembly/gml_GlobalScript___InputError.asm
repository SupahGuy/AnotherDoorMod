:[0]
b [4]

> gml_Script___InputError (locals=2, argc=0)
:[1]
push.s ""@61
pop.v.s local._string
pushi.e 0
pop.v.i local._i
pushbltn.v builtin.argument_count
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [3]

:[2]
push.v local._string
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument
call.i string(argc=1)
add.v.v
pop.v.v local._string
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [2]

:[3]
popz.i
pushi.e 0
conv.b.v
push.s " \nInput 10.2.2:\n"@1173
pushloc.v local._string
add.v.s
push.s "\n "@1174
add.s.v
call.i show_error(argc=2)
popz.v
exit.i

:[4]
push.i [function]gml_Script___InputError
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputError
popz.v

:[end]