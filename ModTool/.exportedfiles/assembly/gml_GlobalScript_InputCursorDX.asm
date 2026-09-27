:[0]
b [20]

> gml_Script_InputCursorDX (locals=1, argc=2)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument0

:[3]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushbltn.v builtin.undefined
pop.v.v builtin.argument1

:[5]
isstaticok.e
bt [7]

:[6]
setstatic.e
call.i gml_Script___InputCursorSystem(argc=0)
pop.v.v static._system
push.v static._system
pushi.e -9
push.v [stacktop]self.__playerArray
pop.v.v static._playerArray

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
push.l 0
conv.l.v
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [15]

:[14]
push.s "\")"@194
conv.s.v
push.l 0
conv.l.v
call.i typeof(argc=1)
push.s "Cursor cluster index must be a number (typeof = \""@6373
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[15]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._playerArray
pushi.e -9
pushenv [19]

:[16]
push.v arg.argument1
chknullish.e
bf [18]

:[17]
popz.v
pushi.e 0
conv.i.v

:[18]
pushi.e 0
conv.i.v
push.v builtin.__y
push.v builtin.__prevY
sub.v.v
push.v builtin.__x
push.v builtin.__prevX
sub.v.v
call.i gml_Script___InputCursorTransformCoordinate(argc=4)
pushi.e -9
push.v [stacktop]self.x
pop.v.v local.$$$$temp$$$$
popenv <drop>
push.v local.$$$$temp$$$$
ret.v

:[19]
popenv [16]
exit.i

:[20]
push.i [function]gml_Script_InputCursorDX
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputCursorDX
popz.v

:[end]