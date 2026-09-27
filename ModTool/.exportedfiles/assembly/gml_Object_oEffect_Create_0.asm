:[0]
call.i event_inherited(argc=0)
popz.v
b [14]

> gml_Script_anon@401@gml_Object_oEffect_Create_0 (locals=3, argc=4)
:[1]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.b builtin.argument3

:[3]
push.v builtin.stack
push.v arg.argument0
add.v.v
pop.v.v builtin.stack
push.v arg.argument0
call.i sign(argc=1)
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.l 0
pop.v.l local._theStateNext
pushglb.v global.depthManager
push.s "effect"@4187
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 1
sub.i.v
pop.v.v local._theDepth
b [8]

:[5]
push.v arg.argument0
call.i sign(argc=1)
pushi.e -1
cmp.i.v EQ
bf [7]

:[6]
push.l 2
pop.v.l local._theStateNext
pushglb.v global.depthManager
push.s "effect"@4187
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 1
add.i.v
pop.v.v local._theDepth
b [8]

:[7]
exit.i

:[8]
pushi.e 0
pop.v.i local._i

:[9]
pushloc.v local._i
push.v arg.argument0
call.i abs(argc=1)
cmp.v.v LT
bf [13]

:[10]
push.v builtin.y
push.v builtin.x
pushloc.v local._theStateNext
pushloc.v local._i
push.d 0.08333333333333333
mul.d.v
push.v builtin.id
push.v builtin.sprite_index
b [12]

> gml_Script____struct___347@anon@401@gml_Object_oEffect_Create_0 (locals=0, argc=0)
:[11]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.sprite_index
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.linkedTo
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.appearDelay
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.stateNext
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.xTo
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v self.yTo
exit.i

:[12]
push.i [function]gml_Script____struct___347@anon@401@gml_Object_oEffect_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___347
call.i @@NewGMLObject@@(argc=7)
pushref.i 17
pushloc.v local._theDepth
push.v arg.argument2
push.v arg.argument1
call.i instance_create_depth(argc=5)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [9]

:[13]
exit.i

:[14]
push.i [function]gml_Script_anon@401@gml_Object_oEffect_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.increase_props
b [27]

> gml_Script_anon@1273@gml_Object_oEffect_Create_0 (locals=3, argc=0)
:[15]
push.v builtin.stackVisual
pop.v.v local._stackText
push.v builtin.stackVisual
call.i sign(argc=1)
pushi.e -1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 0
pop.v.i local._stackText

:[17]
push.v builtin.id
push.s "{0}"@8789
conv.s.v
call.i @@string@@(argc=2)
pushloc.v local._stackText
call.i gml_Script_scribble(argc=2)
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
push.s "ftNbrSmall"@5423
conv.s.v
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.stackTxt
pushi.e 0
pop.v.i local._i

:[18]
pushloc.v local._i
push.v builtin.tooltip
call.i array_length(argc=1)
cmp.v.v LT
bf [26]

:[19]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.tooltip
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [21]

:[20]
b [25]

:[21]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.tooltip
pushi.e -9
push.v [stacktop]self.effectIsLinked
conv.v.b
bf [23]

:[22]
pushi.e -1
conv.i.v
pushi.e -1
conv.i.v
pushi.e -1
conv.i.v
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.tooltip
pushi.e -9
push.v [stacktop]self.effect
call.i gml_Script_add_var_to_text(argc=4)
pop.v.v local._desc
b [24]

:[23]
push.v builtin.chance
push.v builtin.amount
push.v builtin.stack
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.tooltip
pushi.e -9
push.v [stacktop]self.effect
call.i gml_Script_add_var_to_text(argc=4)
pop.v.v local._desc

:[24]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.tooltip
pushloc.v local._desc
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.tooltip
pushi.e -9
push.v [stacktop]self.effect
pushi.e -9
push.v [stacktop]self.name
dup.v 2 8
dup.v 0
push.v stacktop.updateTxt
callv.v 2
popz.v

:[25]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [18]

:[26]
exit.i

:[27]
push.i [function]gml_Script_anon@1273@gml_Object_oEffect_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_txt
push.s "theStruct"@5094
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [29]

:[28]
pushbltn.v builtin.undefined
pop.v.v builtin.theStruct

:[29]
push.s "stack"@4184
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [31]

:[30]
pushi.e 1
pop.v.i builtin.stack

:[31]
push.s "amount"@4185
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [33]

:[32]
pushi.e -1
pop.v.i builtin.amount

:[33]
push.s "chance"@4186
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [35]

:[34]
pushi.e -1
pop.v.i builtin.chance

:[35]
push.s "number"@5108
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [37]

:[36]
pushbltn.v builtin.undefined
pop.v.v builtin.number

:[37]
pushi.e 0
pop.v.i builtin.stackVisual
pushi.e 1
pop.v.b builtin.firstCreationVisual
pushi.e 0
pop.v.i builtin.image_alpha
b [40]

> gml_Script_anon@2858@gml_Object_oEffect_Create_0 (locals=0, argc=0)
:[38]
push.v builtin.x
ret.v

:[39]
exit.i

:[40]
push.i [function]gml_Script_anon@2858@gml_Object_oEffect_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_modal_x
b [43]

> gml_Script_anon@2906@gml_Object_oEffect_Create_0 (locals=0, argc=0)
:[41]
push.v builtin.y
push.v builtin.sprite_index
call.i sprite_get_yoffset(argc=1)
sub.v.v
pushi.e 2
sub.i.v
ret.v

:[42]
exit.i

