:[0]
b [47]

> gml_Script___InputMotionClass (locals=1, argc=1)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [37]

:[2]
setstatic.e
b [4]

> gml_Script___Clear@anon@1004@__InputMotionClass@__InputMotionClass (locals=0, argc=0)
:[3]
pushi.e 0
pop.v.i builtin.accelerationX
pushi.e -1
pop.v.i builtin.accelerationY
pushi.e 0
pop.v.i builtin.accelerationZ
pushi.e 0
pop.v.i builtin.angularVelocityX
pushi.e 0
pop.v.i builtin.angularVelocityY
pushi.e 0
pop.v.i builtin.angularVelocityZ
pushi.e 0
pop.v.i builtin.quatDeviceX
pushi.e 0
pop.v.i builtin.quatDeviceY
pushi.e 0
pop.v.i builtin.quatDeviceZ
pushi.e 1
pop.v.i builtin.quatDeviceW
pushi.e 0
pop.v.i builtin.quatRoll
pushi.e 0
pop.v.i builtin.quatPitch
pushi.e 0
pop.v.i builtin.quatYaw
exit.i

:[4]
push.i [function]gml_Script___Clear@anon@1004@__InputMotionClass@__InputMotionClass
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__Clear
b [6]

> gml_Script___Calibrate@anon@1452@__InputMotionClass@__InputMotionClass (locals=0, argc=0)
:[5]
push.v builtin.quatDeviceX
pop.v.v builtin.quatCalibratedX
push.v builtin.quatDeviceY
pop.v.v builtin.quatCalibratedY
push.v builtin.quatDeviceZ
pop.v.v builtin.quatCalibratedZ
push.v builtin.quatDeviceW
pop.v.v builtin.quatCalibratedW
pushi.e 1
pop.v.b builtin.__isCalibrated
exit.i

:[6]
push.i [function]gml_Script___Calibrate@anon@1452@__InputMotionClass@__InputMotionClass
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__Calibrate
b [36]

> gml_Script___Update@anon@1704@__InputMotionClass@__InputMotionClass (locals=24, argc=0)
:[7]
call.i gml_Script_InputGameHasFocus(argc=0)
conv.v.b
not.b
bf [9]

:[8]
exit.i

:[9]
pushi.e 0
dup.i 0
pushi.e 21
cmp.i.i EQ
bt [16]

:[10]
dup.i 0
pushi.e 14
cmp.i.i EQ
bt [25]

:[11]
dup.i 0
pushi.e 22
cmp.i.i EQ
bt [25]

:[12]
dup.i 0
pushi.e 0
cmp.i.i EQ
bt [26]

:[13]
dup.i 0
pushi.e 6
cmp.i.i EQ
bt [26]

:[14]
b [34]

:[15]
b [35]

:[16]
pushi.e 0
pop.v.i local._axisX
pushi.e 1
pop.v.i local._axisZ
pushi.e 1
pop.v.i local._signX
pushi.e 1
pop.v.i local._signZ
pushi.e 0
pop.v.i local._sensor
push.v builtin.__device
call.i gml_Script_InputDeviceGetGamepadType(argc=1)
pop.v.v local._type
pushloc.v local._type
pushi.e 5
cmp.i.v EQ
bf [20]

:[17]
push.v builtin.__device
call.i gml_Script_InputDeviceGetDescription(argc=1)
push.s "SwitchJoyConPair"@1605
cmp.s.v EQ
bf [19]

:[18]
pushi.e 1
pop.v.i local._sensor

:[19]
b [24]

:[20]
pushloc.v local._type
pushi.e 6
cmp.i.v EQ
bf [22]

:[21]
pushi.e 1
pop.v.i local._axisX
pushi.e 0
pop.v.i local._axisZ
pushi.e -1
pop.v.i local._signX
b [24]

:[22]
pushloc.v local._type
pushi.e 7
cmp.i.v EQ
bf [24]

