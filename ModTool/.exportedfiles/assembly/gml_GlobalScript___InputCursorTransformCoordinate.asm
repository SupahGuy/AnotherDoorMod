:[0]
pushbltn.v builtin.undefined
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i gml_Script___InputCursorTransformCoordinate(argc=5)
popz.v
b [70]

> gml_Script___InputCursorTransformCoordinate (locals=10, argc=5)
:[1]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument4

:[3]
isstaticok.e
bt [7]

:[4]
setstatic.e
b [6]

> gml_Script____struct___12@__InputCursorTransformCoordinate@__InputCursorTransformCoordinate (locals=0, argc=0)
:[5]
call.i @@SetStatic@@(argc=0)
pushi.e 0
pop.v.i self.x
pushi.e 0
pop.v.i self.y
exit.i

:[6]
push.i [function]gml_Script____struct___12@__InputCursorTransformCoordinate@__InputCursorTransformCoordinate
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___12
call.i @@NewGMLObject@@(argc=1)
pop.v.v static._result
pushbltn.v builtin.undefined
pop.v.v static._windowW
pushbltn.v builtin.undefined
pop.v.v static._windowH
pushbltn.v builtin.undefined
pop.v.v static._appSurfW
pushbltn.v builtin.undefined
pop.v.v static._appSurfH
pushbltn.v builtin.undefined
pop.v.v static._appSurfDrawL
pushbltn.v builtin.undefined
pop.v.v static._appSurfDrawT
pushbltn.v builtin.undefined
pop.v.v static._appSurfDrawW
pushbltn.v builtin.undefined
pop.v.v static._appSurfDrawH
pushbltn.v builtin.infinity
neg.v
pop.v.v static._recacheTime

:[7]
push.v arg.argument2
push.v arg.argument3
cmp.v.v NEQ
bf [68]

:[8]
push.v arg.argument2
pushi.e 0
cmp.i.v EQ
bt [10]

:[9]
push.v arg.argument3
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 1

:[11]
bf [21]

:[12]
push.v arg.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [15]

:[13]
pushbltn.v builtin.view_enabled
conv.v.b
bf [15]

:[14]
pushi.e -6
pushi.e 0
push.v [array]self.view_visible
conv.v.b
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
pop.v.v arg.argument4

:[18]
push.v arg.argument4
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [20]

:[19]
push.v arg.argument4
call.i camera_get_view_x(argc=1)
pop.v.v local._viewX
push.v arg.argument4
call.i camera_get_view_y(argc=1)
pop.v.v local._viewY
push.v arg.argument4
call.i camera_get_view_width(argc=1)
pop.v.v local._viewW
push.v arg.argument4
call.i camera_get_view_height(argc=1)
pop.v.v local._viewH
push.v arg.argument4
call.i camera_get_view_angle(argc=1)
pop.v.v local._viewA
b [21]

:[20]
pushi.e 0
pop.v.i local._viewX
pushi.e 0
pop.v.i local._viewY
pushbltn.v builtin.room_width
pop.v.v local._viewW
pushbltn.v builtin.room_height
pop.v.v local._viewH
pushi.e 0
pop.v.i local._viewA

:[21]
push.v arg.argument2
pushi.e 2
cmp.i.v EQ
bt [23]

:[22]
push.v arg.argument3
pushi.e 2
cmp.i.v EQ
b [24]

:[23]
push.e 1

:[24]
bf [37]

:[25]
push.v static._appSurfW
pushbltn.v builtin.application_surface
call.i surface_get_width(argc=1)
cmp.v.v NEQ
bt [27]

:[26]
push.v static._appSurfH
pushbltn.v builtin.application_surface
call.i surface_get_height(argc=1)
cmp.v.v NEQ
b [28]

:[27]
push.e 1

:[28]
bf [30]

:[29]
pushbltn.v builtin.application_surface
call.i surface_get_width(argc=1)
pop.v.v static._appSurfW
pushbltn.v builtin.application_surface
call.i surface_get_height(argc=1)
pop.v.v static._appSurfH
pushbltn.v builtin.infinity
neg.v
pop.v.v static._recacheTime

:[30]
pushbltn.v builtin.current_time
push.v static._recacheTime
cmp.v.v GT
bf [32]

:[31]
pushbltn.v builtin.infinity
pop.v.v static._recacheTime
call.i application_get_position(argc=0)
pop.v.v local._array
pushi.e -7
pushi.e 0
push.v [array]self._array
pop.v.v static._appSurfDrawL
pushi.e -7
pushi.e 1
push.v [array]self._array
pop.v.v static._appSurfDrawT
pushi.e -7
pushi.e 2
push.v [array]self._array
push.v static._appSurfDrawL
sub.v.v
pop.v.v static._appSurfDrawW
pushi.e -7
pushi.e 3
push.v [array]self._array
push.v static._appSurfDrawT
sub.v.v
pop.v.v static._appSurfDrawH

