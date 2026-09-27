:[0]
b [462]

> gml_Script___InputClassVirtualButton (locals=0, argc=0)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [461]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system
b [5]

> gml_Script_Destroy@anon@1869@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[3]
pushi.e 1
pop.v.b builtin.__destroyed
pushi.e 1
push.v builtin._system
pushi.e -9
pop.v.b [stacktop]self.__virtualOrderDirty
pushbltn.v builtin.undefined
ret.v

:[4]
exit.i

:[5]
push.i [function]gml_Script_Destroy@anon@1869@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.Destroy
b [27]

> gml_Script_DebugDraw@anon@2035@__InputClassVirtualButton@__InputClassVirtualButton (locals=10, argc=0)
:[6]
push.v builtin.__destroyed
conv.v.b
bf [8]

:[7]
exit.i

:[8]
push.v builtin.__active
conv.v.b
bf [21]

:[9]
push.v builtin.__circular
pushi.e 1
cmp.b.v EQ
bf [11]

:[10]
pushi.e 1
conv.b.v
push.v builtin.__radius
push.v builtin.__y
push.v builtin.__x
call.i draw_circle(argc=4)
popz.v
pushi.e 1
conv.b.v
push.v builtin.__radius
pushi.e 4
sub.i.v
push.v builtin.__y
push.v builtin.__x
call.i draw_circle(argc=4)
popz.v
push.v builtin.__held
conv.v.b
not.b
conv.b.v
push.v builtin.__radius
pushi.e 8
sub.i.v
push.v builtin.__y
push.v builtin.__x
call.i draw_circle(argc=4)
popz.v
b [13]

:[11]
push.v builtin.__circular
pushi.e 0
cmp.b.v EQ
bf [13]

:[12]
pushi.e 1
conv.b.v
push.v builtin.__bottom
push.v builtin.__right
push.v builtin.__top
push.v builtin.__left
call.i draw_rectangle(argc=5)
popz.v
pushi.e 1
conv.b.v
push.v builtin.__bottom
pushi.e 4
sub.i.v
push.v builtin.__right
pushi.e 4
sub.i.v
push.v builtin.__top
pushi.e 4
add.i.v
push.v builtin.__left
pushi.e 4
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[13]
push.v builtin.__type
push.l 0
cmp.l.v EQ
bf [19]

:[14]
push.v builtin.__circular
pushi.e 1
cmp.b.v EQ
bf [16]

:[15]
push.v builtin.__held
conv.v.b
not.b
conv.b.v
push.v builtin.__radius
pushi.e 8
sub.i.v
push.v builtin.__y
push.v builtin.__x
call.i draw_circle(argc=4)
popz.v
b [18]

:[16]
push.v builtin.__circular
pushi.e 0
cmp.b.v EQ
bf [18]

:[17]
push.v builtin.__held
conv.v.b
not.b
conv.b.v
push.v builtin.__bottom
pushi.e 8
sub.i.v
push.v builtin.__right
pushi.e 8
sub.i.v
push.v builtin.__top
pushi.e 8
add.i.v
push.v builtin.__left
pushi.e 8
add.i.v
call.i draw_rectangle(argc=5)
popz.v

:[18]
b [20]

:[19]
push.d 0.5
push.v builtin.__left
push.v builtin.__right
add.v.v
mul.v.d
pop.v.v local._x
push.d 0.5
push.v builtin.__top
push.v builtin.__bottom
add.v.v
mul.v.d
pop.v.v local._y
push.d 0.5
push.v builtin.__bottom
push.v builtin.__top
sub.v.v
push.v builtin.__right
push.v builtin.__left
sub.v.v
call.i min(argc=2)
pushi.e 8
sub.i.v
mul.v.d
pop.v.v local._radius
pushi.e 1
conv.b.v
pushloc.v local._radius
pushloc.v local._y
pushloc.v local._x
call.i draw_circle(argc=4)
popz.v
pushi.e 1
conv.b.v
pushloc.v local._radius
pushi.e 1
sub.i.v
pushloc.v local._y
pushloc.v local._x
call.i draw_circle(argc=4)
popz.v
pushi.e 1
conv.b.v
pushloc.v local._radius
pushi.e 2
sub.i.v
pushloc.v local._y
pushloc.v local._x
call.i draw_circle(argc=4)
popz.v
pushi.e 1
conv.b.v
pushloc.v local._radius
pushi.e 3
sub.i.v
pushloc.v local._y
pushloc.v local._x
call.i draw_circle(argc=4)
popz.v
pushi.e 0
conv.b.v
pushloc.v local._radius
pushloc.v local._y
pushloc.v local._x
call.i draw_circle(argc=4)
popz.v
push.v builtin.__verbRight
call.i gml_Script_InputValue(argc=1)
push.v builtin.__verbLeft
call.i gml_Script_InputValue(argc=1)
sub.v.v
pop.v.v local._dx
push.v builtin.__verbDown
call.i gml_Script_InputValue(argc=1)
push.v builtin.__verbUp
call.i gml_Script_InputValue(argc=1)
sub.v.v
pop.v.v local._dy
pushloc.v local._dy
pushloc.v local._dx
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_distance(argc=4)
pop.v.v local._distance
pushloc.v local._dy
pushloc.v local._dx
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_direction(argc=4)
pop.v.v local._direction
pushloc.v local._direction
pushloc.v local._distance
call.i lengthdir_x(argc=2)
pop.v.v local._centerX
pushloc.v local._direction
pushloc.v local._distance
call.i lengthdir_y(argc=2)
pop.v.v local._centerY
pushi.e 0
conv.b.v
push.d 0.25
pushloc.v local._radius
mul.v.d
pushloc.v local._y
pushloc.v local._radius
pushloc.v local._centerY
mul.v.v
add.v.v
pushloc.v local._x
pushloc.v local._radius
pushloc.v local._centerX
mul.v.v
add.v.v
call.i draw_circle(argc=4)
popz.v

:[20]
b [26]

:[21]
call.i draw_get_alpha(argc=0)
pop.v.v local._old_alpha
push.d 0.33
pushloc.v local._old_alpha
mul.v.d
call.i draw_set_alpha(argc=1)
popz.v
push.v builtin.__circular
pushi.e 1
cmp.b.v EQ
bf [23]

:[22]
pushi.e 1
conv.b.v
push.v builtin.__radius
push.v builtin.__y
push.v builtin.__x
call.i draw_circle(argc=4)
popz.v
b [25]

:[23]
push.v builtin.__circular
pushi.e 0
cmp.b.v EQ
bf [25]

:[24]
pushi.e 1
conv.b.v
push.v builtin.__bottom
push.v builtin.__right
push.v builtin.__top
push.v builtin.__left
call.i draw_rectangle(argc=5)
popz.v

:[25]
pushloc.v local._old_alpha
call.i draw_set_alpha(argc=1)
popz.v

:[26]
exit.i

:[27]
push.i [function]gml_Script_DebugDraw@anon@2035@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.DebugDraw
b [32]

> gml_Script_Rectangle@anon@4602@__InputClassVirtualButton@__InputClassVirtualButton (locals=4, argc=4)
:[28]
push.v builtin.__destroyed
conv.v.b
bf [30]

:[29]
call.i @@This@@(argc=0)
ret.v

:[30]
push.v arg.argument2
push.v arg.argument0
call.i min(argc=2)
pop.v.v local._left
push.v arg.argument3
push.v arg.argument1
call.i min(argc=2)
pop.v.v local._top
push.v arg.argument2
push.v arg.argument0
call.i max(argc=2)
pop.v.v local._right
push.v arg.argument3
push.v arg.argument1
call.i max(argc=2)
pop.v.v local._bottom
pushi.e 0
pop.v.b builtin.__circular
pushloc.v local._left
pop.v.v builtin.__left
pushloc.v local._top
pop.v.v builtin.__top
pushloc.v local._right
pop.v.v builtin.__right
pushloc.v local._bottom
pop.v.v builtin.__bottom
pushi.e 1
pushloc.v local._right
add.v.i
pushloc.v local._left
sub.v.v
pop.v.v builtin.__width
pushi.e 1
pushloc.v local._bottom
add.v.i
pushloc.v local._top
sub.v.v
pop.v.v builtin.__height
push.d 0.5
pushloc.v local._left
pushloc.v local._right
add.v.v
mul.v.d
pop.v.v builtin.__x
push.d 0.5
pushloc.v local._bottom
pushloc.v local._top
add.v.v
mul.v.d
pop.v.v builtin.__y
pushbltn.v builtin.undefined
pop.v.v builtin.__radius
push.v builtin.__x
pop.v.v builtin.__startX
push.v builtin.__y
pop.v.v builtin.__startY
call.i @@This@@(argc=0)
ret.v

