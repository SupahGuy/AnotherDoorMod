:[0]
b [120]

> gml_Script___InputClassPlayer (locals=0, argc=1)
:[1]
call.i @@SetStatic@@(argc=0)
isstaticok.e
bt [84]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system
push.v static._system
pushi.e -9
push.v [stacktop]self.__verbCount
pop.v.v static._verbCount
push.v static._system
pushi.e -9
push.v [stacktop]self.__clusterCount
pop.v.v static._clusterCount
push.v static._system
pushi.e -9
push.v [stacktop]self.__clusterDefinitionArray
pop.v.v static._clusterDefinitionArray
b [24]

> gml_Script___UpdateStatus@anon@3513@__InputClassPlayer@__InputClassPlayer (locals=1, argc=0)
:[3]
push.v builtin.__ghost
conv.v.b
bt [5]

:[4]
push.v builtin.__device
call.i gml_Script_InputDeviceIsConnected(argc=1)
conv.v.b
b [6]

:[5]
push.e 1

:[6]
pop.v.b local._connected
pushloc.v local._connected
conv.v.b
bf [16]

:[7]
push.v builtin.__status
push.l 1
cmp.l.v EQ
bt [9]

:[8]
push.v builtin.__status
push.l 0
cmp.l.v EQ
b [10]

:[9]
push.e 1

:[10]
bf [14]

:[11]
push.l 2
pop.v.l builtin.__status
push.v builtin.__device
call.i gml_Script_InputDeviceIsGamepad(argc=1)
conv.v.b
bf [13]

:[12]
push.v builtin.__device
call.i gml_Script_InputDeviceGetGamepadType(argc=1)
pop.v.v builtin.__lastConnectedGamepadType

:[13]
b [15]

:[14]
push.l 3
pop.v.l builtin.__status

:[15]
b [22]

:[16]
push.v builtin.__status
push.l 2
cmp.l.v EQ
bt [18]

:[17]
push.v builtin.__status
push.l 3
cmp.l.v EQ
b [19]

:[18]
push.e 1

:[19]
bf [21]

:[20]
push.l 1
pop.v.l builtin.__status
b [22]

:[21]
push.l 0
pop.v.l builtin.__status

:[22]
pushloc.v local._connected
ret.v

:[23]
exit.i

:[24]
push.i [function]gml_Script___UpdateStatus@anon@3513@__InputClassPlayer@__InputClassPlayer
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__UpdateStatus
b [53]

> gml_Script___UpdateClusterThresholds@anon@4551@__InputClassPlayer@__InputClassPlayer (locals=5, argc=0)
:[25]
isstaticok.e
bt [45]

:[26]
setstatic.e
b [44]

> gml_Script__funcUpdateThresholdType@anon@4612@__UpdateClusterThresholds@anon@4551@__InputClassPlayer@__InputClassPlayer (locals=3, argc=1)
:[27]
pushi.e 0
pop.v.i local._thresholdType
pushi.e 0
pop.v.i local._alternate
push.v arg.argument0
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [42]

:[28]
pushi.e -15
pushloc.v local._alternate
conv.v.i
push.v [array]self.argument0
pop.v.v local._binding
pushloc.v local._binding
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [41]

:[29]
pushloc.v local._binding
call.i abs(argc=1)
pop.v.v local._binding
push.v local._thresholdType
pushloc.v local._binding
push.i 32785
cmp.i.v EQ
bt [31]

:[30]
pushloc.v local._binding
push.i 32786
cmp.i.v EQ
b [32]

:[31]
push.e 1

:[32]
bf [34]

:[33]
pushi.e 1
conv.i.v
b [40]

:[34]
pushloc.v local._binding
push.i 32787
cmp.i.v EQ
bt [36]

:[35]
pushloc.v local._binding
push.i 32788
cmp.i.v EQ
b [37]

:[36]
push.e 1

:[37]
bf [39]

:[38]
pushi.e 2
conv.i.v
b [40]

:[39]
pushi.e 0
conv.i.v

:[40]
conv.v.l
or.l.v
pop.v.v local._thresholdType

:[41]
push.v local._alternate
push.e 1
add.i.v
pop.v.v local._alternate
pushi.e 1
sub.i.i
dup.i 0
bt [28]

:[42]
popz.i
pushloc.v local._thresholdType
ret.v