:[32]
push.v static._windowW
call.i window_get_width(argc=0)
cmp.v.v NEQ
bt [34]

:[33]
push.v static._windowH
call.i window_get_height(argc=0)
cmp.v.v NEQ
b [35]

:[34]
push.e 1

:[35]
bf [37]

:[36]
call.i window_get_width(argc=0)
pop.v.v static._windowW
call.i window_get_height(argc=0)
pop.v.v static._windowH
pushbltn.v builtin.current_time
pushi.e 200
add.i.v
pop.v.v static._recacheTime

:[37]
push.v arg.argument2
pushi.e 0
cmp.i.v EQ
bf [47]

:[38]
pushloc.v local._viewA
pushi.e 0
cmp.i.v EQ
bf [40]

:[39]
push.v arg.argument0
pushloc.v local._viewX
sub.v.v
pushloc.v local._viewW
div.v.v
pop.v.v arg.argument0
push.v arg.argument1
pushloc.v local._viewY
sub.v.v
pushloc.v local._viewH
div.v.v
pop.v.v arg.argument1
b [41]

:[40]
push.v local._viewX
pushloc.v local._viewW
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v local._viewX
push.v local._viewY
pushloc.v local._viewH
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v local._viewY
pushloc.v local._viewA
neg.v
call.i dsin(argc=1)
pop.v.v local._sin
pushloc.v local._viewA
neg.v
call.i dcos(argc=1)
pop.v.v local._cos
push.v arg.argument0
pushloc.v local._viewX
sub.v.v
pop.v.v local._x0
push.v arg.argument1
pushloc.v local._viewY
sub.v.v
pop.v.v local._y0
pushloc.v local._x0
pushloc.v local._cos
mul.v.v
pushloc.v local._y0
pushloc.v local._sin
mul.v.v
sub.v.v
pushloc.v local._viewW
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushloc.v local._viewW
div.v.v
pop.v.v arg.argument0
pushloc.v local._x0
pushloc.v local._sin
mul.v.v
pushloc.v local._y0
pushloc.v local._cos
mul.v.v
add.v.v
pushloc.v local._viewH
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushloc.v local._viewH
div.v.v
pop.v.v arg.argument1

:[41]
push.v arg.argument3
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
push.v arg.argument0
call.i display_get_gui_width(argc=0)
mul.v.v
pop.v.v arg.argument0
push.v arg.argument1
call.i display_get_gui_height(argc=0)
mul.v.v
pop.v.v arg.argument1
b [46]

:[43]
push.v arg.argument3
pushi.e 2
cmp.i.v EQ
bf [45]

:[44]
push.v static._appSurfDrawW
push.v arg.argument0
mul.v.v
push.v static._appSurfDrawL
add.v.v
pop.v.v arg.argument0
push.v static._appSurfDrawH
push.v arg.argument1
mul.v.v
push.v static._appSurfDrawT
add.v.v
pop.v.v arg.argument1
b [46]

:[45]
push.v arg.argument3
push.s "Unhandled output coordinate system "@1167
conv.s.v
call.i gml_Script_InputPlugInError(argc=2)
popz.v

:[46]
b [68]

:[47]
push.v arg.argument2
pushi.e 1
cmp.i.v EQ
bf [57]

:[48]
push.v arg.argument0
call.i display_get_gui_width(argc=0)
div.v.v
pop.v.v arg.argument0
push.v arg.argument1
call.i display_get_gui_height(argc=0)
div.v.v
pop.v.v arg.argument1
push.v arg.argument3
pushi.e 0
cmp.i.v EQ
bf [53]

:[49]
pushloc.v local._viewA
pushi.e 0
cmp.i.v EQ
bf [51]

:[50]
pushloc.v local._viewW
push.v arg.argument0
mul.v.v
pushloc.v local._viewX
add.v.v
pop.v.v arg.argument0
pushloc.v local._viewH
push.v arg.argument1
mul.v.v
pushloc.v local._viewY
add.v.v
pop.v.v arg.argument1
b [52]

