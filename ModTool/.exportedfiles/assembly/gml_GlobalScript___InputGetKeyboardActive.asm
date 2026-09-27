:[0]
b [11]

> gml_Script___InputGetKeyboardActive (locals=0, argc=0)
:[1]
pushi.e 1
bt [6]

:[2]
pushi.e 0
bf [4]

:[3]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
not.b
b [5]

:[4]
push.e 0

:[5]
b [7]

:[6]
push.e 1

:[7]
not.b
bf [9]

:[8]
pushi.e 0
conv.b.v
ret.v

:[9]
call.i gml_Script___InputGetKeyboardOutput(argc=0)
pushbltn.v builtin.undefined
cmp.v.v NEQ
conv.b.v
ret.v

:[10]
exit.i

:[11]
push.i [function]gml_Script___InputGetKeyboardActive
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputGetKeyboardActive
popz.v

:[end]