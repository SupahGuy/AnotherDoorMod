:[0]
b [58]

> gml_Script_c_shake (locals=0, argc=0)
:[1]
call.i @@SetStatic@@(argc=0)
pushi.e 1000
conv.i.v
call.i random(argc=1)
pop.v.v builtin.perlinSeedX
pushi.e 1000
conv.i.v
call.i random(argc=1)
pop.v.v builtin.perlinSeedY
push.d 0.7
pop.v.d builtin.perlinInc
pushi.e 1
pop.v.i builtin.shakeIntensity
pushi.e 0
pop.v.i builtin.shakeX
pushi.e 0
pop.v.i builtin.shakeY
pushi.e 0
pop.v.b builtin.isRunning
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.elementsShaking
b [3]

> gml_Script_anon@264@c_shake@shake (locals=0, argc=0)
:[2]
pushi.e 1
pop.v.b builtin.isRunning
exit.i

:[3]
push.i [function]gml_Script_anon@264@c_shake@shake
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.run
b [5]

> gml_Script_anon@337@c_shake@shake (locals=0, argc=0)
:[4]
pushi.e 0
pop.v.b builtin.isRunning
exit.i

:[5]
push.i [function]gml_Script_anon@337@c_shake@shake
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.stop
b [7]

> gml_Script_anon@415@c_shake@shake (locals=0, argc=0)
:[6]
pushi.e 1
pop.v.b builtin.isRunning
exit.i

:[7]
push.i [function]gml_Script_anon@415@c_shake@shake
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set
b [10]

> gml_Script_anon@500@c_shake@shake (locals=0, argc=0)
:[8]
push.v builtin.shakeY
push.v builtin.shakeX
call.i @@NewGMLArray@@(argc=2)
ret.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_anon@500@c_shake@shake
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_values
b [22]

> gml_Script_anon@570@c_shake@shake (locals=1, argc=1)
:[11]
push.v arg.argument0
dup.v 0
push.l 0
cmp.l.v EQ
bt [15]

:[12]
dup.v 0
push.l 1
cmp.l.v EQ
bt [17]

:[13]
dup.v 0
push.l 2
cmp.l.v EQ
bt [19]

:[14]
b [21]

:[15]
pushi.e 4
conv.i.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[16]
b [21]

:[17]
pushi.e 8
conv.i.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[18]
b [21]

:[19]
pushi.e 24
conv.i.v
pop.v.v local.$$$$temp$$$$
popz.v
push.v local.$$$$temp$$$$
ret.v

:[20]
b [21]

:[21]
popz.v
exit.i

:[22]
push.i [function]gml_Script_anon@570@c_shake@shake
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_intensity_value
b [28]

> gml_Script_anon@852@c_shake@shake (locals=1, argc=1)
:[23]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.element_exist
callv.v 1
pop.v.v local._index
pushloc.v local._index
pushi.e -1
cmp.i.v NEQ
bf [26]

:[24]
pushi.e -1
pushloc.v local._index
conv.v.i
push.v [array]self.elementsShaking
pushi.e -9
push.v [stacktop]self.intensity
call.i @@This@@(argc=0)
push.v builtin.get_intensity_value
callv.v 1
ret.v

:[25]
b [27]

:[26]
push.l 1
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.get_intensity_value
callv.v 1
ret.v

:[27]
exit.i

:[28]
push.i [function]gml_Script_anon@852@c_shake@shake
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_intensity
b [36]

> gml_Script_anon@1170@c_shake@shake (locals=1, argc=1)
:[29]
pushi.e 0
pop.v.i local._i

:[30]
pushloc.v local._i
push.v builtin.elementsShaking
call.i array_length(argc=1)
cmp.v.v LT
bf [34]

:[31]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.elementsShaking
pushi.e -9
push.v [stacktop]self.id
push.v arg.argument0
cmp.v.v EQ
bf [33]

:[32]
pushloc.v local._i
ret.v