:[43]
exit.i

:[44]
push.i [function]gml_Script__funcUpdateThresholdType@anon@4612@__UpdateClusterThresholds@anon@4551@__InputClassPlayer@__InputClassPlayer
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static._funcUpdateThresholdType

:[45]
push.v builtin.__gamepadBindingArray
pop.v.v local._gamepadBindingArray
push.v builtin.__clusterThresholdTypeArray
pop.v.v local._clusterThresholdTypeArray
pushi.e 0
pop.v.i local._cluster
push.v builtin._clusterCount
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [52]

:[46]
pushi.e -6
pushloc.v local._cluster
conv.v.i
push.v [array]self._clusterDefinitionArray
pop.v.v local._clusterDefinition
pushi.e 0
pop.v.i local._thresholdType
push.v local._thresholdType
pushi.e -7
pushloc.v local._clusterDefinition
pushi.e -9
push.v [stacktop]self.__verbUp
conv.v.i
push.v [array]self._gamepadBindingArray
call.i @@This@@(argc=0)
push.v static._funcUpdateThresholdType
callv.v 1
conv.v.l
or.l.v
pop.v.v local._thresholdType
push.v local._thresholdType
pushi.e -7
pushloc.v local._clusterDefinition
pushi.e -9
push.v [stacktop]self.__verbRight
conv.v.i
push.v [array]self._gamepadBindingArray
call.i @@This@@(argc=0)
push.v static._funcUpdateThresholdType
callv.v 1
conv.v.l
or.l.v
pop.v.v local._thresholdType
push.v local._thresholdType
pushi.e -7
pushloc.v local._clusterDefinition
pushi.e -9
push.v [stacktop]self.__verbDown
conv.v.i
push.v [array]self._gamepadBindingArray
call.i @@This@@(argc=0)
push.v static._funcUpdateThresholdType
callv.v 1
conv.v.l
or.l.v
pop.v.v local._thresholdType
push.v local._thresholdType
pushi.e -7
pushloc.v local._clusterDefinition
pushi.e -9
push.v [stacktop]self.__verbLeft
conv.v.i
push.v [array]self._gamepadBindingArray
call.i @@This@@(argc=0)
push.v static._funcUpdateThresholdType
callv.v 1
conv.v.l
or.l.v
pop.v.v local._thresholdType
pushloc.v local._thresholdType
pushi.e 1
cmp.i.v LTE
bf [48]

:[47]
push.l 0
conv.l.v
pushi.e -7
pushloc.v local._cluster
conv.v.i
pop.v.v [array]self._clusterThresholdTypeArray
b [51]

:[48]
pushloc.v local._thresholdType
pushi.e 2
cmp.i.v EQ
bf [50]

:[49]
push.l 1
conv.l.v
pushi.e -7
pushloc.v local._cluster
conv.v.i
pop.v.v [array]self._clusterThresholdTypeArray
b [51]

:[50]
push.l 2
conv.l.v
pushi.e -7
pushloc.v local._cluster
conv.v.i
pop.v.v [array]self._clusterThresholdTypeArray

:[51]
push.v local._cluster
push.e 1
add.i.v
pop.v.v local._cluster
pushi.e 1
sub.i.i
dup.i 0
bt [46]

:[52]
popz.i
exit.i

:[53]
push.i [function]gml_Script___UpdateClusterThresholds@anon@4551@__InputClassPlayer@__InputClassPlayer
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__UpdateClusterThresholds
b [83]

> gml_Script___Update@anon@6668@__InputClassPlayer@__InputClassPlayer (locals=23, argc=0)
:[54]
pushi.e 0
pop.v.b builtin.__anyInput
push.v builtin.__playerIndex
push.l 6
conv.l.v
call.i gml_Script___InputPlugInExecuteCallbacks(argc=2)
popz.v
push.v builtin.__consumedArray
pop.v.v local._consumedArray
pushi.e 0
pop.v.i local._i
pushloc.v local._consumedArray
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [60]

:[55]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._consumedArray
pushi.e -9
pushenv [59]

:[56]
push.v builtin.__held
conv.v.b
bf [58]

:[57]
pushi.e 0
pop.v.b builtin.__held
pushi.e 0
pop.v.i builtin.__valueRaw
pushi.e 0
pop.v.i builtin.__valueClamp
pushbltn.v builtin.infinity
neg.v
pop.v.v builtin.__pressFrame
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [59]

