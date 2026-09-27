:[0]
b [72]

> gml_Script___InputRegisterUpdate (locals=0, argc=0)
:[1]
b [71]

> gml_Script_anon@139@__InputRegisterUpdate@__InputRegisterUpdate (locals=1, argc=0)
:[2]
isstaticok.e
bt [4]

:[3]
setstatic.e
call.i gml_Script___InputSystemPlayerArray(argc=0)
pop.v.v static._playerArray
push.v builtin.__virtualButtonArray
pop.v.v static._virtualButtonArray

:[4]
push.v builtin.__time
pushbltn.v builtin.delta_time
pushi.e 1000
conv.i.d
div.d.v
add.v.v
pop.v.v builtin.__time
push.v builtin.__frame
push.e 1
add.i.v
pop.v.v builtin.__frame
pushi.e 0
pop.v.b builtin.__pointerBlockedByUserThisFrame
pushi.e 1
bt [9]

:[5]
pushi.e 0
bf [7]

:[6]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
not.b
b [8]

:[7]
push.e 0

:[8]
b [10]

:[9]
push.e 1

:[10]
bf [12]

:[11]
pushi.e 1
conv.i.b
b [13]

:[12]
push.e 0

:[13]
bf [33]

:[14]
call.i os_is_paused(argc=0)
conv.v.b
bf [16]

:[15]
pushi.e 0
pop.v.b builtin.__windowFocus
pushi.e 1
pop.v.b builtin.__pointerBlockedByWindowDefocus
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
call.i keyboard_virtual_show(argc=4)
popz.v
push.l 7
conv.l.v
call.i gml_Script___InputPlugInExecuteCallbacks(argc=1)
popz.v
b [33]

:[16]
push.v builtin.__windowFocus
conv.v.b
bf [20]

:[17]
push.v builtin.__pointerBlockedByWindowDefocus
conv.v.b
bf [19]

:[18]
pushi.e 0
pop.v.b builtin.__pointerBlockedByWindowDefocus
call.i gml_Script___InputGetMouseOutput(argc=0)
pushbltn.v builtin.undefined
cmp.v.v NEQ
pop.v.b builtin.__pointerBlockedByWindowDefocus

:[19]
b [33]

:[20]
pushbltn.v builtin.keyboard_key
pushi.e 0
cmp.i.v NEQ
bt [30]

:[21]
pushbltn.v builtin.mouse_button
pushi.e 0
cmp.i.v NEQ
bt [30]

:[22]
pushi.e 1
bf [24]

:[23]
call.i window_has_focus(argc=0)
conv.v.b
b [25]

:[24]
push.e 0

:[25]
bt [30]

:[26]
pushi.e 0
bf [28]

:[27]
push.v builtin.__pointerMoved
conv.v.b
b [29]

:[28]
push.e 0

:[29]
b [31]

:[30]
push.e 1

:[31]
bf [33]

:[32]
pushi.e 1
pop.v.b builtin.__windowFocus
pushi.e 1
pop.v.b builtin.__pointerBlockedByWindowDefocus
pushi.e 1
pop.v.b builtin.__pointerBlockedByUserThisFrame
call.i keyboard_virtual_hide(argc=0)
popz.v
push.l 8
conv.l.v
call.i gml_Script___InputPlugInExecuteCallbacks(argc=1)
popz.v

:[33]
push.v builtin.__pointerDeviceX
pop.v.v builtin.__prevPointerDeviceX
push.v builtin.__pointerDeviceY
pop.v.v builtin.__prevPointerDeviceY
push.v builtin.__pointerBlockedByUser
conv.v.b
bt [48]

:[34]
push.v builtin.__pointerBlockedByWindowDefocus
conv.v.b
bf [36]

:[35]
pushi.e 1
conv.i.b
b [37]

:[36]
push.e 0

:[37]
bt [48]

:[38]
pushi.e 1
bt [43]

:[39]
pushi.e 0
bf [41]

:[40]
call.i gml_Script___InputOnOperaGXMobile(argc=0)
conv.v.b
not.b
b [42]

:[41]
push.e 0

:[42]
b [44]

:[43]
push.e 1

:[44]
not.b
not.b
bf [46]

:[45]
pushi.e -1
conv.i.v
call.i gml_Script_InputDeviceGetRebinding(argc=1)
conv.v.b
b [47]

:[46]
push.e 0

:[47]
b [49]

:[48]
push.e 1

:[49]
bf [51]

:[50]
pushi.e 1
pop.v.b builtin.__pointerBlocked
b [52]

