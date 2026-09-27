:[0]
b [23]

> gml_Script_InputCursorLimitGet (locals=0, argc=1)
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

> gml_Script____struct___211@InputCursorLimitGet@InputCursorLimitGet (locals=0, argc=0)
:[5]
call.i @@SetStatic@@(argc=0)
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.x
pushi.e 0
pop.v.i self.y
pushi.e 0
pop.v.i self.radius
pushi.e 0
pop.v.i self.left
pushi.e 0
pop.v.i self.top
pushi.e 0
pop.v.i self.right
pushi.e 0
pop.v.i self.bottom
pushi.e 0
pop.v.i self.margin
exit.i

:[6]
push.i [function]gml_Script____struct___211@InputCursorLimitGet@InputCursorLimitGet
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___211
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
pushenv [21]

:[14]
push.v builtin.__limitType
pushi.e 3
cmp.i.v EQ
bf [16]

:[15]
pushi.e 3
push.v static._result
pushi.e -9
pop.v.i [stacktop]self.type
push.v builtin.__limitX
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.x
push.v builtin.__limitY
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.y
push.v builtin.__limitRadius
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.radius
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.left
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.top
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.right
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.bottom
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.margin
b [21]

:[16]
push.v builtin.__limitType
pushi.e 1
cmp.i.v EQ
bf [18]

:[17]
pushi.e 1
push.v static._result
pushi.e -9
pop.v.i [stacktop]self.type
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.x
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.y
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.radius
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.left
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.top
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.right
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.bottom
push.v builtin.__limitMargin
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.margin
b [21]

:[18]
push.v builtin.__limitType
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
pushi.e 2
push.v static._result
pushi.e -9
pop.v.i [stacktop]self.type
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.x
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.y
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.radius
push.v builtin.__limitLeft
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.left
push.v builtin.__limitTop
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.top
push.v builtin.__limitRight
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.right
push.v builtin.__limitBottom
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.bottom
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.margin
b [21]

:[20]
pushi.e 0
push.v static._result
pushi.e -9
pop.v.i [stacktop]self.type
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.x
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.y
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.radius
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.left
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.top
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.right
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.bottom
pushbltn.v builtin.undefined
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.margin

:[21]
popenv [14]
push.v static._result
ret.v

:[22]
exit.i

:[23]
push.i [function]gml_Script_InputCursorLimitGet
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputCursorLimitGet
popz.v

:[end]