:[51]
push.v local._viewX
pushloc.v local._viewW
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v local._viewX
push.v local._viewY
pushloc.v local._viewH
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v local._viewY
pushloc.v local._viewA
call.i dsin(argc=1)
pop.v.v local._sin
pushloc.v local._viewA
call.i dcos(argc=1)
pop.v.v local._cos
push.v arg.argument0
pushloc.v local._viewW
mul.v.v
pushloc.v local._viewW
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v local._x0
push.v arg.argument1
pushloc.v local._viewH
mul.v.v
pushloc.v local._viewH
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v local._y0
pushloc.v local._x0
pushloc.v local._cos
mul.v.v
pushloc.v local._y0
pushloc.v local._sin
mul.v.v
sub.v.v
pushloc.v local._viewX
add.v.v
pop.v.v arg.argument0
pushloc.v local._x0
pushloc.v local._sin
mul.v.v
pushloc.v local._y0
pushloc.v local._cos
mul.v.v
add.v.v
pushloc.v local._viewY
add.v.v
pop.v.v arg.argument1

:[52]
b [56]

:[53]
push.v arg.argument3
pushi.e 2
cmp.i.v EQ
bf [55]

:[54]
push.v static._appSurfDrawW
push.v arg.argument0
mul.v.v
push.v static._appSurfDrawL
add.v.v
pop.v.v arg.argument0
push.v static._appSurfDrawH
push.v arg.argument1
mul.v.v
push.v static._appSurfDrawT
add.v.v
pop.v.v arg.argument1
b [56]

:[55]
push.v arg.argument3
push.s "Unhandled output coordinate system "@1167
conv.s.v
call.i gml_Script_InputPlugInError(argc=2)
popz.v

:[56]
b [68]

:[57]
push.v arg.argument2
pushi.e 2
cmp.i.v EQ
bf [67]

:[58]
push.v arg.argument0
push.v static._appSurfDrawL
sub.v.v
push.v static._appSurfDrawW
div.v.v
pop.v.v arg.argument0
push.v arg.argument1
push.v static._appSurfDrawT
sub.v.v
push.v static._appSurfDrawH
div.v.v
pop.v.v arg.argument1
push.v arg.argument3
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
push.v arg.argument0
call.i display_get_gui_width(argc=0)
mul.v.v
pop.v.v arg.argument0
push.v arg.argument1
call.i display_get_gui_height(argc=0)
mul.v.v
pop.v.v arg.argument1
b [66]

:[60]
push.v arg.argument3
pushi.e 0
cmp.i.v EQ
bf [65]

:[61]
pushloc.v local._viewA
pushi.e 0
cmp.i.v EQ
bf [63]

:[62]
pushloc.v local._viewW
push.v arg.argument0
mul.v.v
pushloc.v local._viewX
add.v.v
pop.v.v arg.argument0
pushloc.v local._viewH
push.v arg.argument1
mul.v.v
pushloc.v local._viewY
add.v.v
pop.v.v arg.argument1
b [64]

:[63]
push.v local._viewX
pushloc.v local._viewW
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v local._viewX
push.v local._viewY
pushloc.v local._viewH
pushi.e 2
conv.i.d
div.d.v
add.v.v
pop.v.v local._viewY
pushloc.v local._viewA
call.i dsin(argc=1)
pop.v.v local._sin
pushloc.v local._viewA
call.i dcos(argc=1)
pop.v.v local._cos
push.v arg.argument0
pushloc.v local._viewW
mul.v.v
pushloc.v local._viewW
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v local._x0
push.v arg.argument1
pushloc.v local._viewH
mul.v.v
pushloc.v local._viewH
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v local._y0
pushloc.v local._x0
pushloc.v local._cos
mul.v.v
pushloc.v local._y0
pushloc.v local._sin
mul.v.v
sub.v.v
pushloc.v local._viewX
add.v.v
pop.v.v arg.argument0
pushloc.v local._x0
pushloc.v local._sin
mul.v.v
pushloc.v local._y0
pushloc.v local._cos
mul.v.v
add.v.v
pushloc.v local._viewY
add.v.v
pop.v.v arg.argument1

:[64]
b [66]

:[65]
push.v arg.argument3
push.s "Unhandled output coordinate system "@1167
conv.s.v
call.i gml_Script_InputPlugInError(argc=2)
popz.v

:[66]
b [68]

:[67]
push.v arg.argument2
push.s "Unhandled input coordinate system "@1169
conv.s.v
call.i gml_Script_InputPlugInError(argc=2)
popz.v

:[68]
push.v arg.argument0
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.x
push.v arg.argument1
push.v static._result
pushi.e -9
pop.v.v [stacktop]self.y
push.v static._result
ret.v

:[69]
exit.i

:[70]
push.i [function]gml_Script___InputCursorTransformCoordinate
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputCursorTransformCoordinate
popz.v

:[end]