:[0]
b [37]

> gml_Script___InputCursorClassPlayer (locals=0, argc=1)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [36]

:[2]
setstatic.e
call.i gml_Script___InputCursorSystem(argc=0)
pop.v.v static._system
b [11]

> gml_Script___Update@anon@771@__InputCursorClassPlayer@__InputCursorClassPlayer (locals=5, argc=0)
:[3]
push.v builtin.__x
pop.v.v builtin.__prevX
push.v builtin.__y
pop.v.v builtin.__prevY
push.v builtin.__x
pop.v.v local._nextX
push.v builtin.__y
pop.v.v local._nextY
push.v builtin.__playerIndex
pop.v.v local._playerIndex
pushi.e 1
bf [5]

:[4]
pushloc.v local._playerIndex
call.i gml_Script_InputPlayerUsingKbm(argc=1)
conv.v.b
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
call.i gml_Script_InputMouseRoomX(argc=0)
pop.v.v local._nextX
call.i gml_Script_InputMouseRoomY(argc=0)
pop.v.v local._nextY
b [10]

:[8]
pushloc.v local._playerIndex
push.l 0
conv.l.v
call.i gml_Script_InputX(argc=2)
pop.v.v local._dX
pushloc.v local._playerIndex
push.l 0
conv.l.v
call.i gml_Script_InputY(argc=2)
pop.v.v local._dY
push.v local._nextX
push.v builtin.__speed
pushloc.v local._dX
mul.v.v
add.v.v
pop.v.v local._nextX
push.v local._nextY
push.v builtin.__speed
pushloc.v local._dY
mul.v.v
add.v.v
pop.v.v local._nextY
push.v builtin.__elasticStrength
pushi.e 0
cmp.i.v GT
bf [10]

:[9]
push.v local._nextX
pushloc.v local._nextX
push.v builtin.__prevX
sub.v.v
push.v builtin.__elasticStrength
div.v.v
add.v.v
pop.v.v local._nextX
push.v local._nextY
pushloc.v local._nextY
push.v builtin.__prevY
sub.v.v
push.v builtin.__elasticStrength
div.v.v
add.v.v
pop.v.v local._nextY
push.v builtin.__elasticStrength
push.v builtin.__elasticX
pushloc.v local._nextX
call.i lerp(argc=3)
pop.v.v local._nextX
push.v builtin.__elasticStrength
push.v builtin.__elasticY
pushloc.v local._nextY
call.i lerp(argc=3)
pop.v.v local._nextY

:[10]
pushloc.v local._nextX
pop.v.v builtin.__x
pushloc.v local._nextY
pop.v.v builtin.__y
call.i @@This@@(argc=0)
push.v builtin.__Limit
callv.v 0
popz.v
exit.i

:[11]
push.i [function]gml_Script___Update@anon@771@__InputCursorClassPlayer@__InputCursorClassPlayer
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__Update
b [35]

> gml_Script___Limit@anon@2896@__InputCursorClassPlayer@__InputCursorClassPlayer (locals=17, argc=0)
:[12]
push.v builtin.__x
pop.v.v local._x
push.v builtin.__y
pop.v.v local._y
push.v builtin.__limitType
pushi.e 3
cmp.i.v EQ
bf [19]

:[13]
pushloc.v local._x
push.v builtin.__limitX
sub.v.v
pop.v.v local._dx
pushloc.v local._y
push.v builtin.__limitY
sub.v.v
pop.v.v local._dy
pushloc.v local._dx
pushloc.v local._dx
mul.v.v
pushloc.v local._dy
pushloc.v local._dy
mul.v.v
add.v.v
call.i sqrt(argc=1)
pop.v.v local._d
pushloc.v local._d
pushi.e 0
cmp.i.v GT
bf [15]

:[14]
pushloc.v local._d
push.v builtin.__limitRadius
cmp.v.v GT
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.v builtin.__limitRadius
pushloc.v local._d
div.v.v
pop.v.v local._d
push.v builtin.__limitX
pushloc.v local._d
pushloc.v local._dx
mul.v.v
add.v.v
pop.v.v local._x
push.v builtin.__limitY
pushloc.v local._d
pushloc.v local._dy
mul.v.v
add.v.v
pop.v.v local._y

:[18]
b [34]

:[19]
push.v builtin.__limitType
pushi.e 2
cmp.i.v EQ
bf [21]

:[20]
push.v builtin.__limitRight
push.v builtin.__limitLeft
pushloc.v local._x
call.i clamp(argc=3)
pop.v.v local._x
push.v builtin.__limitBottom
push.v builtin.__limitTop
pushloc.v local._y
call.i clamp(argc=3)
pop.v.v local._y
b [34]

:[21]
push.v builtin.__limitType
pushi.e 1
cmp.i.v EQ
bf [34]

:[22]
pushbltn.v builtin.view_enabled
conv.v.b
bf [24]

:[23]
pushi.e -6
pushi.e 0
push.v [array]self.view_visible
conv.v.b
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
b [28]

:[27]
pushbltn.v builtin.undefined

:[28]
pop.v.v local._camera
pushloc.v local._camera
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [32]

