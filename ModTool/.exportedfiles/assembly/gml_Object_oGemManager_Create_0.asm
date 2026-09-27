:[0]
b [13]

> gml_Script_anon@17@gml_Object_oGemManager_Create_0 (locals=5, argc=1)
:[1]
pushi.e 0
pop.v.i local._delayCumul
pushi.e 0
pop.v.i local._j

:[2]
pushloc.v local._j
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.theAmount
cmp.v.v LT
bf [12]

:[3]
b [7]

> gml_Script_anon@158@anon@17@gml_Object_oGemManager_Create_0 (locals=0, argc=2)
:[4]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.typeReceiver
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.idSender
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.idReceiver
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.theAmount
push.v arg.argument1
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.yTo
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.xTo
b [6]

> gml_Script____struct___370@anon@158@anon@17@gml_Object_oGemManager_Create_0 (locals=0, argc=0)
:[5]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.xTo
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.yTo
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.number
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.numberMax
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.idReceiver
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v self.idSender
pushi.e -15
pushi.e 6
push.v [array]self.argument
pop.v.v self.typeReceiver
exit.i

:[6]
push.i [function]gml_Script____struct___370@anon@158@anon@17@gml_Object_oGemManager_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___370
call.i @@NewGMLObject@@(argc=8)
pushref.i 27
pushglb.v global.depthManager
push.s "gemAdd"@4997
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.yOrigin
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.xOrigin
call.i instance_create_depth(argc=5)
popz.v
exit.i

:[7]
push.i [function]gml_Script_anon@158@anon@17@gml_Object_oGemManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v local._callback
pushloc.v local._j
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.theAmount
pushi.e 1
sub.i.v
div.v.v
pop.v.v local._t
pushi.e 4
pushi.e 3
pushi.e 3
conv.i.v
pushloc.v local._t
call.i power(argc=2)
mul.v.i
sub.v.i
call.i round(argc=1)
pop.v.v local._delay
b [9]

> gml_Script_anon@1027@anon@17@gml_Object_oGemManager_Create_0 (locals=0, argc=0)
:[8]
push.v builtin.args
push.v builtin.callback
call.i method_call(argc=2)
popz.v
exit.i

:[9]
push.i [function]gml_Script_anon@1027@anon@17@gml_Object_oGemManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushloc.v local._j
push.v arg.argument0
call.i @@NewGMLArray@@(argc=2)
pushloc.v local._callback
b [11]

> gml_Script____struct___371@anon@17@gml_Object_oGemManager_Create_0 (locals=0, argc=0)
:[10]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.callback
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.args
exit.i

:[11]
push.i [function]gml_Script____struct___371@anon@17@gml_Object_oGemManager_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___371
call.i @@NewGMLObject@@(argc=3)
call.i method(argc=2)
pushi.e 1
conv.i.v
pushloc.v local._delayCumul
call.i call_later(argc=3)
popz.v
push.v local._delayCumul
pushloc.v local._delay
add.v.v
pop.v.v local._delayCumul
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
b [2]

:[12]
pushglb.v global.waitingList
push.s "oGemAdd"@9628
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v
exit.i

:[13]
push.i [function]gml_Script_anon@17@gml_Object_oGemManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.new_exchange
b [26]

> gml_Script_anon@1221@gml_Object_oGemManager_Create_0 (locals=5, argc=1)
:[14]
pushi.e 0
pop.v.i local._delayCumul
pushi.e 0
pop.v.i local._j

:[15]
pushloc.v local._j
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.theAmount
cmp.v.v LT
bf [25]

:[16]
b [20]

> gml_Script_anon@1362@anon@1221@gml_Object_oGemManager_Create_0 (locals=0, argc=2)
:[17]
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.typeReceiver
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.idSender
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.idReceiver
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.theAmount
push.v arg.argument1
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.yTo
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.xTo
b [19]

> gml_Script____struct___372@anon@1362@anon@1221@gml_Object_oGemManager_Create_0 (locals=0, argc=0)
:[18]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.xTo
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.yTo
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.number
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.numberMax
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.idReceiver
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v self.idSender
pushi.e -15
pushi.e 6
push.v [array]self.argument
pop.v.v self.typeReceiver
exit.i

:[19]
push.i [function]gml_Script____struct___372@anon@1362@anon@1221@gml_Object_oGemManager_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___372
call.i @@NewGMLObject@@(argc=8)
pushref.i 28
pushglb.v global.depthManager
push.s "gemAdd"@4997
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.yOrigin
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.xOrigin
call.i instance_create_depth(argc=5)
popz.v
exit.i

:[20]
push.i [function]gml_Script_anon@1362@anon@1221@gml_Object_oGemManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v local._callback
pushloc.v local._j
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.theAmount
pushi.e 1
sub.i.v
div.v.v
pop.v.v local._t
pushi.e 4
pushi.e 3
pushi.e 3
conv.i.v
pushloc.v local._t
call.i power(argc=2)
mul.v.i
sub.v.i
call.i round(argc=1)
pop.v.v local._delay
b [22]

> gml_Script_anon@2226@anon@1221@gml_Object_oGemManager_Create_0 (locals=0, argc=0)
:[21]
push.v builtin.args
push.v builtin.callback
call.i method_call(argc=2)
popz.v
exit.i

:[22]
push.i [function]gml_Script_anon@2226@anon@1221@gml_Object_oGemManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushloc.v local._j
push.v arg.argument0
call.i @@NewGMLArray@@(argc=2)
pushloc.v local._callback
b [24]

> gml_Script____struct___373@anon@1221@gml_Object_oGemManager_Create_0 (locals=0, argc=0)
:[23]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.callback
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.args
exit.i

:[24]
push.i [function]gml_Script____struct___373@anon@1221@gml_Object_oGemManager_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___373
call.i @@NewGMLObject@@(argc=3)
call.i method(argc=2)
pushi.e 1
conv.i.v
pushloc.v local._delayCumul
call.i call_later(argc=3)
popz.v
push.v local._delayCumul
pushloc.v local._delay
add.v.v
pop.v.v local._delayCumul
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
b [15]

:[25]
pushglb.v global.waitingList
push.s "oGemDelete"@9630
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v
exit.i

:[26]
push.i [function]gml_Script_anon@1221@gml_Object_oGemManager_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.new_lose

:[end]