:[31]
exit.i

:[32]
push.i [function]gml_Script_Rectangle@anon@4602@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.Rectangle
b [37]

> gml_Script_Circle@anon@5393@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=3)
:[33]
push.v builtin.__destroyed
conv.v.b
bf [35]

:[34]
call.i @@This@@(argc=0)
ret.v

:[35]
pushi.e 1
pop.v.b builtin.__circular
push.v arg.argument0
push.v arg.argument2
sub.v.v
pop.v.v builtin.__left
push.v arg.argument1
push.v arg.argument2
sub.v.v
pop.v.v builtin.__top
push.v arg.argument0
push.v arg.argument2
add.v.v
pop.v.v builtin.__right
push.v arg.argument1
push.v arg.argument2
add.v.v
pop.v.v builtin.__bottom
pushi.e 2
push.v arg.argument2
mul.v.i
pop.v.v builtin.__width
pushi.e 2
push.v arg.argument2
mul.v.i
pop.v.v builtin.__height
push.v arg.argument0
pop.v.v builtin.__x
push.v arg.argument1
pop.v.v builtin.__y
push.v arg.argument2
pop.v.v builtin.__radius
push.v builtin.__x
pop.v.v builtin.__startX
push.v builtin.__y
pop.v.v builtin.__startY
call.i @@This@@(argc=0)
ret.v

:[36]
exit.i

:[37]
push.i [function]gml_Script_Circle@anon@5393@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.Circle
b [44]

> gml_Script_GetPosition@anon@5927@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[38]
isstaticok.e
bt [42]

:[39]
setstatic.e
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
b [41]

> gml_Script____struct___3@GetPosition@anon@5927@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[40]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.left
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.top
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.right
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.bottom
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.width
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v self.height
pushi.e -15
pushi.e 6
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 7
push.v [array]self.argument
pop.v.v self.y
pushi.e -15
pushi.e 8
push.v [array]self.argument
pop.v.v self.radius
exit.i

:[41]
push.i [function]gml_Script____struct___3@GetPosition@anon@5927@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___3
call.i @@NewGMLObject@@(argc=10)
pop.v.v static._struct

:[42]
push.v builtin.__left
push.v static._struct
pushi.e -9
pop.v.v [stacktop]self.left
push.v builtin.__top
push.v static._struct
pushi.e -9
pop.v.v [stacktop]self.top
push.v builtin.__right
push.v static._struct
pushi.e -9
pop.v.v [stacktop]self.right
push.v builtin.__bottom
push.v static._struct
pushi.e -9
pop.v.v [stacktop]self.bottom
push.v builtin.__width
push.v static._struct
pushi.e -9
pop.v.v [stacktop]self.width
push.v builtin.__height
push.v static._struct
pushi.e -9
pop.v.v [stacktop]self.height
push.v builtin.__x
push.v static._struct
pushi.e -9
pop.v.v [stacktop]self.x
push.v builtin.__y
push.v static._struct
pushi.e -9
pop.v.v [stacktop]self.y
push.v builtin.__radius
push.v static._struct
pushi.e -9
pop.v.v [stacktop]self.radius
push.v static._struct
ret.v

:[43]
exit.i

:[44]
push.i [function]gml_Script_GetPosition@anon@5927@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetPosition
b [49]

> gml_Script_Button@anon@6703@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=1)
:[45]
push.v builtin.__destroyed
conv.v.b
bf [47]

:[46]
call.i @@This@@(argc=0)
ret.v

:[47]
push.l 0
pop.v.l builtin.__type
push.v arg.argument0
pop.v.v builtin.__verbClick
pushbltn.v builtin.undefined
pop.v.v builtin.__verbLeft
pushbltn.v builtin.undefined
pop.v.v builtin.__verbRight
pushbltn.v builtin.undefined
pop.v.v builtin.__verbUp
pushbltn.v builtin.undefined
pop.v.v builtin.__verbDown
call.i @@This@@(argc=0)
ret.v

:[48]
exit.i

:[49]
push.i [function]gml_Script_Button@anon@6703@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.Button
b [54]

> gml_Script_HPad@anon@7087@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=3)
:[50]
push.v builtin.__destroyed
conv.v.b
bf [52]

:[51]
call.i @@This@@(argc=0)
ret.v

:[52]
push.l 3
pop.v.l builtin.__type
push.v arg.argument0
pop.v.v builtin.__verbClick
push.v arg.argument1
pop.v.v builtin.__verbLeft
push.v arg.argument2
pop.v.v builtin.__verbRight
pushbltn.v builtin.undefined
pop.v.v builtin.__verbUp
pushbltn.v builtin.undefined
pop.v.v builtin.__verbDown
call.i @@This@@(argc=0)
ret.v

:[53]
exit.i

:[54]
push.i [function]gml_Script_HPad@anon@7087@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.HPad
b [59]

> gml_Script_VPad@anon@7464@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=3)
:[55]
push.v builtin.__destroyed
conv.v.b
bf [57]

:[56]
call.i @@This@@(argc=0)
ret.v

:[57]
push.l 4
pop.v.l builtin.__type
push.v arg.argument0
pop.v.v builtin.__verbClick
pushbltn.v builtin.undefined
pop.v.v builtin.__verbLeft
pushbltn.v builtin.undefined
pop.v.v builtin.__verbRight
push.v arg.argument1
pop.v.v builtin.__verbUp
push.v arg.argument2
pop.v.v builtin.__verbDown
call.i @@This@@(argc=0)
ret.v

:[58]
exit.i

:[59]
push.i [function]gml_Script_VPad@anon@7464@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.VPad
b [69]

> gml_Script_DPad@anon@7804@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=6)
:[60]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [62]

:[61]
pushi.e 0
pop.v.b builtin.argument5

:[62]
push.v builtin.__destroyed
conv.v.b
bf [64]

:[63]
call.i @@This@@(argc=0)
ret.v

:[64]
push.v arg.argument5
conv.v.b
bf [66]

:[65]
push.l 1
conv.l.v
b [67]

:[66]
push.l 2
conv.l.v

:[67]
pop.v.v builtin.__type
push.v arg.argument0
pop.v.v builtin.__verbClick
push.v arg.argument1
pop.v.v builtin.__verbLeft
push.v arg.argument2
pop.v.v builtin.__verbRight
push.v arg.argument3
pop.v.v builtin.__verbUp
push.v arg.argument4
pop.v.v builtin.__verbDown
call.i @@This@@(argc=0)
ret.v

:[68]
exit.i

:[69]
push.i [function]gml_Script_DPad@anon@7804@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.DPad
b [74]

> gml_Script_Thumbstick@anon@8231@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=5)
:[70]
push.v builtin.__destroyed
conv.v.b
bf [72]

:[71]
call.i @@This@@(argc=0)
ret.v

:[72]
push.l 5
pop.v.l builtin.__type
push.v arg.argument0
pop.v.v builtin.__verbClick
push.v arg.argument1
pop.v.v builtin.__verbLeft
push.v arg.argument2
pop.v.v builtin.__verbRight
push.v arg.argument3
pop.v.v builtin.__verbUp
push.v arg.argument4
pop.v.v builtin.__verbDown
call.i @@This@@(argc=0)
ret.v

:[73]
exit.i

:[74]
push.i [function]gml_Script_Thumbstick@anon@8231@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.Thumbstick
b [79]

> gml_Script_Touchpad@anon@8604@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=5)
:[75]
push.v builtin.__destroyed
conv.v.b
bf [77]

:[76]
call.i @@This@@(argc=0)
ret.v