:[23]
pushi.e 1
pop.v.i local._axisX
pushi.e 0
pop.v.i local._axisZ
pushi.e -1
pop.v.i local._signZ

:[24]
pushloc.v local._signX
pushloc.v local._sensor
pushloc.v local._axisX
push.v builtin.__device
call.i switch_controller_acceleration(argc=3)
mul.v.v
pop.v.v builtin.accelerationX
pushloc.v local._sensor
pushi.e 2
conv.i.v
push.v builtin.__device
call.i switch_controller_acceleration(argc=3)
neg.v
pop.v.v builtin.accelerationY
pushloc.v local._signZ
pushloc.v local._sensor
pushloc.v local._axisZ
push.v builtin.__device
call.i switch_controller_acceleration(argc=3)
mul.v.v
pop.v.v builtin.accelerationZ
pushloc.v local._signX
pushloc.v local._sensor
pushloc.v local._axisX
push.v builtin.__device
call.i switch_controller_angular_velocity(argc=3)
pushi.e 5
conv.i.d
div.d.v
call.i degtorad(argc=1)
mul.v.v
push.d 570.6
mul.d.v
pop.v.v builtin.angularVelocityX
pushloc.v local._sensor
pushi.e 2
conv.i.v
push.v builtin.__device
call.i switch_controller_angular_velocity(argc=3)
pushi.e 5
conv.i.d
div.d.v
call.i degtorad(argc=1)
neg.v
push.d 570.6
mul.d.v
pop.v.v builtin.angularVelocityY
pushloc.v local._signZ
pushloc.v local._sensor
pushloc.v local._axisZ
push.v builtin.__device
call.i switch_controller_angular_velocity(argc=3)
pushi.e 5
conv.i.d
div.d.v
call.i degtorad(argc=1)
mul.v.v
push.d 570.6
mul.d.v
pop.v.v builtin.angularVelocityZ
b [35]

:[25]
push.i 32789
conv.i.v
push.v builtin.__device
call.i gamepad_axis_value(argc=2)
pop.v.v builtin.accelerationX
push.i 32790
conv.i.v
push.v builtin.__device
call.i gamepad_axis_value(argc=2)
neg.v
pop.v.v builtin.accelerationY
push.i 32791
conv.i.v
push.v builtin.__device
call.i gamepad_axis_value(argc=2)
neg.v
pop.v.v builtin.accelerationZ
push.i 32792
conv.i.v
push.v builtin.__device
call.i gamepad_axis_value(argc=2)
push.d 3.141592653589793
div.d.v
pop.v.v builtin.angularVelocityX
push.i 32793
conv.i.v
push.v builtin.__device
call.i gamepad_axis_value(argc=2)
neg.v
push.d 3.141592653589793
div.d.v
pop.v.v builtin.angularVelocityY
push.i 32794
conv.i.v
push.v builtin.__device
call.i gamepad_axis_value(argc=2)
neg.v
push.d 3.141592653589793
div.d.v
pop.v.v builtin.angularVelocityZ
b [35]

:[26]
push.v builtin.__device
call.i gml_Script_InputDeviceGetSteamHandle(argc=1)
pop.v.v local._steamHandle
pushloc.v local._steamHandle
call.i is_numeric(argc=1)
conv.v.b
bf [33]

:[27]
pushloc.v local._steamHandle
call.i steam_input_get_motion_data(argc=1)
pop.v.v local._steamData
pushloc.v local._steamData
call.i is_struct(argc=1)
conv.v.b
not.b
bf [29]

:[28]
pushi.e 0
pop.v.b builtin.__hasData
call.i @@This@@(argc=0)
push.v builtin.__Clear
callv.v 0
popz.v
popz.i
exit.i

