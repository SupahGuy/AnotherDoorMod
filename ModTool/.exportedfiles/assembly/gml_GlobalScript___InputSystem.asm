:[0]
call.i gml_Script___InputSystem(argc=0)
popz.v
b [29]

> gml_Script___InputSystem (locals=1, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
pushbltn.v builtin.undefined
pop.v.v static._system

:[3]
push.v static._system
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [5]

:[4]
push.v static._system
ret.v

:[5]
push.s "Welcome to Input by Juju Adams, Alynne Keith, and friends! This is version 10.2.2, 2025-09-20 (GM version 2026.0.0.23)"@1838
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 0
conv.b.v
call.i device_mouse_dbclick_enable(argc=1)
popz.v
call.i @@NewGMLObject@@(argc=0)
pop.v.v static._system
push.v static._system
pushi.e -9
pushenv [27]

:[6]
call.i gml_Script___InputInitializeSteam(argc=0)
popz.v
call.i ds_map_create(argc=0)
pop.v.v builtin.__deviceMap
pushi.e 0
pop.v.i builtin.__frame
pushi.e 0
pop.v.i builtin.__time
pushbltn.v builtin.undefined
pop.v.v builtin.__lowestConnectedPlayerIndex
pushi.e 1
pop.v.i builtin.__hotswap
pushbltn.v builtin.undefined
pop.v.v builtin.__hotswapCallback
call.i ds_map_create(argc=0)
pop.v.v builtin.__rebindingMap
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.__rebindingArray
pushbltn.v builtin.undefined
call.i gamepad_get_device_count(argc=0)
call.i array_create(argc=2)
pop.v.v builtin.__gamepadArray
pushbltn.v builtin.infinity
neg.v
pop.v.v builtin.__androidEnumerationTime
pushbltn.v builtin.infinity
neg.v
pop.v.v builtin.__restartTime
pushi.e 0
pop.v.b builtin.__verbDefineAllowed
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.__verbDefinitionArray
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.__verbDefIndexArray
call.i @@NewGMLObject@@(argc=0)
pop.v.v builtin.__verbExportNameDict
pushi.e 0
pop.v.i builtin.__verbCount
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.__clusterDefinitionArray
pushi.e 0
pop.v.i builtin.__clusterCount
call.i gml_Script___InputCreateKbmBindingNameMap(argc=0)
pop.v.v builtin.__kbmBindingNameMap
call.i gml_Script___InputCreateGamepadBindingNameLookup(argc=0)
pop.v.v builtin.__gamepadButtonNameLookup
pushbltn.v builtin.undefined
pop.v.v builtin.__playerArray
pushi.e 0
pop.v.b builtin.__pointerBlockedByUser
pushi.e 0
pop.v.b builtin.__pointerBlockedByUserThisFrame
pushi.e 0
pop.v.b builtin.__pointerBlocked
pushi.e 0
pop.v.b builtin.__pointerMoved
pushi.e 0
pop.v.i builtin.__prevPointerDeviceX
pushi.e 0
pop.v.i builtin.__prevPointerDeviceY
pushi.e 0
pop.v.i builtin.__pointerDeviceX
pushi.e 0
pop.v.i builtin.__pointerDeviceY
pushi.e 0
pop.v.i builtin.__pointerRoomX
pushi.e 0
pop.v.i builtin.__pointerRoomY
pushi.e 0
pop.v.i builtin.__pointerGuiX
pushi.e 0
pop.v.i builtin.__pointerGuiY
pushi.e 0
pop.v.b builtin.__tapClick
pushi.e 0
pop.v.i builtin.__tapPresses
pushi.e 0
pop.v.i builtin.__tapReleases
pushi.e 1
pop.v.b builtin.__windowFocus
pushi.e 0
pop.v.b builtin.__pointerBlockedByWindowDefocus
pushi.e 0
pop.v.b builtin.__virtualOrderDirty
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.__virtualButtonArray
pushi.e 0
pop.v.i builtin.__plugInsInitializeState
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.__plugInArray
call.i @@NewGMLObject@@(argc=0)
pop.v.v builtin.__plugInDict
pushbltn.v builtin.undefined
pop.v.v builtin.__plugInCurrentCallback
call.i gml_Script___InputSystemCallbackArray(argc=0)
pop.v.v builtin.__plugInCallbackArray
call.i gml_Script___InputRegisterCollect(argc=0)
popz.v
call.i gml_Script___InputRegisterCollectPlayer(argc=0)
popz.v
call.i gml_Script___InputRegisterUpdate(argc=0)
popz.v
call.i gml_Script___InputRegisterUpdatePlayer(argc=0)
popz.v
call.i gml_Script___InputRegisterGamepadDisconnected(argc=0)
popz.v
call.i gml_Script___InputRegisterGamepadConnected(argc=0)
popz.v
call.i gml_Script___InputRegisterPlayerDeviceChanged(argc=0)
popz.v
call.i gml_Script___InputRegisterFindBindingCollisions(argc=0)
popz.v
b [9]

> gml_Script_anon@7362@__InputSystem@__InputSystem (locals=0, argc=0)
:[7]
pushi.e 0
conv.i.v
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script_anon@7362@__InputSystem@__InputSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v local._returnNull
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
pushloc.v local._returnNull
pushloc.v local._returnNull
pushloc.v local._returnNull
pushloc.v local._returnNull
pushloc.v local._returnNull
pushloc.v local._returnNull
pushloc.v local._returnNull
pushloc.v local._returnNull
pushloc.v local._returnNull
pushloc.v local._returnNull
push.i [function]gamepad_axis_value
conv.i.v
push.i [function]gamepad_axis_value
conv.i.v
push.i [function]gamepad_axis_value
conv.i.v
push.i [function]gamepad_axis_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
push.i [function]gamepad_button_value
conv.i.v
call.i @@NewGMLArray@@(argc=42)
pop.v.v builtin.__genericReadArray
pushi.e 1
pop.v.b builtin.__verbDefineAllowed
call.i gml_Script___InputConfigVerbs(argc=0)
popz.v
pushi.e 0
pop.v.b builtin.__verbDefineAllowed
call.i keyboard_virtual_hide(argc=0)
popz.v
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=0)
b [26]