:[77]
push.l 6
pop.v.l builtin.__type
push.v arg.argument0
pop.v.v builtin.__verbClick
push.v arg.argument1
pop.v.v builtin.__verbLeft
push.v arg.argument2
pop.v.v builtin.__verbRight
push.v arg.argument3
pop.v.v builtin.__verbUp
push.v arg.argument4
pop.v.v builtin.__verbDown
call.i @@This@@(argc=0)
ret.v

:[78]
exit.i

:[79]
push.i [function]gml_Script_Touchpad@anon@8604@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.Touchpad
b [82]

> gml_Script_GetType@anon@8973@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[80]
push.v builtin.__type
ret.v

:[81]
exit.i

:[82]
push.i [function]gml_Script_GetType@anon@8973@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetType
b [89]

> gml_Script_GetVerbs@anon@9051@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[83]
isstaticok.e
bt [87]

:[84]
setstatic.e
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
b [86]

> gml_Script____struct___4@GetVerbs@anon@9051@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[85]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.click
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.left
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.right
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.up
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.down
exit.i

:[86]
push.i [function]gml_Script____struct___4@GetVerbs@anon@9051@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___4
call.i @@NewGMLObject@@(argc=6)
pop.v.v static._struct

:[87]
push.v builtin.__verbClick
push.v static._struct
pushi.e -9
pop.v.v [stacktop]self.click
push.v builtin.__verbLeft
push.v static._struct
pushi.e -9
pop.v.v [stacktop]self.left
push.v builtin.__verbRight
push.v static._struct
pushi.e -9
pop.v.v [stacktop]self.right
push.v builtin.__verbUp
push.v static._struct
pushi.e -9
pop.v.v [stacktop]self.up
push.v builtin.__verbDown
push.v static._struct
pushi.e -9
pop.v.v [stacktop]self.down
push.v static._struct
ret.v

:[88]
exit.i

:[89]
push.i [function]gml_Script_GetVerbs@anon@9051@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetVerbs
b [94]

> gml_Script_Threshold@anon@9531@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=2)
:[90]
push.v builtin.__destroyed
conv.v.b
bf [92]

:[91]
call.i @@This@@(argc=0)
ret.v

:[92]
push.v arg.argument0
pop.v.v builtin.__thresholdMin
push.v arg.argument1
pop.v.v builtin.__thresholdMax
call.i @@This@@(argc=0)
ret.v

:[93]
exit.i

:[94]
push.i [function]gml_Script_Threshold@anon@9531@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.Threshold
b [101]

> gml_Script_GetThreshold@anon@9744@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[95]
isstaticok.e
bt [99]

:[96]
setstatic.e
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
b [98]

> gml_Script____struct___5@GetThreshold@anon@9744@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[97]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.mini
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.maxi
exit.i

:[98]
push.i [function]gml_Script____struct___5@GetThreshold@anon@9744@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___5
call.i @@NewGMLObject@@(argc=3)
pop.v.v static._struct

:[99]
push.v builtin.__thresholdMin
push.v static._struct
pushi.e -9
pop.v.v [stacktop]self.mini
push.v builtin.__thresholdMax
push.v static._struct
pushi.e -9
pop.v.v [stacktop]self.maxi
push.v static._struct
ret.v

:[100]
exit.i

:[101]
push.i [function]gml_Script_GetThreshold@anon@9744@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetThreshold
b [111]

> gml_Script_Active@anon@10021@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=1)
:[102]
push.v builtin.__destroyed
conv.v.b
bf [104]

:[103]
call.i @@This@@(argc=0)
ret.v

:[104]
push.v arg.argument0
conv.v.b
not.b
bf [106]

:[105]
push.v builtin.__active
conv.v.b
b [107]

:[106]
push.e 0

:[107]
bf [109]

:[108]
call.i @@This@@(argc=0)
push.v builtin.__ClearState
callv.v 0
popz.v

:[109]
push.v arg.argument0
pop.v.v builtin.__active
call.i @@This@@(argc=0)
ret.v

:[110]
exit.i

:[111]
push.i [function]gml_Script_Active@anon@10021@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.Active
b [114]

> gml_Script_GetActive@anon@10292@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[112]
push.v builtin.__active
ret.v

:[113]
exit.i

:[114]
push.i [function]gml_Script_GetActive@anon@10292@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetActive
b [121]

> gml_Script_Priority@anon@10372@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=1)
:[115]
push.v builtin.__destroyed
conv.v.b
bf [117]

:[116]
call.i @@This@@(argc=0)
ret.v

:[117]
push.v builtin.__priority
push.v arg.argument0
cmp.v.v NEQ
bf [119]

:[118]
push.v arg.argument0
pop.v.v builtin.__priority
pushi.e 1
push.v builtin._system
pushi.e -9
pop.v.b [stacktop]self.__virtualOrderDirty

:[119]
call.i @@This@@(argc=0)
ret.v

:[120]
exit.i

:[121]
push.i [function]gml_Script_Priority@anon@10372@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.Priority
b [124]

> gml_Script_GetPriority@anon@10665@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[122]
push.v builtin.__priority
ret.v

:[123]
exit.i

:[124]
push.i [function]gml_Script_GetPriority@anon@10665@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetPriority
b [129]

> gml_Script_Follow@anon@10745@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=1)
:[125]
push.v builtin.__destroyed
conv.v.b
bf [127]

:[126]
call.i @@This@@(argc=0)
ret.v

:[127]
push.v arg.argument0
pop.v.v builtin.__follow
call.i @@This@@(argc=0)
ret.v

:[128]
exit.i

:[129]
push.i [function]gml_Script_Follow@anon@10745@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.Follow
b [132]

> gml_Script_GetFollow@anon@10915@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[130]
push.v builtin.__follow
ret.v

:[131]
exit.i

:[132]
push.i [function]gml_Script_GetFollow@anon@10915@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetFollow
b [135]

> gml_Script_ReleaseBehavior@anon@11002@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=1)
:[133]
push.v arg.argument0
pop.v.v builtin.__releaseBehavior
call.i @@This@@(argc=0)
ret.v

:[134]
exit.i

:[135]
push.i [function]gml_Script_ReleaseBehavior@anon@11002@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.ReleaseBehavior
b [138]

> gml_Script_GetReleaseBehavior@anon@11143@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[136]
push.v builtin.__releaseBehavior
ret.v

:[137]
exit.i

:[138]
push.i [function]gml_Script_GetReleaseBehavior@anon@11143@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetReleaseBehavior
b [146]

> gml_Script_FirstTouchOnly@anon@11238@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=1)
:[139]
push.v arg.argument0
conv.v.b
bf [141]

:[140]
push.v builtin.__touchDevice
pushi.e 0
cmp.i.v GT
b [142]

:[141]
push.e 0

:[142]
bf [144]

:[143]
call.i @@This@@(argc=0)
push.v builtin.__ClearState
callv.v 0
popz.v

:[144]
push.v arg.argument0
pop.v.v builtin.__firstTouchOnly
call.i @@This@@(argc=0)
ret.v

:[145]
exit.i

:[146]
push.i [function]gml_Script_FirstTouchOnly@anon@11238@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.FirstTouchOnly
b [149]

> gml_Script_GetFirstTouchOnly@anon@11485@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[147]
push.v builtin.__firstTouchOnly
ret.v

:[148]
exit.i

:[149]
push.i [function]gml_Script_GetFirstTouchOnly@anon@11485@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetFirstTouchOnly
b [152]

> gml_Script_ReferencePoint@anon@11579@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=1)
:[150]
push.v arg.argument0
pop.v.v builtin.__reference
call.i @@This@@(argc=0)
ret.v

:[151]
exit.i

:[152]
push.i [function]gml_Script_ReferencePoint@anon@11579@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.ReferencePoint
b [155]

> gml_Script_GetReferencePoint@anon@11713@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[153]
push.v builtin.__reference
ret.v

:[154]
exit.i

:[155]
push.i [function]gml_Script_GetReferencePoint@anon@11713@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetReferencePoint
b [158]

> gml_Script_Momentary@anon@11797@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=1)
:[156]
push.v arg.argument0
pop.v.v builtin.__momentary
call.i @@This@@(argc=0)
ret.v