:[51]
pushi.e 0
pop.v.b builtin.__pointerBlocked
pushi.e 0
conv.i.v
call.i device_mouse_x(argc=1)
pop.v.v builtin.__pointerRoomX
pushi.e 0
conv.i.v
call.i device_mouse_y(argc=1)
pop.v.v builtin.__pointerRoomY
pushi.e 0
conv.i.v
call.i device_mouse_x_to_gui(argc=1)
pop.v.v builtin.__pointerGuiX
pushi.e 0
conv.i.v
call.i device_mouse_y_to_gui(argc=1)
pop.v.v builtin.__pointerGuiY
call.i display_mouse_get_x(argc=0)
call.i window_get_x(argc=0)
sub.v.v
pop.v.v builtin.__pointerDeviceX
call.i display_mouse_get_y(argc=0)
call.i window_get_y(argc=0)
sub.v.v
pop.v.v builtin.__pointerDeviceY

:[52]
push.v builtin.__pointerDeviceY
push.v builtin.__pointerDeviceX
push.v builtin.__prevPointerDeviceY
push.v builtin.__prevPointerDeviceX
call.i point_distance(argc=4)
pushi.e 2
cmp.i.v GT
pop.v.b builtin.__pointerMoved
push.v builtin.__tapPresses
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i device_mouse_check_button_pressed(argc=2)
add.v.v
pop.v.v builtin.__tapPresses
push.v builtin.__tapReleases
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i device_mouse_check_button_released(argc=2)
add.v.v
pop.v.v builtin.__tapReleases
push.v builtin.__tapReleases
push.v builtin.__tapPresses
cmp.v.v GTE
bf [54]

:[53]
push.v builtin.__tapReleases
push.v builtin.__tapPresses
cmp.v.v GT
pop.v.b builtin.__tapClick
pushi.e 0
pop.v.i builtin.__tapPresses
pushi.e 0
pop.v.i builtin.__tapReleases
b [55]

:[54]
pushi.e 0
pop.v.b builtin.__tapClick

:[55]
push.v builtin.__virtualOrderDirty
conv.v.b
bf [65]

:[56]
pushi.e 0
pop.v.b builtin.__virtualOrderDirty
pushi.e 0
pop.v.i local._i
push.v static._virtualButtonArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [61]

:[57]
pushi.e -16
pushloc.v local._i
conv.v.i
push.v [array]self._virtualButtonArray
pushi.e -9
push.v [stacktop]self.__destroyed
conv.v.b
bf [59]

:[58]
pushi.e 1
conv.i.v
pushloc.v local._i
push.v static._virtualButtonArray
call.i array_delete(argc=3)
popz.v
b [60]

:[59]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i

:[60]
pushi.e 1
sub.i.i
dup.i 0
bt [57]

:[61]
popz.i
b [64]

> gml_Script_anon@5703@anon@139@__InputRegisterUpdate@__InputRegisterUpdate (locals=0, argc=2)
:[62]
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.__priority
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.__priority
sub.v.v
call.i sign(argc=1)
ret.v

:[63]
exit.i

:[64]
push.i [function]gml_Script_anon@5703@anon@139@__InputRegisterUpdate@__InputRegisterUpdate
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v static._virtualButtonArray
call.i array_sort(argc=2)
popz.v

:[65]
pushbltn.v builtin.undefined
pop.v.v builtin.__lowestConnectedPlayerIndex
pushi.e 0
pop.v.i local._i
pushi.e 4
dup.i 0
push.i 0
cmp.i.i LTE
bt [70]

:[66]
pushi.e -16
pushloc.v local._i
conv.v.i
push.v [array]self._playerArray
dup.v 0 8
dup.v 0
push.v stacktop.__Update
callv.v 0
popz.v
push.v builtin.__lowestConnectedPlayerIndex
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [69]

:[67]
pushloc.v local._i
call.i gml_Script_InputPlayerIsConnected(argc=1)
conv.v.b
bf [69]

:[68]
pushloc.v local._i
pop.v.v builtin.__lowestConnectedPlayerIndex

:[69]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [66]

:[70]
popz.i
exit.i

:[71]
push.i [function]gml_Script_anon@139@__InputRegisterUpdate@__InputRegisterUpdate
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 0
conv.i.v
push.l 1
conv.l.v
call.i gml_Script___InputPlugInRegisterCallbackInternal(argc=3)
popz.v
exit.i

:[72]
push.i [function]gml_Script___InputRegisterUpdate
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputRegisterUpdate
popz.v

:[end]