> gml_Script_anon@10231@__InputSystem@__InputSystem (locals=0, argc=0)
:[10]
isstaticok.e
bt [12]

:[11]
setstatic.e
pushi.e 0
pop.v.b static._created

:[12]
pushref.i 0
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [21]

:[13]
pushref.i 0
call.i instance_activate_object(argc=1)
popz.v
pushref.i 0
call.i instance_exists(argc=1)
conv.v.b
bf [15]

:[14]
push.s "Warning! __InputUpdateController has been deactivated. Please ensure that __InputUpdateController is never deactivated. You may need to use instance_activate_object(__InputUpdateController)"@1853
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
b [21]

:[15]
push.v static._created
conv.v.b
not.b
bf [17]

:[16]
pushi.e 1
pop.v.b static._created
b [20]

:[17]
push.v builtin.__restartTime
push.v builtin.__time
cmp.v.v EQ
bf [19]

:[18]
push.s "Warning! Please consider an alternative method to reset game state: avoid using \"game_restart()\""@1854
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
b [20]

:[19]
push.s "Warning! __InputUpdateController has been destroyed. Please ensure that __InputUpdateController is never destroyed"@1855
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v

:[20]
pushref.i 0
pushi.e 16001
conv.i.v
pushi.e -16001
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=4)
popz.v

:[21]
pushref.i 0
pushi.e -9
push.v [stacktop]self.persistent
conv.v.b
not.b
bf [23]

:[22]
push.s "Warning! __InputUpdateController has been set as non-persistent. Please ensure that __InputUpdateController is always persistent"@1858
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pushref.i 0
pushi.e -9
pop.v.b [stacktop]self.persistent

:[23]
pushref.i 0
pushi.e -9
push.v [stacktop]self.depth
pushi.e 16001
cmp.i.v NEQ
bf [25]

:[24]
push.s ")\nPlease ensure that __InputUpdateController is never manually created and depth is not manually set"@1860
conv.s.v
pushref.i 0
pushi.e -9
push.v [stacktop]self.depth
push.s ", got "@1861
conv.s.v
pushi.e 16001
conv.i.v
push.s "Warning! __InputUpdateController depth has been changed (expected "@1862
conv.s.v
call.i gml_Script___InputTrace(argc=5)
popz.v
pushi.e 16001
pushref.i 0
pushi.e -9
pop.v.i [stacktop]self.depth

:[25]
exit.i

:[26]
push.i [function]gml_Script_anon@10231@__InputSystem@__InputSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i time_source_create(argc=6)
call.i time_source_start(argc=1)
popz.v

:[27]
popenv [6]
push.v static._system
ret.v

:[28]
exit.i

:[29]
push.i [function]gml_Script___InputSystem
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputSystem
popz.v

:[end]