:[157]
exit.i

:[158]
push.i [function]gml_Script_Momentary@anon@11797@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.Momentary
b [161]

> gml_Script_GetMomentary@anon@11924@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[159]
push.v builtin.__momentary
ret.v

:[160]
exit.i

:[161]
push.i [function]gml_Script_GetMomentary@anon@11924@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetMomentary
b [169]

> gml_Script_Pressed@anon@12067@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[162]
push.v builtin.__destroyed
conv.v.b
bf [164]

:[163]
pushi.e 0
conv.b.v
ret.v

:[164]
push.v builtin.__prevHeld
conv.v.b
not.b
bf [166]

:[165]
push.v builtin.__held
conv.v.b
b [167]

:[166]
push.e 0

:[167]
conv.b.v
ret.v

:[168]
exit.i

:[169]
push.i [function]gml_Script_Pressed@anon@12067@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.Pressed
b [174]

> gml_Script_Check@anon@12214@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[170]
push.v builtin.__destroyed
conv.v.b
bf [172]

:[171]
pushi.e 0
conv.b.v
ret.v

:[172]
push.v builtin.__held
ret.v

:[173]
exit.i

:[174]
push.i [function]gml_Script_Check@anon@12214@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.Check
b [182]

> gml_Script_Released@anon@12342@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[175]
push.v builtin.__destroyed
conv.v.b
bf [177]

:[176]
pushi.e 0
conv.b.v
ret.v

:[177]
push.v builtin.__prevHeld
conv.v.b
bf [179]

:[178]
push.v builtin.__held
conv.v.b
not.b
b [180]

:[179]
push.e 0

:[180]
conv.b.v
ret.v

:[181]
exit.i

:[182]
push.i [function]gml_Script_Released@anon@12342@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.Released
b [187]

> gml_Script_GetX@anon@12488@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[183]
push.v builtin.__destroyed
conv.v.b
bf [185]

:[184]
pushi.e 0
conv.i.v
ret.v

:[185]
push.v builtin.__normalizedX
ret.v

:[186]
exit.i

:[187]
push.i [function]gml_Script_GetX@anon@12488@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetX
b [192]

> gml_Script_GetY@anon@12615@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[188]
push.v builtin.__destroyed
conv.v.b
bf [190]

:[189]
pushi.e 0
conv.i.v
ret.v

:[190]
push.v builtin.__normalizedY
ret.v

:[191]
exit.i

:[192]
push.i [function]gml_Script_GetY@anon@12615@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetY
b [197]

> gml_Script_GetTouchX@anon@12747@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[193]
push.v builtin.__destroyed
conv.v.b
bf [195]

:[194]
pushi.e 0
conv.i.v
ret.v

:[195]
push.v builtin.__touchX
ret.v

:[196]
exit.i

:[197]
push.i [function]gml_Script_GetTouchX@anon@12747@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetTouchX
b [202]

> gml_Script_GetTouchY@anon@12874@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[198]
push.v builtin.__destroyed
conv.v.b
bf [200]

:[199]
pushi.e 0
conv.i.v
ret.v

:[200]
push.v builtin.__touchY
ret.v

:[201]
exit.i

:[202]
push.i [function]gml_Script_GetTouchY@anon@12874@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetTouchY
b [209]

> gml_Script_GetTouchDX@anon@13002@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[203]
push.v builtin.__destroyed
conv.v.b
bf [205]

:[204]
pushi.e 0
conv.i.v
ret.v

:[205]
push.v builtin.__prevX
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [207]

:[206]
pushi.e 0
conv.i.v
ret.v

:[207]
push.v builtin.__touchX
push.v builtin.__prevX
sub.v.v
ret.v

:[208]
exit.i

:[209]
push.i [function]gml_Script_GetTouchDX@anon@13002@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetTouchDX
b [216]

> gml_Script_GetTouchDY@anon@13185@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[210]
push.v builtin.__destroyed
conv.v.b
bf [212]

:[211]
pushi.e 0
conv.i.v
ret.v

:[212]
push.v builtin.__prevY
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [214]

:[213]
pushi.e 0
conv.i.v
ret.v

:[214]
push.v builtin.__touchY
push.v builtin.__prevY
sub.v.v
ret.v

:[215]
exit.i

:[216]
push.i [function]gml_Script_GetTouchDY@anon@13185@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetTouchDY
b [221]

> gml_Script_GetTouchStartX@anon@13372@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[217]
push.v builtin.__destroyed
conv.v.b
bf [219]

:[218]
pushi.e 0
conv.i.v
ret.v

:[219]
push.v builtin.__touchStartX
ret.v

:[220]
exit.i

:[221]
push.i [function]gml_Script_GetTouchStartX@anon@13372@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetTouchStartX
b [226]

> gml_Script_GetTouchStartY@anon@13509@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[222]
push.v builtin.__destroyed
conv.v.b
bf [224]

:[223]
pushi.e 0
conv.i.v
ret.v

:[224]
push.v builtin.__touchStartY
ret.v

:[225]
exit.i

:[226]
push.i [function]gml_Script_GetTouchStartY@anon@13509@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetTouchStartY
b [239]

> gml_Script_RecordHistory@anon@13706@__InputClassVirtualButton@__InputClassVirtualButton (locals=1, argc=1)
:[227]
push.v builtin.__destroyed
conv.v.b
bf [229]

:[228]
pushbltn.v builtin.undefined
ret.v

:[229]
push.v arg.argument0
pop.v.v builtin.__recordHistory
push.v builtin.__recordHistory
push.v builtin.__historyArray
call.i is_array(argc=1)
cmp.v.v NEQ
bf [237]

:[230]
push.v builtin.__recordHistory
conv.v.b
bf [236]

:[231]
pushbltn.v builtin.undefined
pushi.e 11
conv.i.v
call.i array_create(argc=2)
pop.v.v builtin.__historyArray
pushi.e 0
pop.v.i builtin.__historyCount
pushi.e 0
pop.v.i local._i
pushi.e 11
dup.i 0
push.i 0
cmp.i.i LTE
bt [235]

:[232]
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
b [234]

> gml_Script____struct___6@RecordHistory@anon@13706@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[233]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[234]
push.i [function]gml_Script____struct___6@RecordHistory@anon@13706@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___6
call.i @@NewGMLObject@@(argc=3)
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.__historyArray
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [232]

:[235]
popz.i
b [237]

:[236]
pushbltn.v builtin.undefined
pop.v.v builtin.__historyArray
pushi.e 0
pop.v.i builtin.__historyCount

:[237]
call.i @@This@@(argc=0)
ret.v

:[238]
exit.i

:[239]
push.i [function]gml_Script_RecordHistory@anon@13706@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.RecordHistory
b [244]

> gml_Script_GetHistory@anon@14844@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=0)
:[240]
push.v builtin.__destroyed
conv.v.b
bf [242]

:[241]
pushbltn.v builtin.undefined
ret.v

:[242]
push.v builtin.__historyArray
ret.v

:[243]
exit.i

:[244]
push.i [function]gml_Script_GetHistory@anon@14844@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetHistory
b [257]

> gml_Script_GetHistoryDirection@anon@14995@__InputClassVirtualButton@__InputClassVirtualButton (locals=2, argc=1)
:[245]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [247]

:[246]
pushi.e 10
pop.v.i builtin.argument0

:[247]
push.v builtin.__destroyed
conv.v.b
bf [249]

:[248]
pushbltn.v builtin.undefined
ret.v

:[249]
push.v arg.argument0
pushi.e 0
cmp.i.v LTE
bf [251]

:[250]
push.s "Number of sampling frames must be 1 or greater"@371
conv.s.v
call.i gml_Script___InputError(argc=1)
popz.v
pushbltn.v builtin.undefined
ret.v

:[251]
push.v arg.argument0
pushi.e 10
cmp.i.v GT
bf [253]

:[252]
push.s ")"@372
conv.s.v
pushi.e 10
conv.i.v
push.s ") cannot exceed INPUT_VIRTUAL_BUTTON_HISTORY_FRAMES ("@373
conv.s.v
push.v arg.argument0
push.s "Number of sampling frames ("@374
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v
pushbltn.v builtin.undefined
ret.v

