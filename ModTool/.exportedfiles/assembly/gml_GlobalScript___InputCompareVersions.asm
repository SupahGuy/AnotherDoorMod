:[0]
b [41]

> gml_Script___InputCompareVersions (locals=2, argc=2)
:[1]
isstaticok.e
bt [35]

:[2]
setstatic.e
b [34]

> gml_Script__funcSplit@anon@1903@__InputCompareVersions@__InputCompareVersions (locals=3, argc=1)
:[3]
isstaticok.e
bt [13]

:[4]
setstatic.e
call.i @@NewGMLArray@@(argc=0)
pop.v.v static._array
b [12]

> gml_Script__funcSafeReal@anon@2040@_funcSplit@anon@1903@__InputCompareVersions@__InputCompareVersions (locals=2, argc=1)
:[5]
push.v arg.argument0
push.s ""@61
cmp.s.v EQ
bf [7]

:[6]
pushi.e 0
conv.i.v
ret.v

:[7]
push.i 200
conv.i.v
push.i 152
conv.i.v
call.i @@try_hook@@(argc=2)
popz.v
push.v arg.argument0
call.i real(argc=1)
pop.v.v local._value
b [9]

:[8]
pop.v.v local._error
call.i @@try_unhook@@(argc=0)
popz.v
pushi.e 0
pop.v.i local._value
call.i @@finish_catch@@(argc=0)
popz.v
b [10]

:[9]
call.i @@try_unhook@@(argc=0)
popz.v

:[10]
pushloc.v local._value
ret.v

:[11]
exit.i

:[12]
push.i [function]gml_Script__funcSafeReal@anon@2040@_funcSplit@anon@1903@__InputCompareVersions@__InputCompareVersions
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static._funcSafeReal

:[13]
pushi.e 0
conv.i.v
push.v static._array
call.i array_resize(argc=2)
popz.v
b [15]

> gml_Script____struct___8@_funcSplit@anon@1903@__InputCompareVersions@__InputCompareVersions (locals=0, argc=0)
:[14]
call.i @@SetStatic@@(argc=0)
pushi.e 0
pop.v.i self.__major
pushi.e 0
pop.v.i self.__minor
exit.i

:[15]
push.i [function]gml_Script____struct___8@_funcSplit@anon@1903@__InputCompareVersions@__InputCompareVersions
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___8
call.i @@NewGMLObject@@(argc=1)
pop.v.v local._struct
b [25]

> gml_Script_anon@2664@_funcSplit@anon@1903@__InputCompareVersions@__InputCompareVersions (locals=1, argc=1)
:[16]
push.v arg.argument0
call.i ord(argc=1)
pop.v.v local._ord
pushloc.v local._ord
pushi.e 48
cmp.i.v GTE
bf [18]

:[17]
pushloc.v local._ord
pushi.e 57
cmp.i.v LTE
b [19]

:[18]
push.e 0

:[19]
bt [21]

:[20]
pushloc.v local._ord
pushi.e 46
cmp.i.v EQ
b [22]

:[21]
push.e 1

:[22]
bf [24]

:[23]
push.v arg.argument0
push.v builtin.__array
call.i array_push(argc=2)
popz.v

:[24]
exit.i

:[25]
push.i [function]gml_Script_anon@2664@_funcSplit@anon@1903@__InputCompareVersions@__InputCompareVersions
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v static._array
b [27]

> gml_Script____struct___9@_funcSplit@anon@1903@__InputCompareVersions@__InputCompareVersions (locals=0, argc=0)
:[26]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.__array
exit.i

:[27]
push.i [function]gml_Script____struct___9@_funcSplit@anon@1903@__InputCompareVersions@__InputCompareVersions
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___9
call.i @@NewGMLObject@@(argc=2)
call.i method(argc=2)
push.v arg.argument0
call.i string_foreach(argc=2)
popz.v
push.s "."@492
conv.s.v
push.v static._array
call.i array_get_index(argc=2)
pop.v.v local._firstDotIndex
pushloc.v local._firstDotIndex
pushi.e 0
cmp.i.v LT
bf [29]

:[28]
push.v static._array
call.i string_concat_ext(argc=1)
call.i @@This@@(argc=0)
push.v static._funcSafeReal
callv.v 1
pushloc.v local._struct
pushi.e -9
pop.v.v [stacktop]self.__major
b [32]

:[29]
pushloc.v local._firstDotIndex
pushi.e 0
conv.i.v
push.v static._array
call.i string_concat_ext(argc=3)
call.i @@This@@(argc=0)
push.v static._funcSafeReal
callv.v 1
pushloc.v local._struct
pushi.e -9
pop.v.v [stacktop]self.__major
pushloc.v local._firstDotIndex
pushi.e 1
add.i.v
push.s "."@492
conv.s.v
push.v static._array
call.i array_get_index(argc=3)
pop.v.v local._secondDotIndex
pushloc.v local._secondDotIndex
pushloc.v local._firstDotIndex
cmp.v.v LT
bf [31]

:[30]
pushloc.v local._firstDotIndex
pushi.e 1
add.i.v
push.v static._array
call.i string_concat_ext(argc=2)
call.i @@This@@(argc=0)
push.v static._funcSafeReal
callv.v 1
pushloc.v local._struct
pushi.e -9
pop.v.v [stacktop]self.__minor
b [32]

:[31]
pushloc.v local._secondDotIndex
pushloc.v local._firstDotIndex
sub.v.v
pushi.e 1
sub.i.v
pushloc.v local._firstDotIndex
pushi.e 1
add.i.v
push.v static._array
call.i string_concat_ext(argc=3)
call.i @@This@@(argc=0)
push.v static._funcSafeReal
callv.v 1
pushloc.v local._struct
pushi.e -9
pop.v.v [stacktop]self.__minor

:[32]
pushi.e 0
conv.i.v
push.v static._array
call.i array_resize(argc=2)
popz.v
pushloc.v local._struct
ret.v

:[33]
exit.i

:[34]
push.i [function]gml_Script__funcSplit@anon@1903@__InputCompareVersions@__InputCompareVersions
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static._funcSplit

:[35]
push.v arg.argument0
call.i string(argc=1)
pop.v.v arg.argument0
push.v arg.argument1
call.i string(argc=1)
pop.v.v arg.argument1
push.v arg.argument0
call.i @@This@@(argc=0)
push.v static._funcSplit
callv.v 1
pop.v.v local._targetStruct
push.v arg.argument1
call.i @@This@@(argc=0)
push.v static._funcSplit
callv.v 1
pop.v.v local._actualStruct
pushloc.v local._targetStruct
pushi.e -9
push.v [stacktop]self.__major
pushloc.v local._actualStruct
pushi.e -9
push.v [stacktop]self.__major
cmp.v.v NEQ
bf [37]

:[36]
pushi.e 0
conv.b.v
ret.v

:[37]
pushloc.v local._targetStruct
pushi.e -9
push.v [stacktop]self.__minor
pushloc.v local._actualStruct
pushi.e -9
push.v [stacktop]self.__minor
cmp.v.v GT
bf [39]

:[38]
pushi.e 0
conv.b.v
ret.v

:[39]
pushi.e 1
conv.b.v
ret.v

:[40]
exit.i

:[41]
push.i [function]gml_Script___InputCompareVersions
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputCompareVersions
popz.v

:[end]