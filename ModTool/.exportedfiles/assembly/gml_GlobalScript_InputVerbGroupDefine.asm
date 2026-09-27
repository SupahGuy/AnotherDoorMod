:[0]
b [10]

> gml_Script_InputVerbGroupDefine (locals=1, argc=2)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputVerbGroupSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__verbGroupLookupArray
pop.v.v static._verbGroupLookupArray

:[3]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
push.s "Verb group index must be greater than 0"@6742
conv.s.v
call.i gml_Script_InputPlugInError(argc=1)
popz.v

:[5]
push.v arg.argument0
pushi.e 50
cmp.i.v GTE
bf [7]

:[6]
pushi.e 50
conv.i.v
push.s "Verb group index must be less than "@6743
conv.s.v
call.i gml_Script_InputPlugInError(argc=2)
popz.v

:[7]
pushi.e 0
pop.v.i local._i
push.v arg.argument1
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [9]

:[8]
pushi.e -16
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument1
conv.v.i
dup.i 1
push.v [array]self._verbGroupLookupArray
pushi.e 1
conv.i.l
push.v arg.argument0
conv.v.l
shl.l.l
or.l.v
pop.i.v [array]self._verbGroupLookupArray
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [8]

:[9]
popz.i
exit.i

:[10]
push.i [function]gml_Script_InputVerbGroupDefine
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputVerbGroupDefine
popz.v

:[end]