:[253]
pushi.e 10
conv.i.v
push.v arg.argument0
push.v builtin.__historyCount
pushi.e 1
sub.i.v
call.i min(argc=3)
pop.v.v arg.argument0
push.v arg.argument0
pushi.e 0
cmp.i.v LTE
bf [255]

:[254]
pushi.e 0
conv.i.v
ret.v

:[255]
pushi.e -6
pushi.e 0
push.v [array]self.__historyArray
pop.v.v local._point0
pushi.e -6
push.v arg.argument0
conv.v.i
push.v [array]self.__historyArray
pop.v.v local._pointN
pushloc.v local._point0
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._point0
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._pointN
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._pointN
pushi.e -9
push.v [stacktop]self.x
call.i point_direction(argc=4)
ret.v

:[256]
exit.i

:[257]
push.i [function]gml_Script_GetHistoryDirection@anon@14995@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetHistoryDirection
b [272]

> gml_Script_GetHistoryDistance@anon@16000@__InputClassVirtualButton@__InputClassVirtualButton (locals=9, argc=1)
:[258]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [260]

:[259]
pushi.e 10
pop.v.i builtin.argument0

:[260]
push.v builtin.__destroyed
conv.v.b
bf [262]

:[261]
pushbltn.v builtin.undefined
ret.v

:[262]
push.v arg.argument0
pushi.e 0
cmp.i.v LTE
bf [264]

:[263]
push.s "Number of sampling frames must be 1 or greater"@371
conv.s.v
call.i gml_Script___InputError(argc=1)
popz.v
pushbltn.v builtin.undefined
ret.v

:[264]
push.v arg.argument0
pushi.e 10
cmp.i.v GT
bf [266]

:[265]
push.s ")"@372
conv.s.v
pushi.e 10
conv.i.v
push.s ") cannot exceed INPUT_VIRTUAL_BUTTON_HISTORY_FRAMES ("@373
conv.s.v
push.v arg.argument0
push.s "Number of sampling frames ("@374
conv.s.v
call.i gml_Script___InputError(argc=5)
popz.v
pushbltn.v builtin.undefined
ret.v

:[266]
pushi.e 10
conv.i.v
push.v arg.argument0
push.v builtin.__historyCount
pushi.e 1
sub.i.v
call.i min(argc=3)
pop.v.v arg.argument0
push.v arg.argument0
pushi.e 0
cmp.i.v LTE
bf [268]

:[267]
pushi.e 0
conv.i.v
ret.v

:[268]
pushi.e 0
pop.v.i local._distance
pushbltn.v builtin.undefined
pop.v.v local._x1
pushbltn.v builtin.undefined
pop.v.v local._y1
pushi.e -6
pushi.e 0
push.v [array]self.__historyArray
pop.v.v local._point
pushloc.v local._point
pushi.e -9
push.v [stacktop]self.x
pop.v.v local._x2
pushloc.v local._point
pushi.e -9
push.v [stacktop]self.y
pop.v.v local._y2
pushi.e 1
pop.v.i local._i
push.v arg.argument0
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [270]

:[269]
pushloc.v local._x2
pop.v.v local._x1
pushloc.v local._y2
pop.v.v local._y1
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.__historyArray
pop.v.v local._point
pushloc.v local._point
pushi.e -9
push.v [stacktop]self.x
pop.v.v local._x2
pushloc.v local._point
pushi.e -9
push.v [stacktop]self.y
pop.v.v local._y2
pushloc.v local._x2
pushloc.v local._x1
sub.v.v
pop.v.v local._dX
pushloc.v local._y2
pushloc.v local._y1
sub.v.v
pop.v.v local._dY
push.v local._distance
pushloc.v local._dX
pushloc.v local._dX
mul.v.v
pushloc.v local._dY
pushloc.v local._dY
mul.v.v
add.v.v
call.i sqrt(argc=1)
add.v.v
pop.v.v local._distance
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [269]

:[270]
popz.i
pushloc.v local._distance
ret.v

:[271]
exit.i

:[272]
push.i [function]gml_Script_GetHistoryDistance@anon@16000@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetHistoryDistance
b [281]

> gml_Script_GetHistorySpeed@anon@17473@__InputClassVirtualButton@__InputClassVirtualButton (locals=0, argc=1)
:[273]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [275]

:[274]
pushi.e 10
pop.v.i builtin.argument0

:[275]
push.v builtin.__destroyed
conv.v.b
bf [277]

:[276]
pushbltn.v builtin.undefined
ret.v

:[277]
pushi.e 10
conv.i.v
push.v arg.argument0
push.v builtin.__historyCount
pushi.e 1
sub.i.v
call.i min(argc=3)
pop.v.v arg.argument0
push.v arg.argument0
pushi.e 0
cmp.i.v LTE
bf [279]

:[278]
pushi.e 0
conv.i.v
ret.v

:[279]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.GetHistoryDistance
callv.v 1
push.v arg.argument0
div.v.v
ret.v

:[280]
exit.i

:[281]
push.i [function]gml_Script_GetHistorySpeed@anon@17473@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.GetHistorySpeed
b [298]

> gml_Script___ClearState@anon@17965@__InputClassVirtualButton@__InputClassVirtualButton (locals=3, argc=0)
:[282]
pushbltn.v builtin.undefined
pop.v.v builtin.__touchDevice
pushi.e 0
pop.v.b builtin.__prevHeld
pushi.e 0
pop.v.b builtin.__held
pushi.e 0
pop.v.b builtin.__heldBuffer
pushi.e 0
pop.v.i builtin.__normalizedX
pushi.e 0
pop.v.i builtin.__normalizedY
pushbltn.v builtin.undefined
pop.v.v builtin.__touchX
pushbltn.v builtin.undefined
pop.v.v builtin.__touchY
pushbltn.v builtin.undefined
pop.v.v builtin.__touchStartX
pushbltn.v builtin.undefined
pop.v.v builtin.__touchStartY
push.v builtin.__recordHistory
conv.v.b
bf [288]

:[283]
pushi.e 0
pop.v.i builtin.__historyCount
pushi.e 0
pop.v.i local._i
pushi.e 11
dup.i 0
push.i 0
cmp.i.i LTE
bt [287]

:[284]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.__historyArray
pushi.e -9
pushenv [286]

:[285]
pushbltn.v builtin.undefined
pop.v.v builtin.x
pushbltn.v builtin.undefined
pop.v.v builtin.y

:[286]
popenv [285]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [284]

:[287]
popz.i

:[288]
push.v builtin.__releaseBehavior
push.l 2
cmp.l.v EQ
bf [295]

:[289]
push.v builtin.__startX
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [291]

:[290]
push.v builtin.__startY
pushbltn.v builtin.undefined
cmp.v.v NEQ
b [292]

:[291]
push.e 0

:[292]
bf [294]

:[293]
push.v builtin.__startX
push.v builtin.__x
sub.v.v
pop.v.v local._dx
push.v builtin.__startY
push.v builtin.__y
sub.v.v
pop.v.v local._dy
push.v builtin.__left
pushloc.v local._dx
add.v.v
pop.v.v builtin.__left
push.v builtin.__top
pushloc.v local._dy
add.v.v
pop.v.v builtin.__top
push.v builtin.__right
pushloc.v local._dx
add.v.v
pop.v.v builtin.__right
push.v builtin.__bottom
pushloc.v local._dy
add.v.v
pop.v.v builtin.__bottom
push.v builtin.__startX
pop.v.v builtin.__x
push.v builtin.__startY
pop.v.v builtin.__y

:[294]
b [297]

:[295]
push.v builtin.__releaseBehavior
push.l 1
cmp.l.v EQ
bf [297]

:[296]
call.i @@This@@(argc=0)
push.v builtin.Destroy
callv.v 0
popz.v

:[297]
exit.i

:[298]
push.i [function]gml_Script___ClearState@anon@17965@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__ClearState
b [319]

