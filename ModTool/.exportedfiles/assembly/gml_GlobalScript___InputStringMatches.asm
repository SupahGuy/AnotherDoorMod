:[0]
b [7]

> gml_Script___InputStringMatches (locals=2, argc=0)
:[1]
pushi.e 1
pop.v.i local._i
pushbltn.v builtin.argument_count
pushi.e 1
sub.i.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [5]

:[2]
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument
call.i string(argc=1)
pushi.e -15
pushi.e 0
push.v [array]self.argument
cmp.v.v EQ
bf [4]

:[3]
pushi.e 1
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
push.v local.$$$$temp$$$$
ret.v

:[4]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [2]

:[5]
popz.i
pushi.e 0
conv.b.v
ret.v

:[6]
exit.i

:[7]
push.i [function]gml_Script___InputStringMatches
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputStringMatches
popz.v

:[end]