:[43]
push.i [function]gml_Script_anon@2906@gml_Object_oEffect_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_modal_y
push.l 0
conv.l.v
push.v builtin.amount
push.v builtin.stack
push.l 0
conv.l.v
push.l 2
conv.l.v
call.i @@This@@(argc=0)
push.v builtin.get_modal_y
callv.v 0
call.i @@This@@(argc=0)
push.v builtin.get_modal_x
callv.v 0
push.v builtin.theStruct
push.v builtin.id
call.i gml_Script_generate_tooltip(argc=9)
popz.v
call.i @@This@@(argc=0)
push.v builtin.update_txt
callv.v 0
popz.v
push.l 1
conv.l.v
push.v builtin.id
push.i [function]gml_Script_WiggleEffect
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.wiggle
push.v builtin.sprite_index
call.i sprite_get_width(argc=1)
pop.v.v builtin.width
push.v builtin.sprite_index
call.i sprite_get_height(argc=1)
pop.v.v builtin.height
pushi.e 0
pop.v.b builtin.vfxActivation
pushi.e 100
conv.i.v
call.i random(argc=1)
pop.v.v builtin.pNoiseActivated
push.d 0.3
pop.v.d builtin.pNoiseInc
b [89]

> gml_Script_anon@3435@gml_Object_oEffect_Create_0 (locals=1, argc=0)
:[44]
pushi.e 0
pop.v.b builtin.vfxActivation
pushglb.v global.playersManager
push.v builtin.number
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._charLinked
pushloc.v local._charLinked
pushi.e -4
cmp.i.v NEQ
bf [88]

:[45]
push.v builtin.theStruct
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.powerlessShot
cmp.v.v EQ
bt [57]

:[46]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.goldenSap
cmp.v.v EQ
bt [60]

:[47]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.predatoryInstinct
cmp.v.v EQ
bt [60]

:[48]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.pigeonHead
cmp.v.v EQ
bt [63]

:[49]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.damagedShell
cmp.v.v EQ
bt [69]

:[50]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.hazelnut
cmp.v.v EQ
bt [69]

:[51]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.slimeBall
cmp.v.v EQ
bt [75]

:[52]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.badTrip
cmp.v.v EQ
bt [78]

:[53]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.confusion
cmp.v.v EQ
bt [78]

:[54]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.hallucinogenicVision
cmp.v.v EQ
bt [78]

:[55]
dup.v 0
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.mother
cmp.v.v EQ
bt [81]

:[56]
b [87]

:[57]
pushloc.v local._charLinked
pushi.e -9
push.v [stacktop]self.hp
pushloc.v local._charLinked
pushi.e -9
push.v [stacktop]self.hpMax
pushi.e -6
pushi.e 0
push.v [array]self.amount
mul.v.v
pushi.e 100
conv.i.d
div.d.v
cmp.v.v GTE
bf [59]

:[58]
pushi.e 1
pop.v.b builtin.vfxActivation

:[59]
b [87]

:[60]
pushloc.v local._charLinked
pushi.e -9
push.v [stacktop]self.hp
pushloc.v local._charLinked
pushi.e -9
push.v [stacktop]self.hpMax
pushi.e -6
pushi.e 0
push.v [array]self.amount
mul.v.v
pushi.e 100
conv.i.d
div.d.v
cmp.v.v LTE
bf [62]

:[61]
pushi.e 1
pop.v.b builtin.vfxActivation

:[62]
b [87]

:[63]
pushloc.v local._charLinked
pushi.e -9
push.v [stacktop]self.hp
pushi.e -6
pushi.e 0
push.v [array]self.amount
cmp.v.v EQ
bt [65]

:[64]
pushloc.v local._charLinked
pushi.e -9
push.v [stacktop]self.hp
pushi.e -6
pushi.e 1
push.v [array]self.amount
cmp.v.v EQ
b [66]

:[65]
push.e 1

:[66]
bf [68]

:[67]
pushi.e 1
pop.v.b builtin.vfxActivation

:[68]
b [87]

:[69]
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.is_first_monster
callv.v 0
conv.v.b
bf [71]

:[70]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.isFightActive
conv.v.b
b [72]

:[71]
push.e 0

:[72]
bf [74]

:[73]
pushi.e 1
pop.v.b builtin.vfxActivation

:[74]
b [87]

:[75]
pushloc.v local._charLinked
dup.v 0 8
dup.v 0
push.v stacktop.get_gem
callv.v 0
pushloc.v local._charLinked
pushi.e -9
push.v [stacktop]self.hp
cmp.v.v LT
bf [77]

:[76]
pushi.e 1
pop.v.b builtin.vfxActivation

:[77]
b [87]

:[78]
pushglb.v global.fightManager
pushi.e -9
push.v [stacktop]self.isFightActive
conv.v.b
bf [80]

:[79]
pushi.e 1
pop.v.b builtin.vfxActivation

:[80]
b [87]

:[81]
pushglb.v global.loopManager
pushi.e -9
push.v [stacktop]self.state
push.l 3
cmp.l.v EQ
bf [83]

:[82]
pushglb.v global.playersCount
pushi.e 1
cmp.i.v GT
b [84]

:[83]
push.e 0

:[84]
bf [86]

:[85]
pushi.e 1
pop.v.b builtin.vfxActivation

:[86]
b [87]

:[87]
popz.v

:[88]
exit.i

:[89]
push.i [function]gml_Script_anon@3435@gml_Object_oEffect_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.check_vfx_activation
call.i @@This@@(argc=0)
push.v builtin.check_vfx_activation
callv.v 0
popz.v

:[end]