> gml_Script___CaptureTouchpoint@anon@19530@__InputClassVirtualButton@__InputClassVirtualButton (locals=3, argc=1)
:[299]
push.v builtin.__touchDevice
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [301]

:[300]
pushi.e 0
conv.b.v
ret.v

:[301]
push.v builtin.__circular
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [303]

:[302]
pushi.e 0
conv.b.v
ret.v

:[303]
push.v builtin.__active
conv.v.b
not.b
bf [305]

:[304]
pushi.e 0
conv.b.v
ret.v

:[305]
push.v builtin.__firstTouchOnly
conv.v.b
bf [307]

:[306]
push.v arg.argument0
pushi.e 0
cmp.i.v GT
b [308]

:[307]
push.e 0

:[308]
bf [310]

:[309]
pushi.e 0
conv.b.v
ret.v

:[310]
push.v arg.argument0
call.i device_mouse_x_to_gui(argc=1)
pop.v.v local._touch_x
push.v arg.argument0
call.i device_mouse_y_to_gui(argc=1)
pop.v.v local._touch_y
push.v builtin.__circular
conv.v.b
bf [312]

:[311]
push.v builtin.__radius
push.v builtin.__y
push.v builtin.__x
pushloc.v local._touch_y
pushloc.v local._touch_x
call.i point_in_circle(argc=5)
pop.v.v local._over
b [313]

:[312]
push.v builtin.__bottom
push.v builtin.__right
push.v builtin.__top
push.v builtin.__left
pushloc.v local._touch_y
pushloc.v local._touch_x
call.i point_in_rectangle(argc=6)
pop.v.v local._over

:[313]
pushloc.v local._over
conv.v.b
bf [317]

:[314]
pushloc.v local._touch_x
pop.v.v builtin.__touchStartX
pushloc.v local._touch_y
pop.v.v builtin.__touchStartY
push.v builtin.__touchStartX
pop.v.v builtin.__touchX
push.v builtin.__touchStartY
pop.v.v builtin.__touchY
push.v builtin.__recordHistory
conv.v.b
bf [316]

:[315]
pushloc.v local._touch_y
pushloc.v local._touch_x
call.i @@This@@(argc=0)
push.v builtin.__HistoryPush
callv.v 2
popz.v

:[316]
push.v arg.argument0
pop.v.v builtin.__touchDevice
push.v builtin._system
pushi.e -9
push.v [stacktop]self.__frame
pop.v.v builtin.__captureFrame

:[317]
pushloc.v local._over
ret.v

:[318]
exit.i

:[319]
push.i [function]gml_Script___CaptureTouchpoint@anon@19530@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__CaptureTouchpoint
b [458]

> gml_Script___Collect@anon@20753@__InputClassVirtualButton@__InputClassVirtualButton (locals=17, argc=2)
:[320]
push.v builtin.__touchDevice
pop.v.v local._touchDevice
push.v builtin.__destroyed
conv.v.b
bt [322]

:[321]
pushloc.v local._touchDevice
pushbltn.v builtin.undefined
cmp.v.v EQ
b [323]

:[322]
push.e 1

:[323]
bf [325]

:[324]
pushi.e 0
pop.v.b builtin.__held
pushbltn.v builtin.undefined
ret.v

:[325]
push.v builtin.__prevHeld
conv.v.b
bf [327]

:[326]
push.v builtin.__held
conv.v.b
not.b
b [328]

:[327]
push.e 0

:[328]
bf [332]

:[329]
call.i @@This@@(argc=0)
push.v builtin.__ClearState
callv.v 0
popz.v
push.v builtin.__destroyed
conv.v.b
bf [331]

:[330]
pushbltn.v builtin.undefined
ret.v

:[331]
b [333]

:[332]
push.v builtin.__held
pop.v.v builtin.__prevHeld

:[333]
push.v builtin.__captureFrame
push.v builtin._system
pushi.e -9
push.v [stacktop]self.__frame
cmp.v.v EQ
bf [335]

:[334]
pushi.e 1
pop.v.b builtin.__held
pushloc.v local._touchDevice
call.i device_mouse_x_to_gui(argc=1)
pop.v.v builtin.__prevX
pushloc.v local._touchDevice
call.i device_mouse_y_to_gui(argc=1)
pop.v.v builtin.__prevY

:[335]
push.v builtin.__held
conv.v.b
not.b
bf [337]

:[336]
pushbltn.v builtin.undefined
pop.v.v builtin.__prevX
pushbltn.v builtin.undefined
pop.v.v builtin.__prevY
b [457]

:[337]
push.v builtin.__momentary
conv.v.b
bf [339]

:[338]
push.v builtin.__captureFrame
push.v builtin._system
pushi.e -9
push.v [stacktop]self.__frame
cmp.v.v EQ
pop.v.b local._sustain
b [340]

:[339]
pushi.e 1
conv.i.v
pushloc.v local._touchDevice
call.i device_mouse_check_button(argc=2)
pop.v.v local._sustain

:[340]
pushloc.v local._sustain
conv.v.b
not.b
bf [342]

:[341]
pushi.e 0
pop.v.b builtin.__held
b [457]

:[342]
push.v builtin.__verbClick
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [344]

:[343]
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbClick
conv.v.i
pop.v.v [array]self.argument0
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbClick
conv.v.i
pop.v.v [array]self.argument1

:[344]
push.v builtin.__touchX
pop.v.v builtin.__prevX
push.v builtin.__touchY
pop.v.v builtin.__prevY
pushi.e 1
conv.i.b
bt [346]

:[345]
push.v builtin.__heldBuffer
conv.v.b
not.b
b [347]

:[346]
push.e 1

:[347]
bf [349]

:[348]
pushloc.v local._touchDevice
call.i device_mouse_x_to_gui(argc=1)
pop.v.v builtin.__touchX
pushloc.v local._touchDevice
call.i device_mouse_y_to_gui(argc=1)
pop.v.v builtin.__touchY

:[349]
push.v builtin.__recordHistory
conv.v.b
bf [351]

:[350]
push.v builtin.__touchY
push.v builtin.__touchX
call.i @@This@@(argc=0)
push.v builtin.__HistoryPush
callv.v 2
popz.v

:[351]
push.v builtin.__type
push.l 6
cmp.l.v EQ
bf [353]

:[352]
push.l 2
conv.l.v
b [354]

:[353]
push.v builtin.__reference

:[354]
pop.v.v local._reference
pushloc.v local._reference
dup.v 0
push.l 0
cmp.l.v EQ
bt [359]

:[355]
dup.v 0
push.l 1
cmp.l.v EQ
bt [360]

:[356]
dup.v 0
push.l 2
cmp.l.v EQ
bt [361]

:[357]
b [362]

:[358]
b [363]

:[359]
push.v builtin.__touchX
push.v builtin.__x
sub.v.v
pop.v.v local._dx
push.v builtin.__touchY
push.v builtin.__y
sub.v.v
pop.v.v local._dy
b [363]

:[360]
push.v builtin.__touchX
push.v builtin.__touchStartX
sub.v.v
pop.v.v local._dx
push.v builtin.__touchY
push.v builtin.__touchStartY
sub.v.v
pop.v.v local._dy
b [363]

:[361]
push.v builtin.__touchX
push.v builtin.__prevX
sub.v.v
pop.v.v local._dx
push.v builtin.__touchY
push.v builtin.__prevY
sub.v.v
pop.v.v local._dy
b [363]

:[362]
push.s ") not supported"@408
conv.s.v
push.v builtin.__reference
push.s "Reference point type ("@409
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v
b [363]

:[363]
popz.v
pushloc.v local._dx
pushloc.v local._dx
mul.v.v
pushloc.v local._dy
pushloc.v local._dy
mul.v.v
add.v.v
pop.v.v local._length
pushloc.v local._length
pushi.e 0
cmp.i.v LTE
bf [365]

:[364]
pushi.e 0
pop.v.i local._thresholdFactor
pushi.e 0
pop.v.i builtin.__normalizedX
pushi.e 0
pop.v.i builtin.__normalizedY
b [371]