:[29]
pushi.e 1
pop.v.b builtin.__hasData
pushloc.v local._steamData
pushi.e -9
push.v [stacktop]self.pos_accel_x
pushi.e 16384
conv.i.d
div.d.v
pop.v.v builtin.accelerationX
pushloc.v local._steamData
pushi.e -9
push.v [stacktop]self.pos_accel_y
neg.v
pushi.e 16384
conv.i.d
div.d.v
pop.v.v builtin.accelerationY
pushloc.v local._steamData
pushi.e -9
push.v [stacktop]self.pos_accel_z
neg.v
pushi.e 16384
conv.i.d
div.d.v
pop.v.v builtin.accelerationZ
pushloc.v local._steamData
pushi.e -9
push.v [stacktop]self.rot_quat_x
pop.v.v local._toX
pushloc.v local._steamData
pushi.e -9
push.v [stacktop]self.rot_quat_y
pop.v.v local._toY
pushloc.v local._steamData
pushi.e -9
push.v [stacktop]self.rot_quat_z
pop.v.v local._toZ
pushloc.v local._steamData
pushi.e -9
push.v [stacktop]self.rot_quat_w
pop.v.v local._toW
pushloc.v local._toX
pop.v.v builtin.quatDeviceX
pushloc.v local._toY
pop.v.v builtin.quatDeviceY
pushloc.v local._toZ
pop.v.v builtin.quatDeviceZ
pushloc.v local._toW
pop.v.v builtin.quatDeviceW
push.v builtin.quatCalibratedX
neg.v
pop.v.v local._invFromX
push.v builtin.quatCalibratedY
neg.v
pop.v.v local._invFromY
push.v builtin.quatCalibratedZ
neg.v
pop.v.v local._invFromZ
push.v builtin.quatCalibratedW
pop.v.v local._invFromW
pushloc.v local._invFromW
pushloc.v local._toX
mul.v.v
pushloc.v local._invFromX
pushloc.v local._toW
mul.v.v
add.v.v
pushloc.v local._invFromY
pushloc.v local._toZ
mul.v.v
add.v.v
pushloc.v local._invFromZ
pushloc.v local._toY
mul.v.v
sub.v.v
pop.v.v local._deltaX
pushloc.v local._invFromW
pushloc.v local._toY
mul.v.v
pushloc.v local._invFromX
pushloc.v local._toZ
mul.v.v
sub.v.v
pushloc.v local._invFromY
pushloc.v local._toW
mul.v.v
add.v.v
pushloc.v local._invFromZ
pushloc.v local._toX
mul.v.v
add.v.v
pop.v.v local._deltaY
pushloc.v local._invFromW
pushloc.v local._toZ
mul.v.v
pushloc.v local._invFromX
pushloc.v local._toY
mul.v.v
add.v.v
pushloc.v local._invFromY
pushloc.v local._toX
mul.v.v
sub.v.v
pushloc.v local._invFromZ
pushloc.v local._toW
mul.v.v
add.v.v
pop.v.v local._deltaZ
pushloc.v local._invFromW
pushloc.v local._toW
mul.v.v
pushloc.v local._invFromX
pushloc.v local._toX
mul.v.v
sub.v.v
pushloc.v local._invFromY
pushloc.v local._toY
mul.v.v
sub.v.v
pushloc.v local._invFromZ
pushloc.v local._toZ
mul.v.v
sub.v.v
pop.v.v local._deltaW
pushloc.v local._deltaX
pushloc.v local._deltaX
mul.v.v
pushloc.v local._deltaY
pushloc.v local._deltaY
mul.v.v
add.v.v
pushloc.v local._deltaZ
pushloc.v local._deltaZ
mul.v.v
add.v.v
pushloc.v local._deltaW
pushloc.v local._deltaW
mul.v.v
add.v.v
pop.v.v local._radius
pushloc.v local._radius
pushi.e 0
cmp.i.v GT
bf [31]