:[58]
pushi.e 1
conv.i.v
pushloc.v local._i
pushloc.v local._consumedArray
call.i array_delete(argc=3)
popz.v

:[59]
popenv [56]
pushi.e 1
sub.i.i
dup.i 0
bt [55]

:[60]
popz.i
push.v builtin.__verbStateArray
pop.v.v local._verbStateArray
pushi.e 0
pop.v.i local._i
push.v builtin._clusterCount
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [80]

:[61]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self._clusterDefinitionArray
pop.v.v local._clusterDefinition
pushloc.v local._clusterDefinition
call.i is_struct(argc=1)
conv.v.b
not.b
bf [63]

:[62]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [79]

:[63]
pushi.e -7
pushloc.v local._clusterDefinition
pushi.e -9
push.v [stacktop]self.__verbUp
conv.v.i
push.v [array]self._verbStateArray
pushi.e -9
push.v [stacktop]self.__valueRaw
pop.v.v local._valueU
pushi.e -7
pushloc.v local._clusterDefinition
pushi.e -9
push.v [stacktop]self.__verbRight
conv.v.i
push.v [array]self._verbStateArray
pushi.e -9
push.v [stacktop]self.__valueRaw
pop.v.v local._valueR
pushi.e -7
pushloc.v local._clusterDefinition
pushi.e -9
push.v [stacktop]self.__verbDown
conv.v.i
push.v [array]self._verbStateArray
pushi.e -9
push.v [stacktop]self.__valueRaw
pop.v.v local._valueD
pushi.e -7
pushloc.v local._clusterDefinition
pushi.e -9
push.v [stacktop]self.__verbLeft
conv.v.i
push.v [array]self._verbStateArray
pushi.e -9
push.v [stacktop]self.__valueRaw
pop.v.v local._valueL
pushloc.v local._valueR
pushloc.v local._valueL
sub.v.v
pop.v.v local._dx
pushloc.v local._valueD
pushloc.v local._valueU
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
cmp.i.v LTE
bf [65]

:[64]
pushi.e 0
conv.i.v
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.__clusterXArray
pushi.e 0
conv.i.v
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.__clusterYArray
b [78]

:[65]
push.v local._dx
pushloc.v local._d
pushi.e 1
conv.i.v
call.i max(argc=2)
div.v.v
pop.v.v local._dx
push.v local._dy
pushloc.v local._d
pushi.e 1
conv.i.v
call.i max(argc=2)
div.v.v
pop.v.v local._dy
pushloc.v local._d
pushi.e 1
conv.i.v
call.i min(argc=2)
pop.v.v local._d
push.v builtin.__device
pushi.e 0
cmp.i.v GTE
bf [69]

:[66]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.__clusterThresholdTypeArray
pop.v.v local._thresholdType
pushi.e -6
pushloc.v local._thresholdType
conv.v.i
push.v [array]self.__thresholdMinArray
pop.v.v local._a
pushi.e -6
pushloc.v local._thresholdType
conv.v.i
push.v [array]self.__thresholdMaxArray
pop.v.v local._b
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._b
pushloc.v local._a
call.i min(argc=2)
call.i clamp(argc=3)
pop.v.v local._min
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._b
pushloc.v local._a
call.i max(argc=2)
call.i clamp(argc=3)
pop.v.v local._max
pushloc.v local._max
pushloc.v local._min
sub.v.v
pop.v.v local._delta
pushloc.v local._delta
pushi.e 0
cmp.i.v EQ
bf [68]

:[67]
push.d 0.001
pop.v.d local._delta

:[68]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._d
pushloc.v local._min
sub.v.v
pushloc.v local._delta
div.v.v
call.i clamp(argc=3)
pop.v.v local._coeff
pushloc.v local._dx
pushloc.v local._d
div.v.v
pushloc.v local._coeff
mul.v.v
pop.v.v local._dx
pushloc.v local._dy
pushloc.v local._d
div.v.v
pushloc.v local._coeff
mul.v.v
pop.v.v local._dy

:[69]
pushloc.v local._clusterDefinition
pushi.e -9
push.v [stacktop]self.__axisBiasFactor
pop.v.v local._bias
pushloc.v local._bias
pushi.e 0
cmp.i.v GT
bf [77]

