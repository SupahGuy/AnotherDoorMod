:[0]
b [16]

> gml_Script___InputGamepadGUIDParse (locals=0, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i @@NewGMLObject@@(argc=0)
pop.v.v static._result

:[3]
push.s ""@61
push.v static._result
pushi.e -9
pop.v.s [stacktop]self.__vendor
push.s ""@61
push.v static._result
pushi.e -9
pop.v.s [stacktop]self.__product
push.v arg.argument0
push.s "00000000000000000000000000000000"@1208
cmp.s.v EQ
bf [5]

:[4]
push.s "Warning! GUID was empty"@1209
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
push.v static._result
ret.v

:[5]
pushi.e 4
conv.i.v
pushi.e 13
conv.i.v
push.v arg.argument0
call.i string_copy(argc=3)
push.s "0000"@1211
cmp.s.v EQ
bf [14]

:[6]
pushi.e 4
conv.i.v
pushi.e 21
conv.i.v
push.v arg.argument0
call.i string_copy(argc=3)
push.s "0000"@1211
cmp.s.v NEQ
bf [8]

:[7]
push.s "\" does not fit expected pattern. VID+PID cannot be extracted"@1212
conv.s.v
push.v arg.argument0
push.s "Warning! GUID \""@1213
conv.s.v
call.i gml_Script___InputTrace(argc=3)
popz.v
push.v static._result
ret.v

:[8]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i string_copy(argc=3)
push.s "0300"@1214
cmp.s.v NEQ
bf [10]

:[9]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i string_copy(argc=3)
push.s "0500"@1215
cmp.s.v NEQ
b [11]

:[10]
push.e 0

:[11]
bf [13]

:[12]
push.s ", expect either 0300 or 0500)"@1216
conv.s.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
push.v arg.argument0
call.i string_copy(argc=3)
push.s "\" driver ID does not match expected (Found "@1217
conv.s.v
push.v arg.argument0
push.s "Warning! GUID \""@1213
conv.s.v
call.i gml_Script___InputTrace(argc=5)
popz.v

:[13]
pushi.e 4
conv.i.v
pushi.e 9
conv.i.v
push.v arg.argument0
call.i string_copy(argc=3)
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.__vendor
pushi.e 4
conv.i.v
pushi.e 17
conv.i.v
push.v arg.argument0
call.i string_copy(argc=3)
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.__product

:[14]
push.v static._result
ret.v

:[15]
exit.i

:[16]
push.i [function]gml_Script___InputGamepadGUIDParse
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputGamepadGUIDParse
popz.v

:[end]