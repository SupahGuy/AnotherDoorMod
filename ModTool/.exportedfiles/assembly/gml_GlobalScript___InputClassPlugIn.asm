:[0]
b [6]

> gml_Script___InputClassPlugIn (locals=0, argc=5)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [5]

:[2]
setstatic.e
b [4]

> gml_Script___Initialize@anon@483@__InputClassPlugIn@__InputClassPlugIn (locals=0, argc=0)
:[3]
push.v builtin.__alias
push.s "'s "@171
conv.s.v
push.v builtin.__author
push.s ": "@173
conv.s.v
push.v builtin.__targetInputVersion
push.s " for Input version "@175
conv.s.v
push.v builtin.__version
push.s "Using plug-in version "@177
conv.s.v
call.i gml_Script___InputTrace(argc=8)
popz.v
call.i @@This@@(argc=0)
push.v builtin.__initCallback
callv.v 0
popz.v
exit.i

:[4]
push.i [function]gml_Script___Initialize@anon@483@__InputClassPlugIn@__InputClassPlugIn
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__Initialize

:[5]
push.v arg.argument0
pop.v.v builtin.__alias
push.v arg.argument1
pop.v.v builtin.__author
push.v arg.argument2
pop.v.v builtin.__version
push.v arg.argument3
pop.v.v builtin.__targetInputVersion
push.v arg.argument4
pop.v.v builtin.__initCallback
exit.i

:[6]
push.i [function]gml_Script___InputClassPlugIn
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputClassPlugIn
popz.v

:[end]