:[70]
pushloc.v local._clusterDefinition
pushi.e -9
push.v [stacktop]self.__axisBiasDiagonals
conv.v.b
bf [72]

:[71]
pushi.e 45
conv.i.v
b [73]

:[72]
pushi.e 90
conv.i.v

:[73]
pop.v.v local._divisor
pushloc.v local._dy
pushloc.v local._dx
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_direction(argc=4)
pop.v.v local._direction
pushloc.v local._bias
pushi.e 1
cmp.i.v GTE
bf [75]

:[74]
pushloc.v local._divisor
pushloc.v local._direction
pushloc.v local._divisor
div.v.v
call.i round(argc=1)
mul.v.v
pop.v.v local._direction
b [76]

:[75]
pushloc.v local._direction
pushloc.v local._divisor
mod.v.v
pushloc.v local._divisor
div.v.v
pop.v.v local._dirMod
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._dirMod
push.d 0.4995
pushloc.v local._bias
mul.v.d
sub.v.v
pushi.e 1
push.d 0.999
pushloc.v local._bias
mul.v.d
sub.v.i
div.v.v
call.i clamp(argc=3)
pop.v.v local._dirMod
pushloc.v local._dirMod
pushloc.v local._dirMod
mul.v.v
pushi.e 3
pushi.e 2
pushloc.v local._dirMod
mul.v.i
sub.v.i
mul.v.v
pop.v.v local._dirMod
pushloc.v local._divisor
pushloc.v local._direction
pushloc.v local._divisor
rem.v.v
pushloc.v local._dirMod
add.v.v
mul.v.v
pop.v.v local._direction

:[76]
pushloc.v local._dy
pushloc.v local._dx
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i point_distance(argc=4)
pop.v.v local._distance
pushloc.v local._direction
pushloc.v local._distance
call.i lengthdir_x(argc=2)
pop.v.v local._dx
pushloc.v local._direction
pushloc.v local._distance
call.i lengthdir_y(argc=2)
pop.v.v local._dy

:[77]
pushloc.v local._dx
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.__clusterXArray
pushloc.v local._dy
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.__clusterYArray

:[78]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i

:[79]
pushi.e 1
sub.i.i
dup.i 0
bt [61]

:[80]
popz.i
push.v builtin.__anyInput
conv.v.b
bf [82]

:[81]
pushbltn.v builtin.current_time
pop.v.v builtin.__lastInputTime

:[82]
exit.i

:[83]
push.i [function]gml_Script___Update@anon@6668@__InputClassPlayer@__InputClassPlayer
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
pop.v.v static.__Update

:[84]
push.v arg.argument0
pop.v.v builtin.__playerIndex
pushi.e -666
pop.v.i builtin.__device
pushbltn.v builtin.undefined
pop.v.v builtin.__metadata
push.l 0
pop.v.l builtin.__status
pushi.e 0
pop.v.b builtin.__blocked
pushi.e 0
pop.v.b builtin.__ghost
pushi.e 0
pop.v.b builtin.__anyInput
pushbltn.v builtin.infinity
neg.v
pop.v.v builtin.__lastInputTime
pushi.e 2
pop.v.i builtin.__lastConnectedGamepadType
b [92]

> gml_Script_anon@1451@__InputClassPlayer@__InputClassPlayer (locals=1, argc=1)
:[85]
isstaticok.e
bt [87]

:[86]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__verbDefinitionArray
pop.v.v static._verbDefinitionArray

:[87]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._verbDefinitionArray
pop.v.v local._verbDefinition
pushloc.v local._verbDefinition
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [89]

:[88]
pushloc.v local._verbDefinition
pushi.e -9
push.v [stacktop]self.__kbmBinding
call.i variable_clone(argc=1)
b [90]

:[89]
call.i @@NewGMLArray@@(argc=0)

:[90]
ret.v

:[91]
exit.i

:[92]
push.i [function]gml_Script_anon@1451@__InputClassPlayer@__InputClassPlayer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v static._verbCount
call.i array_create_ext(argc=2)
pop.v.v builtin.__kbmBindingArray
b [100]

> gml_Script_anon@1786@__InputClassPlayer@__InputClassPlayer (locals=1, argc=1)
:[93]
isstaticok.e
bt [95]