:[365]
pushloc.v local._length
call.i sqrt(argc=1)
pop.v.v local._length
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._length
push.v builtin.__thresholdMin
sub.v.v
push.v builtin.__thresholdMax
push.v builtin.__thresholdMin
sub.v.v
div.v.v
call.i clamp(argc=3)
pushloc.v local._length
div.v.v
pop.v.v local._thresholdFactor
pushloc.v local._thresholdFactor
pushloc.v local._dx
mul.v.v
pop.v.v builtin.__normalizedX
pushloc.v local._thresholdFactor
pushloc.v local._dy
mul.v.v
pop.v.v builtin.__normalizedY
push.v builtin.__follow
conv.v.b
bf [371]

:[366]
pushi.e 0
pop.v.i local._moveX
pushi.e 0
pop.v.i local._moveY
push.v builtin.__circular
pushi.e 1
cmp.b.v EQ
bf [368]

:[367]
pushloc.v local._length
push.v builtin.__radius
sub.v.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pop.v.v local._moveDistance
pushloc.v local._moveDistance
pushloc.v local._dx
mul.v.v
pushloc.v local._length
div.v.v
pop.v.v local._moveX
pushloc.v local._moveDistance
pushloc.v local._dy
mul.v.v
pushloc.v local._length
div.v.v
pop.v.v local._moveY
b [370]

:[368]
push.v builtin.__circular
pushi.e 0
cmp.b.v EQ
bf [370]

:[369]
push.v builtin.__touchX
push.v builtin.__left
sub.v.v
pushi.e 0
conv.i.v
call.i min(argc=2)
pop.v.v local._dLeft
push.v builtin.__touchY
push.v builtin.__top
sub.v.v
pushi.e 0
conv.i.v
call.i min(argc=2)
pop.v.v local._dTop
push.v builtin.__touchX
push.v builtin.__right
sub.v.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pop.v.v local._dRight
push.v builtin.__touchY
push.v builtin.__bottom
sub.v.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pop.v.v local._dBottom
push.v local._moveX
pushloc.v local._dLeft
pushloc.v local._dRight
add.v.v
add.v.v
pop.v.v local._moveX
push.v local._moveY
pushloc.v local._dTop
pushloc.v local._dBottom
add.v.v
add.v.v
pop.v.v local._moveY

:[370]
push.v builtin.__x
pushloc.v local._moveX
add.v.v
pop.v.v builtin.__x
push.v builtin.__y
pushloc.v local._moveY
add.v.v
pop.v.v builtin.__y
push.v builtin.__left
pushloc.v local._moveX
add.v.v
pop.v.v builtin.__left
push.v builtin.__top
pushloc.v local._moveY
add.v.v
pop.v.v builtin.__top
push.v builtin.__right
pushloc.v local._moveX
add.v.v
pop.v.v builtin.__right
push.v builtin.__bottom
pushloc.v local._moveY
add.v.v
pop.v.v builtin.__bottom

:[371]
pushloc.v local._thresholdFactor
pushi.e 0
cmp.i.v GT
bf [457]

:[372]
push.v builtin.__type
dup.v 0
push.l 4
cmp.l.v EQ
bt [379]

:[373]
dup.v 0
push.l 3
cmp.l.v EQ
bt [386]

:[374]
dup.v 0
push.l 1
cmp.l.v EQ
bt [393]

:[375]
dup.v 0
push.l 2
cmp.l.v EQ
bt [411]

:[376]
dup.v 0
push.l 5
cmp.l.v EQ
bt [438]

:[377]
dup.v 0
push.l 6
cmp.l.v EQ
bt [447]

:[378]
b [456]

:[379]
push.v builtin.__normalizedY
push.v builtin.__normalizedX
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_direction(argc=4)
pushi.e 180
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [383]

:[380]
push.v builtin.__verbDown
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [382]

:[381]
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbDown
conv.v.i
pop.v.v [array]self.argument0
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbDown
conv.v.i
pop.v.v [array]self.argument1

:[382]
b [385]

:[383]
push.v builtin.__verbUp
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [385]

:[384]
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbUp
conv.v.i
pop.v.v [array]self.argument0
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbUp
conv.v.i
pop.v.v [array]self.argument1

:[385]
b [456]

:[386]
push.v builtin.__normalizedY
push.v builtin.__normalizedX
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_direction(argc=4)
pushi.e 270
add.i.v
pushi.e 180
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 2
mod.i.v
pushi.e 1
cmp.i.v EQ
bf [390]

:[387]
push.v builtin.__verbRight
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [389]

:[388]
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbRight
conv.v.i
pop.v.v [array]self.argument0
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbRight
conv.v.i
pop.v.v [array]self.argument1

:[389]
b [392]

:[390]
push.v builtin.__verbLeft
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [392]

:[391]
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbLeft
conv.v.i
pop.v.v [array]self.argument0
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbLeft
conv.v.i
pop.v.v [array]self.argument1

:[392]
b [456]

:[393]
push.v builtin.__normalizedY
push.v builtin.__normalizedX
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_direction(argc=4)
pushi.e 45
add.i.v
pushi.e 90
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 4
mod.i.v
pop.v.v local._direction
pushloc.v local._direction
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [398]

:[394]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [401]

:[395]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [404]

:[396]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [407]

:[397]
b [410]

:[398]
push.v builtin.__verbRight
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [400]

:[399]
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbRight
conv.v.i
pop.v.v [array]self.argument0
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbRight
conv.v.i
pop.v.v [array]self.argument1

:[400]
b [410]

:[401]
push.v builtin.__verbUp
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [403]

:[402]
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbUp
conv.v.i
pop.v.v [array]self.argument0
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbUp
conv.v.i
pop.v.v [array]self.argument1

:[403]
b [410]

:[404]
push.v builtin.__verbLeft
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [406]

:[405]
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbLeft
conv.v.i
pop.v.v [array]self.argument0
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbLeft
conv.v.i
pop.v.v [array]self.argument1

:[406]
b [410]

:[407]
push.v builtin.__verbDown
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [409]

:[408]
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbDown
conv.v.i
pop.v.v [array]self.argument0
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbDown
conv.v.i
pop.v.v [array]self.argument1

:[409]
b [410]

:[410]
popz.v
b [456]

:[411]
push.v builtin.__normalizedY
push.v builtin.__normalizedX
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_direction(argc=4)
push.d 22.5
add.d.v
pushi.e 45
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 8
mod.i.v
pop.v.v local._direction
pushloc.v local._direction
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [418]

:[412]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [418]

:[413]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [418]

:[414]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [421]

:[415]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [421]

:[416]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [421]

:[417]
b [424]

:[418]
push.v builtin.__verbRight
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [420]

:[419]
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbRight
conv.v.i
pop.v.v [array]self.argument0
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbRight
conv.v.i
pop.v.v [array]self.argument1

:[420]
b [424]

:[421]
push.v builtin.__verbLeft
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [423]

:[422]
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbLeft
conv.v.i
pop.v.v [array]self.argument0
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbLeft
conv.v.i
pop.v.v [array]self.argument1

:[423]
b [424]

:[424]
popz.v
pushloc.v local._direction
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [431]

:[425]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [431]

:[426]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [431]

:[427]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [434]

:[428]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [434]

:[429]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [434]

:[430]
b [437]

:[431]
push.v builtin.__verbUp
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [433]

:[432]
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbUp
conv.v.i
pop.v.v [array]self.argument0
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbUp
conv.v.i
pop.v.v [array]self.argument1

:[433]
b [437]

:[434]
push.v builtin.__verbDown
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [436]

:[435]
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbDown
conv.v.i
pop.v.v [array]self.argument0
pushi.e 1
conv.i.v
pushi.e -15
push.v builtin.__verbDown
conv.v.i
pop.v.v [array]self.argument1

:[436]
b [437]

:[437]
popz.v
b [456]

:[438]
pushloc.v local._dx
call.i sign(argc=1)
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._dx
call.i abs(argc=1)
push.v builtin.__thresholdMin
sub.v.v
push.v builtin.__thresholdMax
push.v builtin.__thresholdMin
sub.v.v
div.v.v
call.i clamp(argc=3)
mul.v.v
pop.v.v local._clampedX
pushloc.v local._dy
call.i sign(argc=1)
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._dy
call.i abs(argc=1)
push.v builtin.__thresholdMin
sub.v.v
push.v builtin.__thresholdMax
push.v builtin.__thresholdMin
sub.v.v
div.v.v
call.i clamp(argc=3)
mul.v.v
pop.v.v local._clampedY
push.v builtin.__verbLeft
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [440]