:[33]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [30]

:[34]
pushi.e -1
conv.i.v
ret.v

:[35]
exit.i

:[36]
push.i [function]gml_Script_anon@1170@c_shake@shake
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.element_exist
b [48]

> gml_Script_anon@1462@c_shake@shake (locals=2, argc=2)
:[37]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [39]

:[38]
push.l 1
pop.v.l builtin.argument1

:[39]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.element_exist
callv.v 1
pop.v.v local._index
pushloc.v local._index
pushi.e -1
cmp.i.v EQ
bf [45]

:[40]
push.v arg.argument1
push.v arg.argument0
b [42]

> gml_Script____struct___320@anon@1462@c_shake@shake (locals=0, argc=0)
:[41]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.id
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.intensity
exit.i

:[42]
push.i [function]gml_Script____struct___320@anon@1462@c_shake@shake
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___320
call.i @@NewGMLObject@@(argc=3)
pop.v.v local._struct
pushloc.v local._struct
push.v builtin.elementsShaking
call.i array_push(argc=2)
popz.v
push.v builtin.isRunning
conv.v.b
not.b
bf [44]

:[43]
call.i @@This@@(argc=0)
push.v builtin.run
callv.v 0
popz.v

:[44]
b [47]

:[45]
push.v arg.argument1
call.i @@This@@(argc=0)
push.v builtin.get_intensity_value
callv.v 1
pushi.e -1
pushloc.v local._index
conv.v.i
push.v [array]self.elementsShaking
pushi.e -9
push.v [stacktop]self.intensity
call.i @@This@@(argc=0)
push.v builtin.get_intensity_value
callv.v 1
cmp.v.v GT
bf [47]

:[46]
push.v arg.argument1
pushi.e -1
pushloc.v local._index
conv.v.i
push.v [array]self.elementsShaking
pushi.e -9
pop.v.v [stacktop]self.intensity

:[47]
exit.i

:[48]
push.i [function]gml_Script_anon@1462@c_shake@shake
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.add_element
b [53]

> gml_Script_anon@1937@c_shake@shake (locals=1, argc=1)
:[49]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.element_exist
callv.v 1
pop.v.v local._index
pushloc.v local._index
pushi.e -1
cmp.i.v NEQ
bf [52]

:[50]
pushi.e 1
conv.i.v
pushloc.v local._index
push.v builtin.elementsShaking
call.i array_delete(argc=3)
popz.v
push.v builtin.elementsShaking
call.i array_length(argc=1)
pushi.e 0
cmp.i.v EQ
bf [52]

:[51]
call.i @@This@@(argc=0)
push.v builtin.stop
callv.v 0
popz.v

:[52]
exit.i

:[53]
push.i [function]gml_Script_anon@1937@c_shake@shake
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.remove_element
b [57]

> gml_Script_anon@2176@c_shake@shake (locals=0, argc=0)
:[54]
push.v builtin.isRunning
conv.v.b
bf [56]

:[55]
push.v builtin.perlinSeedX
push.v builtin.perlinInc
add.v.v
pop.v.v builtin.perlinSeedX
push.v builtin.perlinSeedY
push.v builtin.perlinInc
add.v.v
pop.v.v builtin.perlinSeedY
push.v builtin.shakeIntensity
push.v builtin.shakeIntensity
neg.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v builtin.perlinSeedX
call.i gml_Script_perlin_noise(argc=1)
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.shakeX
push.v builtin.shakeIntensity
push.v builtin.shakeIntensity
neg.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v builtin.perlinSeedY
call.i gml_Script_perlin_noise(argc=1)
call.i gml_Script_map_value(argc=5)
pop.v.v builtin.shakeY

:[56]
exit.i

:[57]
push.i [function]gml_Script_anon@2176@c_shake@shake
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.step
exit.i

:[58]
push.i [function]gml_Script_c_shake
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.c_shake
popz.v

:[end]