:[94]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__verbDefinitionArray
pop.v.v static._verbDefinitionArray

:[95]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._verbDefinitionArray
pop.v.v local._verbDefinition
pushloc.v local._verbDefinition
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [97]

:[96]
pushloc.v local._verbDefinition
pushi.e -9
push.v [stacktop]self.__gamepadBinding
call.i variable_clone(argc=1)
b [98]

:[97]
call.i @@NewGMLArray@@(argc=0)

:[98]
ret.v

:[99]
exit.i

:[100]
push.i [function]gml_Script_anon@1786@__InputClassPlayer@__InputClassPlayer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v static._verbCount
call.i array_create_ext(argc=2)
pop.v.v builtin.__gamepadBindingArray
b [103]

> gml_Script_anon@2120@__InputClassPlayer@__InputClassPlayer (locals=0, argc=1)
:[101]
push.v arg.argument0
push.i [function]gml_Script___InputClassVerbState
conv.i.v
call.i @@NewGMLObject@@(argc=2)
ret.v

:[102]
exit.i

:[103]
push.i [function]gml_Script_anon@2120@__InputClassPlayer@__InputClassPlayer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v static._verbCount
call.i array_create_ext(argc=2)
pop.v.v builtin.__verbStateArray
b [111]

> gml_Script_anon@2266@__InputClassPlayer@__InputClassPlayer (locals=1, argc=1)
:[104]
isstaticok.e
bt [106]

:[105]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__verbDefinitionArray
pop.v.v static._verbDefinitionArray

:[106]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._verbDefinitionArray
pop.v.v local._verbDefinition
pushloc.v local._verbDefinition
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [108]

:[107]
pushloc.v local._verbDefinition
pushi.e -9
push.v [stacktop]self.__metadata
call.i variable_clone(argc=1)
b [109]

:[108]
pushbltn.v builtin.undefined

:[109]
ret.v

:[110]
exit.i

:[111]
push.i [function]gml_Script_anon@2266@__InputClassPlayer@__InputClassPlayer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v static._verbCount
call.i array_create_ext(argc=2)
pop.v.v builtin.__verbMetadataArray
b [119]

> gml_Script_anon@2610@__InputClassPlayer@__InputClassPlayer (locals=1, argc=1)
:[112]
isstaticok.e
bt [114]

:[113]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pushi.e -9
push.v [stacktop]self.__clusterDefinitionArray
pop.v.v static._clusterDefinitionArray

:[114]
pushi.e -16
push.v arg.argument0
conv.v.i
push.v [array]self._clusterDefinitionArray
pop.v.v local._clusterDefinition
pushloc.v local._clusterDefinition
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [116]

:[115]
pushloc.v local._clusterDefinition
pushi.e -9
push.v [stacktop]self.__metadata
call.i variable_clone(argc=1)
b [117]

:[116]
pushbltn.v builtin.undefined

:[117]
ret.v

:[118]
exit.i

:[119]
push.i [function]gml_Script_anon@2610@__InputClassPlayer@__InputClassPlayer
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.v static._clusterCount
call.i array_create_ext(argc=2)
pop.v.v builtin.__clusterMetadataArray
pushi.e 0
conv.i.v
push.v static._verbCount
call.i array_create(argc=2)
pop.v.v builtin.__valueRawArray
pushi.e 0
conv.i.v
push.v static._verbCount
call.i array_create(argc=2)
pop.v.v builtin.__valueClampArray
pushi.e 0
conv.i.v
push.v static._clusterCount
call.i array_create(argc=2)
pop.v.v builtin.__clusterXArray
pushi.e 0
conv.i.v
push.v static._clusterCount
call.i array_create(argc=2)
pop.v.v builtin.__clusterYArray
push.l 0
conv.l.v
push.v static._verbCount
call.i array_create(argc=2)
pop.v.v builtin.__clusterThresholdTypeArray
push.d 0.25
conv.d.v
push.l 3
conv.l.v
call.i array_create(argc=2)
pop.v.v builtin.__thresholdMinArray
push.d 0.8
conv.d.v
push.l 3
conv.l.v
call.i array_create(argc=2)
pop.v.v builtin.__thresholdMaxArray
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.__consumedArray
exit.i

:[120]
push.i [function]gml_Script___InputClassPlayer
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputClassPlayer
popz.v

:[end]