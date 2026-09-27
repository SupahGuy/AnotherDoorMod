:[0]
b [20]

> gml_Script_InputCursorElasticGet (locals=0, argc=1)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument0

:[3]
isstaticok.e
bt [7]

:[4]
setstatic.e
call.i gml_Script___InputCursorSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__playerArray
pop.v.v static._playerArray
b [6]

> gml_Script____struct___210@InputCursorElasticGet@InputCursorElasticGet (locals=0, argc=0)
:[5]
call.i @@SetStatic@@(argc=0)
pushi.e 0
pop.v.b self.enabled
pushi.e 0
pop.v.i self.x
pushi.e 0
pop.v.i self.y
pushi.e 0
pop.v.i self.strength
exit.i

:[6]
push.i [function]gml_Script____struct___210@InputCursorElasticGet@InputCursorElasticGet
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___210
call.i @@NewGMLObject@@(argc=1)
pop.v.v static._result

:[7]
push.v arg.argument0
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [9]

:[8]
push.s "\")"@194
conv.s.v
push.v arg.argument0
call.i typeof(argc=1)
push.s "Player index must be a number (typeof = \""@6308
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[9]
push.v arg.argument0
pushi.e 4
cmp.i.v GTE
bf [11]

:[10]
push.s ")"@372
conv.s.v
pushi.e 4
conv.i.v
push.s " too large. Must be less than config `INPUT_MAX_PLAYERS` ("@6309
conv.s.v
push.v arg.argument0
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v

:[11]
push.v arg.argument0
pushi.e 0
cmp.i.v LT
bf [13]

:[12]
push.s " less than zero"@6311
conv.s.v
push.v arg.argument0
push.s "Player index "@6310
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[13]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._playerArray
pushi.e -9
pushenv [18]

:[14]
push.v builtin.__elasticX
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [16]

:[15]
push.v builtin.__elasticY
pushbltn.v builtin.undefined
cmp.v.v NEQ
b [17]

:[16]
push.e 0

:[17]
push.v static._result
pushi.e -9
pop.v.b [stacktop]self.enabled
push.v builtin.__elasticX
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.x
push.v builtin.__elasticY
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.y
push.v builtin.__elasticStrength
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.strength

:[18]
popenv [14]
push.v static._result
ret.v

:[19]
exit.i

:[20]
push.i [function]gml_Script_InputCursorElasticGet
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputCursorElasticGet
popz.v

:[end]