:[30]
pushi.e 1
conv.i.d
pushloc.v local._radius
call.i sqrt(argc=1)
div.v.d
pop.v.v local._radius
pushloc.v local._radius
pushloc.v local._deltaX
mul.v.v
pop.v.v local._deltaX
pushloc.v local._radius
pushloc.v local._deltaY
mul.v.v
pop.v.v local._deltaY
pushloc.v local._radius
pushloc.v local._deltaZ
mul.v.v
pop.v.v local._deltaZ
pushloc.v local._radius
pushloc.v local._deltaW
mul.v.v
pop.v.v local._deltaW
b [32]

:[31]
pushi.e 0
pop.v.i local._deltaX
pushi.e 0
pop.v.i local._deltaY
pushi.e 0
pop.v.i local._deltaZ
pushi.e 1
pop.v.i local._deltaW

:[32]
pushloc.v local._deltaW
pushloc.v local._deltaZ
pushloc.v local._deltaY
pushloc.v local._deltaX
call.i gml_Script___InputMotionQuatToPitch(argc=4)
pop.v.v local._angleRoll
pushloc.v local._deltaW
pushloc.v local._deltaZ
pushloc.v local._deltaY
pushloc.v local._deltaX
call.i gml_Script___InputMotionQuatToRoll(argc=4)
neg.v
pop.v.v local._anglePitch
pushloc.v local._deltaW
pushloc.v local._deltaZ
pushloc.v local._deltaY
pushloc.v local._deltaX
call.i gml_Script___InputMotionQuatToYaw(argc=4)
neg.v
pop.v.v local._angleYaw
pushloc.v local._angleYaw
push.v builtin.quatYaw
sub.v.v
pop.v.v builtin.angularVelocityX
pushloc.v local._anglePitch
push.v builtin.quatPitch
sub.v.v
pop.v.v builtin.angularVelocityY
pushloc.v local._angleRoll
push.v builtin.quatRoll
sub.v.v
pop.v.v builtin.angularVelocityZ
pushloc.v local._angleRoll
pop.v.v builtin.quatRoll
pushloc.v local._anglePitch
pop.v.v builtin.quatPitch
pushloc.v local._angleYaw
pop.v.v builtin.quatYaw

:[33]
b [35]

:[34]
call.i @@This@@(argc=0)
push.v builtin.__Clear
callv.v 0
popz.v
b [35]

:[35]
popz.i
exit.i

:[36]
push.i [function]gml_Script___Update@anon@1704@__InputMotionClass@__InputMotionClass
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__Update

:[37]
push.v arg.argument0
pop.v.v builtin.__device
pushi.e 0
pop.v.i builtin.quatCalibratedX
pushi.e 0
pop.v.i builtin.quatCalibratedY
pushi.e 0
pop.v.i builtin.quatCalibratedZ
pushi.e 1
pop.v.i builtin.quatCalibratedW
pushi.e 0
pop.v.b builtin.__isCalibrated
pushi.e 1
bf [39]

:[38]
push.l 0
conv.l.v
call.i gml_Script_InputGetSteamInfo(argc=1)
conv.v.b
b [40]

:[39]
push.e 0

:[40]
bf [45]

:[41]
push.v builtin.__device
call.i gml_Script_InputDeviceGetSteamHandle(argc=1)
pop.v.v local._steamHandle
pushloc.v local._steamHandle
call.i is_numeric(argc=1)
conv.v.b
bf [43]

:[42]
pushloc.v local._steamHandle
call.i steam_input_get_motion_data(argc=1)
call.i is_struct(argc=1)
conv.v.b
b [44]

:[43]
push.e 0

:[44]
pop.v.b builtin.__hasData
b [46]

:[45]
pushi.e 0
pop.v.b builtin.__hasData

:[46]
call.i @@This@@(argc=0)
push.v static.__Clear
callv.v 0
popz.v
exit.i

:[47]
push.i [function]gml_Script___InputMotionClass
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputMotionClass
popz.v

:[end]