:[439]
pushloc.v local._dx
neg.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pushi.e -15
push.v builtin.__verbLeft
conv.v.i
pop.v.v [array]self.argument0
pushloc.v local._clampedX
neg.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pushi.e -15
push.v builtin.__verbLeft
conv.v.i
pop.v.v [array]self.argument1

:[440]
push.v builtin.__verbUp
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [442]

:[441]
pushloc.v local._dy
neg.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pushi.e -15
push.v builtin.__verbUp
conv.v.i
pop.v.v [array]self.argument0
pushloc.v local._clampedY
neg.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pushi.e -15
push.v builtin.__verbUp
conv.v.i
pop.v.v [array]self.argument1

:[442]
push.v builtin.__verbRight
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [444]

:[443]
pushloc.v local._dx
pushi.e 0
conv.i.v
call.i max(argc=2)
pushi.e -15
push.v builtin.__verbRight
conv.v.i
pop.v.v [array]self.argument0
pushloc.v local._clampedX
pushi.e 0
conv.i.v
call.i max(argc=2)
pushi.e -15
push.v builtin.__verbRight
conv.v.i
pop.v.v [array]self.argument1

:[444]
push.v builtin.__verbDown
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [446]

:[445]
pushloc.v local._dy
pushi.e 0
conv.i.v
call.i max(argc=2)
pushi.e -15
push.v builtin.__verbDown
conv.v.i
pop.v.v [array]self.argument0
pushloc.v local._clampedY
pushi.e 0
conv.i.v
call.i max(argc=2)
pushi.e -15
push.v builtin.__verbDown
conv.v.i
pop.v.v [array]self.argument1

:[446]
b [456]

:[447]
push.v builtin.__verbLeft
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [449]

:[448]
push.v builtin.__normalizedX
neg.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pushi.e -15
push.v builtin.__verbLeft
conv.v.i
pop.v.v [array]self.argument0
push.v builtin.__normalizedX
neg.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pushi.e -15
push.v builtin.__verbLeft
conv.v.i
pop.v.v [array]self.argument1

:[449]
push.v builtin.__verbUp
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [451]

:[450]
push.v builtin.__normalizedY
neg.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pushi.e -15
push.v builtin.__verbUp
conv.v.i
pop.v.v [array]self.argument0
push.v builtin.__normalizedY
neg.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pushi.e -15
push.v builtin.__verbUp
conv.v.i
pop.v.v [array]self.argument1

:[451]
push.v builtin.__verbRight
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [453]

:[452]
push.v builtin.__normalizedX
pushi.e 0
conv.i.v
call.i max(argc=2)
pushi.e -15
push.v builtin.__verbRight
conv.v.i
pop.v.v [array]self.argument0
push.v builtin.__normalizedX
pushi.e 0
conv.i.v
call.i max(argc=2)
pushi.e -15
push.v builtin.__verbRight
conv.v.i
pop.v.v [array]self.argument1

:[453]
push.v builtin.__verbDown
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [455]

:[454]
push.v builtin.__normalizedY
pushi.e 0
conv.i.v
call.i max(argc=2)
pushi.e -15
push.v builtin.__verbDown
conv.v.i
pop.v.v [array]self.argument0
push.v builtin.__normalizedY
pushi.e 0
conv.i.v
call.i max(argc=2)
pushi.e -15
push.v builtin.__verbDown
conv.v.i
pop.v.v [array]self.argument1

:[455]
b [456]

:[456]
popz.v

:[457]
exit.i

:[458]
push.i [function]gml_Script___Collect@anon@20753@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__Collect
b [460]

> gml_Script___HistoryPush@anon@36180@__InputClassVirtualButton@__InputClassVirtualButton (locals=1, argc=2)
:[459]
pushi.e -6
pushi.e 10
push.v [array]self.__historyArray
pop.v.v local._lastCoord
push.v arg.argument0
pushloc.v local._lastCoord
pushi.e -9
pop.v.v [stacktop]self.x
push.v arg.argument1
pushloc.v local._lastCoord
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e 1
conv.i.v
pushi.e 10
conv.i.v
push.v builtin.__historyArray
call.i array_delete(argc=3)
popz.v
pushloc.v local._lastCoord
pushi.e 0
conv.i.v
push.v builtin.__historyArray
call.i array_insert(argc=3)
popz.v
push.v builtin.__historyCount
push.e 1
add.i.v
pop.v.v builtin.__historyCount
exit.i

:[460]
push.i [function]gml_Script___HistoryPush@anon@36180@__InputClassVirtualButton@__InputClassVirtualButton
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__HistoryPush

:[461]
call.i @@This@@(argc=0)
push.v static._system
pushi.e -9
push.v [stacktop]self.__virtualButtonArray
call.i array_push(argc=2)
popz.v
pushi.e 0
pop.v.b builtin.__destroyed
pushbltn.v builtin.undefined
pop.v.v builtin.__circular
pushbltn.v builtin.undefined
pop.v.v builtin.__left
pushbltn.v builtin.undefined
pop.v.v builtin.__top
pushbltn.v builtin.undefined
pop.v.v builtin.__right
pushbltn.v builtin.undefined
pop.v.v builtin.__bottom
pushbltn.v builtin.undefined
pop.v.v builtin.__width
pushbltn.v builtin.undefined
pop.v.v builtin.__height
pushbltn.v builtin.undefined
pop.v.v builtin.__x
pushbltn.v builtin.undefined
pop.v.v builtin.__y
pushbltn.v builtin.undefined
pop.v.v builtin.__radius
pushbltn.v builtin.undefined
pop.v.v builtin.__startX
pushbltn.v builtin.undefined
pop.v.v builtin.__startY
pushbltn.v builtin.undefined
pop.v.v builtin.__prevX
pushbltn.v builtin.undefined
pop.v.v builtin.__prevY
push.l 0
pop.v.l builtin.__type
push.l 0
pop.v.l builtin.__reference
pushbltn.v builtin.undefined
pop.v.v builtin.__verbClick
pushbltn.v builtin.undefined
pop.v.v builtin.__verbLeft
pushbltn.v builtin.undefined
pop.v.v builtin.__verbRight
pushbltn.v builtin.undefined
pop.v.v builtin.__verbUp
pushbltn.v builtin.undefined
pop.v.v builtin.__verbDown
pushi.e 50
pop.v.i builtin.__thresholdMin
pushi.e 100
pop.v.i builtin.__thresholdMax
push.l 0
pop.v.l builtin.__releaseBehavior
pushi.e 1
pop.v.b builtin.__active
pushi.e 0
pop.v.i builtin.__priority
pushi.e 0
pop.v.b builtin.__follow
pushi.e 0
pop.v.b builtin.__recordHistory
pushi.e 0
pop.v.b builtin.__firstTouchOnly
pushi.e 0
pop.v.b builtin.__momentary
pushbltn.v builtin.undefined
pop.v.v builtin.__touchDevice
pushi.e 0
pop.v.b builtin.__prevHeld
pushi.e 0
pop.v.b builtin.__held
pushi.e 0
pop.v.b builtin.__heldBuffer
pushi.e 0
pop.v.i builtin.__normalizedX
pushi.e 0
pop.v.i builtin.__normalizedY
pushbltn.v builtin.undefined
pop.v.v builtin.__touchX
pushbltn.v builtin.undefined
pop.v.v builtin.__touchY
pushbltn.v builtin.undefined
pop.v.v builtin.__touchStartX
pushbltn.v builtin.undefined
pop.v.v builtin.__touchStartY
pushbltn.v builtin.undefined
pop.v.v builtin.__historyArray
pushi.e 0
pop.v.i builtin.__historyCount
pushbltn.v builtin.undefined
pop.v.v builtin.__captureFrame
exit.i

:[462]
push.i [function]gml_Script___InputClassVirtualButton
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputClassVirtualButton
popz.v

:[end]