:[29]
pushloc.v local._camera
call.i camera_get_view_x(argc=1)
pop.v.v local._l
pushloc.v local._camera
call.i camera_get_view_y(argc=1)
pop.v.v local._t
pushloc.v local._l
pushloc.v local._camera
call.i camera_get_view_width(argc=1)
add.v.v
pushi.e 1
sub.i.v
pop.v.v local._r
pushloc.v local._t
pushloc.v local._camera
call.i camera_get_view_height(argc=1)
add.v.v
pushi.e 1
sub.i.v
pop.v.v local._b
pushloc.v local._camera
call.i camera_get_view_angle(argc=1)
pop.v.v local._viewA
pushloc.v local._viewA
pushi.e 0
cmp.i.v NEQ
bf [31]

:[30]
pushloc.v local._l
pushloc.v local._r
add.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v local._pivotX
pushloc.v local._t
pushloc.v local._b
add.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v local._pivotY
pushloc.v local._viewA
neg.v
call.i dcos(argc=1)
pop.v.v local._cos
pushloc.v local._viewA
neg.v
call.i dsin(argc=1)
pop.v.v local._sin
pushloc.v local._x
pushloc.v local._pivotX
sub.v.v
pushloc.v local._cos
mul.v.v
pushloc.v local._y
pushloc.v local._pivotY
sub.v.v
pushloc.v local._sin
mul.v.v
sub.v.v
pop.v.v local._rotatedX
pushloc.v local._x
pushloc.v local._pivotX
sub.v.v
pushloc.v local._sin
mul.v.v
pushloc.v local._y
pushloc.v local._pivotY
sub.v.v
pushloc.v local._cos
mul.v.v
add.v.v
pop.v.v local._rotatedY
pushloc.v local._r
push.v builtin.__limitMargin
sub.v.v
pushloc.v local._pivotX
sub.v.v
pushloc.v local._l
push.v builtin.__limitMargin
add.v.v
pushloc.v local._pivotX
sub.v.v
pushloc.v local._rotatedX
call.i clamp(argc=3)
pop.v.v local._rotatedX
pushloc.v local._b
push.v builtin.__limitMargin
sub.v.v
pushloc.v local._pivotY
sub.v.v
pushloc.v local._t
push.v builtin.__limitMargin
add.v.v
pushloc.v local._pivotY
sub.v.v
pushloc.v local._rotatedY
call.i clamp(argc=3)
pop.v.v local._rotatedY
pushloc.v local._rotatedX
pushloc.v local._sin
mul.v.v
pushloc.v local._rotatedY
pushloc.v local._cos
mul.v.v
add.v.v
pushloc.v local._pivotX
add.v.v
pop.v.v builtin.__x
pushloc.v local._rotatedX
neg.v
pushloc.v local._sin
mul.v.v
pushloc.v local._rotatedY
pushloc.v local._cos
mul.v.v
add.v.v
pushloc.v local._pivotY
add.v.v
pop.v.v builtin.__y
exit.i

:[31]
b [33]

:[32]
pushi.e 0
pop.v.i local._l
pushi.e 0
pop.v.i local._t
pushbltn.v builtin.room_width
pop.v.v local._r
pushbltn.v builtin.room_height
pop.v.v local._b

:[33]
pushloc.v local._r
push.v builtin.__limitMargin
sub.v.v
pushloc.v local._l
push.v builtin.__limitMargin
add.v.v
pushloc.v local._x
call.i clamp(argc=3)
pop.v.v local._x
pushloc.v local._b
push.v builtin.__limitMargin
sub.v.v
pushloc.v local._t
push.v builtin.__limitMargin
add.v.v
pushloc.v local._y
call.i clamp(argc=3)
pop.v.v local._y

:[34]
pushloc.v local._x
pop.v.v builtin.__x
pushloc.v local._y
pop.v.v builtin.__y
exit.i

:[35]
push.i [function]gml_Script___Limit@anon@2896@__InputCursorClassPlayer@__InputCursorClassPlayer
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__Limit

:[36]
push.v arg.argument0
pop.v.v builtin.__playerIndex
pushi.e 8
pop.v.i builtin.__speed
pushi.e 0
pop.v.i builtin.__x
pushi.e 0
pop.v.i builtin.__y
pushi.e 0
pop.v.i builtin.__prevX
pushi.e 0
pop.v.i builtin.__prevY
pushbltn.v builtin.undefined
pop.v.v builtin.__elasticX
pushbltn.v builtin.undefined
pop.v.v builtin.__elasticY
pushi.e 0
pop.v.i builtin.__elasticStrength
pushi.e 0
pop.v.i builtin.__limitType
pushbltn.v builtin.undefined
pop.v.v builtin.__limitX
pushbltn.v builtin.undefined
pop.v.v builtin.__limitY
pushbltn.v builtin.undefined
pop.v.v builtin.__limitRadius
pushbltn.v builtin.undefined
pop.v.v builtin.__limitLeft
pushbltn.v builtin.undefined
pop.v.v builtin.__limitTop
pushbltn.v builtin.undefined
pop.v.v builtin.__limitRight
pushbltn.v builtin.undefined
pop.v.v builtin.__limitBottom
pushbltn.v builtin.undefined
pop.v.v builtin.__limitMargin
exit.i

:[37]
push.i [function]gml_Script___InputCursorClassPlayer
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputCursorClassPlayer
popz.v

:[end]