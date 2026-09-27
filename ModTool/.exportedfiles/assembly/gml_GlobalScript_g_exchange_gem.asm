:[0]
b [42]

> gml_Script_g_exchange_gem (locals=13, argc=9)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument0

:[3]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushbltn.v builtin.undefined
pop.v.v builtin.argument1

:[5]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i builtin.argument2

:[7]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.i builtin.argument3

:[9]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [11]

:[10]
push.l 2
pop.v.l builtin.argument5

:[11]
pushbltn.v builtin.argument6
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [13]

:[12]
pushi.e -1
pop.v.i builtin.argument6

:[13]
pushbltn.v builtin.argument7
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [15]

:[14]
push.l 2
pop.v.l builtin.argument7

:[15]
pushbltn.v builtin.argument8
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [17]

:[16]
pushi.e -1
pop.v.i builtin.argument8

:[17]
push.v arg.argument2
pop.v.v local._xTo
push.v arg.argument3
pop.v.v local._yTo
push.v arg.argument4
pop.v.v local._amount
push.v arg.argument5
push.l 0
cmp.l.v EQ
bf [25]

:[18]
pushglb.v global.playersManager
push.v arg.argument6
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._idSender
push.v arg.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [20]

:[19]
pushloc.v local._idSender
pushi.e -9
push.v [stacktop]self.xUi
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.gemInUi
pushi.e -9
push.v [stacktop]self.x
add.v.v
pop.v.v local._xOrigin
b [21]

:[20]
push.v arg.argument0
pop.v.v local._xOrigin

:[21]
push.v arg.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [23]

:[22]
pushloc.v local._idSender
pushi.e -9
push.v [stacktop]self.yUi
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.gemInUi
pushi.e -9
push.v [stacktop]self.y
add.v.v
pop.v.v local._yOrigin
b [24]

:[23]
push.v arg.argument1
pop.v.v local._yOrigin

:[24]
b [26]

:[25]
pushi.e -1
pop.v.i local._idSender
push.v arg.argument0
pop.v.v local._xOrigin
push.v arg.argument1
pop.v.v local._yOrigin

:[26]
push.v arg.argument7
push.l 0
cmp.l.v EQ
bf [32]

:[27]
pushglb.v global.playersManager
push.v arg.argument8
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._idReceiver
pushloc.v local._idReceiver
pushi.e -9
push.v [stacktop]self.xUi
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.gemInUi
pushi.e -9
push.v [stacktop]self.x
add.v.v
pop.v.v local._xTo
pushloc.v local._idReceiver
pushi.e -9
push.v [stacktop]self.yUi
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.gemInUi
pushi.e -9
push.v [stacktop]self.y
add.v.v
pop.v.v local._yTo
push.v arg.argument4
pushloc.v local._idReceiver
pushi.e -9
pop.v.v [stacktop]self.gemIncoming
push.l 31
conv.l.v
pushloc.v local._idReceiver
call.i gml_Script_execute_effect(argc=2)
popz.v
pushloc.v local._idReceiver
pushi.e -9
push.v [stacktop]self.gemIncoming
pop.v.v local._amount
pushglb.v global.playersManager
push.l 5
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.someone_has_token_type
callv.v 1
conv.v.b
bf [31]

:[28]
pushglb.v global.playersManager
push.l 5
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.who_has_token_type
callv.v 1
pop.v.v local._whoHasForeverKing
pushloc.v local._whoHasForeverKing
push.v arg.argument8
cmp.v.v NEQ
bf [31]

:[29]
pushglb.v global.playersManager
pushloc.v local._whoHasForeverKing
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._foreverKing
pushloc.v local._foreverKing
pushi.e -9
push.v [stacktop]self.xUi
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.gemInUi
pushi.e -9
push.v [stacktop]self.x
add.v.v
pop.v.v local._xToKing
pushloc.v local._foreverKing
pushi.e -9
push.v [stacktop]self.yUi
pushglb.v global.uiPos
pushi.e -9
push.v [stacktop]self.gemInUi
pushi.e -9
push.v [stacktop]self.y
add.v.v
pop.v.v local._yToKing
pushloc.v local._amount
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.foreverKing
pushi.e -9
pushi.e 0
push.v [array]self.amount
mul.v.v
pushi.e 100
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v local._foreverKingAmount
pushloc.v local._foreverKingAmount
pushi.e 1
cmp.i.v GTE
bf [31]

:[30]
pushloc.v local._whoHasForeverKing
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.l 2
conv.l.v
pushloc.v local._foreverKingAmount
pushloc.v local._yToKing
pushloc.v local._xToKing
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_g_exchange_gem(argc=9)
popz.v

:[31]
pushloc.v local._idReceiver
dup.v 0 8
dup.v 0
push.v stacktop.reset_gem_fight_var
callv.v 0
popz.v
b [35]

:[32]
push.v arg.argument7
push.l 1
cmp.l.v EQ
bf [34]

:[33]
pushglb.v global.playersManager
push.v arg.argument8
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._idReceiver
pushglb.v global.uiPos
pushi.e -9
push.v arg.argument8
conv.v.i
push.v [array]self.gemSecured
pushi.e -9
push.v [stacktop]self.x
pop.v.v local._xTo
pushglb.v global.uiPos
pushi.e -9
push.v arg.argument8
conv.v.i
push.v [array]self.gemSecured
pushi.e -9
push.v [stacktop]self.y
pop.v.v local._yTo
push.v arg.argument4
pushloc.v local._idReceiver
pushi.e -9
pop.v.v [stacktop]self.gemSecureIncoming
push.l 32
conv.l.v
pushloc.v local._idReceiver
call.i gml_Script_execute_effect(argc=2)
popz.v
pushloc.v local._idReceiver
pushi.e -9
push.v [stacktop]self.gemSecureIncoming
pop.v.v local._amount
b [35]

:[34]
pushi.e -1
pop.v.i local._idReceiver

:[35]
push.v arg.argument7
pushloc.v local._amount
call.i round(argc=1)
pushloc.v local._idSender
pushloc.v local._idReceiver
pushloc.v local._yTo
pushloc.v local._xTo
pushloc.v local._yOrigin
pushloc.v local._xOrigin
b [37]

> gml_Script____struct___77@g_exchange_gem@g_exchange_gem (locals=0, argc=0)
:[36]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.xOrigin
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.yOrigin
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.xTo
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.yTo
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
pop.v.v self.theAmount
pushi.e -15
pushi.e 7
push.v [array]self.argument
pop.v.v self.typeReceiver
exit.i

:[37]
push.i [function]gml_Script____struct___77@g_exchange_gem@g_exchange_gem
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___77
call.i @@NewGMLObject@@(argc=9)
pop.v.v local._newExchange
pushloc.v local._newExchange
pushi.e -9
push.v [stacktop]self.theAmount
pushi.e 0
cmp.i.v GT
bf [41]

:[38]
pushloc.v local._idReceiver
pushi.e -1
cmp.i.v EQ
bf [40]

:[39]
pushglb.v global.gemManager
pushloc.v local._newExchange
dup.v 1 8
dup.v 0
push.v stacktop.new_lose
callv.v 1
popz.v
b [41]

:[40]
pushglb.v global.gemManager
pushloc.v local._newExchange
dup.v 1 8
dup.v 0
push.v stacktop.new_exchange
callv.v 1
popz.v

:[41]
exit.i

:[42]
push.i [function]gml_Script_g_exchange_gem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.g_exchange_gem
popz.v

:[end]