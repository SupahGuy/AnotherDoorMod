; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.s "className"@4541
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [2]

:[1]
push.s ""@61
pop.v.s builtin.className

:[2]
push.s "spriteName"@4852
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [4]

:[3]
push.s ""@61
pop.v.s builtin.spriteName

:[4]
push.s "hpMax"@4851
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [6]

:[5]
pushi.e 0
pop.v.i builtin.hpMax

:[6]
push.s "number"@5108
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [8]

:[7]
pushi.e 0
pop.v.i builtin.number

:[8]
pushi.e -4
pop.v.i builtin.token
push.i [function]gml_Script_counterStats
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v builtin.stats
push.s "effects"@5061
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [10]

:[9]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.effects

:[10]
b [25]

> gml_Script_anon@1126@gml_Object_oEntitie_Create_0 (locals=1, argc=3)
:[11]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [13]

:[12]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument0

:[13]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [15]

:[14]
pushi.e 0
pop.v.b builtin.argument1

:[15]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [17]

:[16]
pushi.e -1
pop.v.i builtin.argument2

:[17]
push.v builtin.effects
call.i array_length(argc=1)
pushi.e 0
cmp.i.v LTE
bf [19]

:[18]
exit.i

:[19]
push.v arg.argument2
pushi.e -1
cmp.i.v NEQ
bf [21]

:[20]
push.v arg.argument1
push.v arg.argument0
push.v arg.argument2
call.i @@This@@(argc=0)
push.v builtin.delete_effect_process
callv.v 3
popz.v
b [24]

:[21]
push.v builtin.effects
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pop.v.v local._i

:[22]
pushloc.v local._i
pushi.e 0
cmp.i.v GTE
bf [24]

:[23]
push.v arg.argument1
push.v arg.argument0
pushloc.v local._i
call.i @@This@@(argc=0)
push.v builtin.delete_effect_process
callv.v 3
popz.v
push.v local._i
push.e 1
sub.i.v
pop.v.v local._i
b [22]

:[24]
call.i @@This@@(argc=0)
push.v builtin.reposition_effect
callv.v 0
popz.v
exit.i

:[25]
push.i [function]gml_Script_anon@1126@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.delete_effect
b [60]

> gml_Script_anon@1591@gml_Object_oEntitie_Create_0 (locals=3, argc=3)
:[26]
pushi.e -6
push.v arg.argument0
conv.v.i
push.v [array]self.effects
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [28]

:[27]
exit.i

:[28]
push.v arg.argument2
conv.v.b
bf [32]

:[29]
pushi.e 0
pop.v.b local._shouldDelete
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.stack
pushi.e 0
cmp.i.v LTE
bf [31]

:[30]
pushi.e 1
pop.v.b local._shouldDelete

:[31]
b [41]

:[32]
pushi.e 1
pop.v.b local._shouldDelete
push.v arg.argument1
call.i array_length(argc=1)
pushi.e 0
cmp.i.v NEQ
bf [41]

:[33]
pushi.e 0
pop.v.i local._c

:[34]
pushloc.v local._c
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.theStruct
pushi.e -9
push.v [stacktop]self.condition
call.i array_length(argc=1)
cmp.v.v LT
bf [41]

:[35]
pushi.e 0
pop.v.i local._c2

:[36]
pushloc.v local._c2
push.v arg.argument1
call.i array_length(argc=1)
cmp.v.v LT
bf [40]

:[37]
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.theStruct
pushi.e -9
pushloc.v local._c
conv.v.i
push.v [array]self.condition
pushi.e -15
pushloc.v local._c2
conv.v.i
push.v [array]self.argument1
cmp.v.v EQ
bf [39]

:[38]
pushi.e 0
pop.v.b local._shouldDelete

:[39]
push.v local._c2
push.e 1
add.i.v
pop.v.v local._c2
b [36]

:[40]
push.v local._c
push.e 1
add.i.v
pop.v.v local._c
b [34]

:[41]
pushloc.v local._shouldDelete
conv.v.b
bf [59]

:[42]
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.theStruct
pushi.e -9
push.v [stacktop]self.structName
pushglb.v global.effect
pushi.e -9
push.v [stacktop]self.hallucinogenicVision
pushi.e -9
push.v [stacktop]self.structName
cmp.v.v EQ
bf [58]

:[43]
push.v builtin.spriteProfileHpHiddenDefault
pop.v.v builtin.spriteProfileHpHidden
call.i @@This@@(argc=0)
push.v builtin.is_in_fight
callv.v 0
conv.v.b
bf [45]

:[44]
call.i @@This@@(argc=0)
push.v builtin.is_alive
callv.v 0
conv.v.b
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
push.v builtin.spriteProfileDefault
pop.v.v builtin.spriteProfile
push.v builtin.spriteProfileBoxGemDefault
pop.v.v builtin.spriteProfileBoxGem
b [58]

:[48]
call.i @@This@@(argc=0)
push.v builtin.is_in_fight
callv.v 0
conv.v.b
not.b
bf [50]

:[49]
call.i @@This@@(argc=0)
push.v builtin.is_alive
callv.v 0
conv.v.b
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
push.v builtin.spriteProfileLeaving
pop.v.v builtin.spriteProfile
push.v builtin.spriteProfileBoxGemLeft
pop.v.v builtin.spriteProfileBoxGem
b [58]

:[53]
call.i @@This@@(argc=0)
push.v builtin.is_in_fight
callv.v 0
conv.v.b
not.b
bf [55]

:[54]
call.i @@This@@(argc=0)
push.v builtin.is_alive
callv.v 0
conv.v.b
not.b
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
push.v builtin.spriteProfileDead
pop.v.v builtin.spriteProfile
push.v builtin.spriteProfileBoxGemDead
pop.v.v builtin.spriteProfileBoxGem

:[58]
pushi.e -6
push.v arg.argument0
conv.v.i
push.v [array]self.effects
call.i instance_destroy(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v arg.argument0
push.v builtin.effects
call.i array_delete(argc=3)
popz.v

:[59]
exit.i

:[60]
push.i [function]gml_Script_anon@1591@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.delete_effect_process
b [73]

> gml_Script_anon@3117@gml_Object_oEntitie_Create_0 (locals=5, argc=0)
:[61]
push.v builtin.effects
call.i array_length(argc=1)
pop.v.v local._lengthEffect
pushloc.v local._lengthEffect
pushi.e 0
cmp.i.v GT
bf [72]

:[62]
push.v builtin.xEffect
pop.v.v local._x
push.v builtin.yEffect
pop.v.v local._y
pushi.e 0
pop.v.i local._yOffset
pushi.e 0
pop.v.i local._i

:[63]
pushloc.v local._i
pushloc.v local._lengthEffect
cmp.v.v LT
bf [72]

:[64]
pushloc.v local._i
pushi.e 6
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [66]

:[65]
pushloc.v local._i
pushi.e 0
cmp.i.v NEQ
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
push.v local._yOffset
pushi.e 16
sub.i.v
pop.v.v local._yOffset

:[69]
pushloc.v local._x
pushloc.v local._i
pushi.e 6
mod.i.v
pushi.e 16
mul.i.v
add.v.v
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.effects
pushi.e -9
pop.v.v [stacktop]self.x
pushloc.v local._y
pushloc.v local._yOffset
add.v.v
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.effects
pushi.e -9
pop.v.v [stacktop]self.y
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.tooltip
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [71]

:[70]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.effects
pushi.e -9
pushi.e 0
push.v [array]self.tooltip
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.effects
dup.v 0 8
dup.v 0
push.v stacktop.get_modal_y
callv.v 0
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.effects
dup.v 0 8
dup.v 0
push.v stacktop.get_modal_x
callv.v 0
dup.v 2 8
dup.v 0
push.v stacktop.reposition
callv.v 2
popz.v

:[71]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [63]

:[72]
exit.i

:[73]
push.i [function]gml_Script_anon@3117@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reposition_effect
b [78]

> gml_Script_anon@3707@gml_Object_oEntitie_Create_0 (locals=2, argc=0)
:[74]
push.v builtin.effects
call.i array_length(argc=1)
pop.v.v local._lengthEffect
pushi.e 0
pop.v.i local._i

:[75]
pushloc.v local._i
pushloc.v local._lengthEffect
cmp.v.v LT
bf [77]

:[76]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.effects
dup.v 0 8
dup.v 0
push.v stacktop.check_vfx_activation
callv.v 0
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [75]

:[77]
exit.i

:[78]
push.i [function]gml_Script_anon@3707@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.check_effect_activation
b [89]

> gml_Script_anon@4061@gml_Object_oEntitie_Create_0 (locals=1, argc=1)
:[79]
pushi.e 0
pop.v.i local._i

:[80]
pushloc.v local._i
push.v builtin.effects
call.i array_length(argc=1)
cmp.v.v LT
bf [87]

:[81]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.effects
call.i instance_exists(argc=1)
conv.v.b
bf [83]

:[82]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.effects
pushi.e -9
push.v [stacktop]self.theStruct
pushi.e -9
push.v [stacktop]self.structName
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.structName
cmp.v.v EQ
b [84]

:[83]
push.e 0

:[84]
bf [86]

:[85]
pushloc.v local._i
ret.v

:[86]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [80]

:[87]
pushi.e -1
conv.i.v
ret.v

:[88]
exit.i

:[89]
push.i [function]gml_Script_anon@4061@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.effect_index
b [92]

> gml_Script_anon@4473@gml_Object_oEntitie_Create_0 (locals=0, argc=1)
:[90]
pushi.e -6
push.v arg.argument0
conv.v.i
push.v [array]self.effects
ret.v

:[91]
exit.i

:[92]
push.i [function]gml_Script_anon@4473@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_effect
b [108]

> gml_Script_anon@4887@gml_Object_oEntitie_Create_0 (locals=7, argc=4)
:[93]
call.i @@This@@(argc=0)
push.v builtin.is_alive
callv.v 0
conv.v.b
not.b
bt [95]

:[94]
call.i @@This@@(argc=0)
push.v builtin.is_in_fight
callv.v 0
conv.v.b
not.b
b [96]

:[95]
push.e 1

:[96]
bf [98]

:[97]
exit.i

:[98]
push.v arg.argument0
pop.v.v builtin.effectIncoming
push.v arg.argument1
pop.v.v builtin.effectStackIncoming
push.v builtin.effectIncoming
pushi.e -9
push.v [stacktop]self.condition
pop.v.v builtin.effectConditionIncoming
push.l 30
conv.l.v
push.v builtin.id
call.i gml_Script_execute_effect(argc=2)
popz.v
push.v builtin.effectIncoming
pushi.e -1
cmp.i.v NEQ
bf [100]

:[99]
push.v builtin.effectStackIncoming
pushi.e 0
cmp.i.v GT
b [101]

:[100]
push.e 0

:[101]
bf [107]

:[102]
push.v builtin.effectIncoming
call.i @@This@@(argc=0)
push.v builtin.effect_index
callv.v 1
pop.v.v local._exist
pushloc.v local._exist
pushi.e -1
cmp.i.v EQ
bf [106]

:[103]
push.v builtin.number
push.v builtin.effectIncoming
pushi.e -9
push.v [stacktop]self.sprite
push.v builtin.effectConditionIncoming
push.v builtin.effectIncoming
pushi.e -9
push.v [stacktop]self.chance
push.v builtin.effectIncoming
pushi.e -9
push.v [stacktop]self.amount
push.v builtin.effectIncoming
b [105]

> gml_Script____struct___348@anon@4887@gml_Object_oEntitie_Create_0 (locals=0, argc=0)
:[104]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.theStruct
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.amount
pushi.e 0
pop.v.i self.stack
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.chance
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.condition
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.sprite_index
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v self.number
exit.i

:[105]
push.i [function]gml_Script____struct___348@anon@4887@gml_Object_oEntitie_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___348
call.i @@NewGMLObject@@(argc=7)
pop.v.v local._struct
push.v builtin.effects
call.i array_length(argc=1)
pop.v.v local._lengthEffect
pushloc.v local._lengthEffect
pushi.e 6
mod.i.v
pushi.e 16
mul.i.v
pop.v.v local._x
pushloc.v local._lengthEffect
pushi.e 6
conv.i.d
div.d.v
call.i floor(argc=1)
pushi.e 16
mul.i.v
pushi.e -1
mul.i.v
pop.v.v local._y
pushloc.v local._struct
pushref.i 16
pushglb.v global.depthManager
push.s "effect"@4187
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
push.v builtin.yEffect
pushloc.v local._y
add.v.v
push.v builtin.xEffect
pushloc.v local._x
add.v.v
call.i instance_create_depth(argc=5)
pop.v.v local._newEffect
pushloc.v local._newEffect
push.v arg.argument3
push.v arg.argument2
push.v builtin.effectStackIncoming
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v
pushloc.v local._newEffect
push.v builtin.effects
call.i array_push(argc=2)
popz.v
b [107]

:[106]
pushi.e -6
pushloc.v local._exist
conv.v.i
push.v [array]self.effects
pop.v.v local._theEffect
pushloc.v local._theEffect
push.v arg.argument3
push.v arg.argument2
push.v builtin.effectStackIncoming
dup.v 3 8
dup.v 0
push.v stacktop.increase_props
callv.v 3
popz.v

:[107]
call.i @@This@@(argc=0)
push.v builtin.reset_fight_var
callv.v 0
popz.v
exit.i

:[108]
push.i [function]gml_Script_anon@4887@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.receive_effect
push.d 0.5
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.shakeTimer
push.d 0.25
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.damageTimer
pushi.e 0
conv.b.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.lastChoiceWasLeftmost
pushi.e 0
conv.b.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.lastChoiceWasRightmost
pushi.e 0
pop.v.i builtin.damageIncoming
pushi.e 0
pop.v.i builtin.damageMinimumIncoming
pushi.e 1
pop.v.i builtin.damagePartNbr
pushi.e -1
pop.v.i builtin.damageSprSource
pushi.e 0
pop.v.i builtin.healIncoming
pushi.e -1
pop.v.i builtin.healSprSource
pushbltn.v builtin.undefined
pop.v.v builtin.effectIncoming
pushi.e 0
pop.v.i builtin.effectStackIncoming
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.effectConditionIncoming
pushi.e 0
pop.v.i builtin.lastDirectDamage
pushi.e 0
pop.v.i builtin.lastDirectHeal
pushi.e 0
pop.v.i builtin.hpLostDuringTheMonster
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.fightText
pushi.e 0
pop.v.i builtin.fightTextPosition
b [110]

> gml_Script_anon@6921@gml_Object_oEntitie_Create_0 (locals=0, argc=0)
:[109]
pushi.e 0
pop.v.i builtin.damageIncoming
pushi.e 0
pop.v.i builtin.damageMinimumIncoming
pushi.e -1
pop.v.i builtin.damageSprSource
pushi.e -1
pop.v.i builtin.healSprSource
pushi.e 0
pop.v.i builtin.healIncoming
call.i @@This@@(argc=0)
push.v builtin.reset_gem_fight_var
callv.v 0
popz.v
pushbltn.v builtin.undefined
pop.v.v builtin.effectIncoming
pushi.e 0
pop.v.i builtin.effectStackIncoming
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.effectConditionIncoming
exit.i

:[110]
push.i [function]gml_Script_anon@6921@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset_fight_var
b [112]

> gml_Script_anon@7212@gml_Object_oEntitie_Create_0 (locals=0, argc=0)
:[111]
pushi.e 0
pop.v.i builtin.gemIncoming
exit.i

:[112]
push.i [function]gml_Script_anon@7212@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset_gem_fight_var
b [124]

> gml_Script_anon@7591@gml_Object_oEntitie_Create_0 (locals=0, argc=4)
:[113]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [115]

:[114]
pushi.e 1
pop.v.b builtin.argument2

:[115]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [117]

:[116]
pushi.e 1
pop.v.b builtin.argument3

:[117]
call.i @@This@@(argc=0)
push.v builtin.reset_fight_var
callv.v 0
popz.v
push.v arg.argument3
conv.v.b
bf [119]

:[118]
pushi.e 0
pop.v.i builtin.lastDirectDamage
pushi.e 0
pop.v.i builtin.lastDirectHeal
pushi.e 0
conv.b.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.lastChoiceWasLeftmost
pushi.e 0
conv.b.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.lastChoiceWasRightmost
pushi.e 100
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.hpPreviousTurn
pushi.e 0
pop.v.i builtin.gem
call.i @@This@@(argc=0)
push.v builtin.update_text_gem
callv.v 0
popz.v
pushi.e 0
pop.v.i builtin.gemSecureIncoming
push.i [function]gml_Script_counterStats
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v builtin.stats

:[119]
pushi.e 1
conv.b.v
push.v arg.argument0
push.v builtin.hp
sub.v.v
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushbltn.v builtin.undefined
push.v arg.argument1
push.v builtin.hpMax
sub.v.v
call.i @@This@@(argc=0)
push.v builtin.update_hp_max
callv.v 6
popz.v
push.v builtin.spriteIdle
pop.v.v builtin.sprite_index
push.v builtin.spriteProfileDefault
pop.v.v builtin.spriteProfile
push.v builtin.spriteProfileBoxGemDefault
pop.v.v builtin.spriteProfileBoxGem
pushi.e 1
pop.v.b builtin.isInFight
pushi.e 1
pop.v.b builtin.isAlive
pushi.e 0
pop.v.b builtin.isDeadThisTurn
push.l 1
pop.v.l builtin.stateNext
push.v builtin.token
pushi.e -4
cmp.i.v NEQ
bf [121]

:[120]
push.v builtin.token
push.l 0
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.initialize
callv.v 1
popz.v

:[121]
push.v arg.argument2
conv.v.b
bf [123]

:[122]
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.s "global._resurrection"@9329
conv.s.v
call.i @@This@@(argc=0)
push.v builtin.create_float_text
callv.v 3
popz.v

:[123]
exit.i

:[124]
push.i [function]gml_Script_anon@7591@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.rezurrection
b [141]

> gml_Script_anon@8821@gml_Object_oEntitie_Create_0 (locals=3, argc=3)
:[125]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [127]

:[126]
push.s ""@61
pop.v.s builtin.argument1

:[127]
push.v arg.argument1
call.i typeof(argc=1)
push.s "ref"@2460
cmp.s.v EQ
bf [129]

:[128]
push.v arg.argument1
call.i sprite_get_name(argc=1)
pop.v.v arg.argument1

:[129]
push.v arg.argument0
pop.v.v local._labelModified
push.v arg.argument2
push.l 1
cmp.l.v EQ
bt [132]

:[130]
push.v arg.argument2
push.l 2
cmp.l.v EQ
bt [132]

:[131]
push.v arg.argument2
push.l 3
cmp.l.v EQ
b [133]

:[132]
push.e 1

:[133]
bf [138]

:[134]
pushglb.v global.dayNightCycle
pushi.e -9
push.v [stacktop]self.currentEvent
push.l 4
cmp.l.v EQ
bf [138]

:[135]
push.s ""@61
pop.v.s local._labelModified
pushi.e 0
pop.v.i local._labelLength

:[136]
pushloc.v local._labelLength
push.v arg.argument0
call.i string_length(argc=1)
cmp.v.v LT
bf [138]

:[137]
push.v local._labelModified
push.s "?"@3894
add.s.v
pop.v.v local._labelModified
push.v local._labelLength
push.e 1
add.i.v
pop.v.v local._labelLength
b [136]

:[138]
push.v builtin.id
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
pushloc.v local._labelModified
b [140]

> gml_Script____struct___349@anon@8821@gml_Object_oEntitie_Create_0 (locals=0, argc=0)
:[139]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.label
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.labelOriginal
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.sprSource
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.category
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.owner
exit.i

:[140]
push.i [function]gml_Script____struct___349@anon@8821@gml_Object_oEntitie_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___349
call.i @@NewGMLObject@@(argc=6)
pushref.i 23
push.v builtin.depth
pushi.e 1
sub.i.v
push.v builtin.yUi
pushi.e 24
sub.i.v
push.v builtin.xUi
pushi.e 32
add.i.v
call.i instance_create_depth(argc=5)
pop.v.v local._floatText
exit.i

:[141]
push.i [function]gml_Script_anon@8821@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.create_float_text
b [181]

> gml_Script_anon@10158@gml_Object_oEntitie_Create_0 (locals=4, argc=4)
:[142]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [144]

:[143]
pushi.e 1
pop.v.i builtin.argument0

:[144]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [146]

:[145]
pushi.e -1
pop.v.i builtin.argument2

:[146]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [148]

:[147]
pushi.e 0
pop.v.b builtin.argument3

:[148]
push.l 15
conv.l.v
push.v builtin.id
call.i gml_Script_execute_effect(argc=2)
popz.v
push.v builtin.damagePartNbr
push.v arg.argument1
call.i gml_Script_g_distribute(argc=2)
pop.v.v local._damagePartAmount
pushi.e 0
pop.v.i local._damagePart

:[149]
pushloc.v local._damagePart
push.v builtin.damagePartNbr
cmp.v.v LT
bf [180]

:[150]
call.i @@This@@(argc=0)
push.v builtin.is_alive
callv.v 0
conv.v.b
not.b
bt [153]

:[151]
push.v builtin.hp
pushi.e 0
cmp.i.v LTE
bt [153]

:[152]
pushi.e -7
pushloc.v local._damagePart
conv.v.i
push.v [array]self._damagePartAmount
pushi.e 0
cmp.i.v EQ
b [154]

:[153]
push.e 1

:[154]
bf [156]

:[155]
b [179]

:[156]
pushi.e -7
pushloc.v local._damagePart
conv.v.i
push.v [array]self._damagePartAmount
pop.v.v builtin.damageIncoming
push.v arg.argument2
pushi.e -1
cmp.i.v NEQ
bf [158]

:[157]
push.v arg.argument2
call.i sprite_get_name(argc=1)
b [159]

:[158]
push.s ""@61
conv.s.v

:[159]
pop.v.v builtin.damageSprSource
push.v arg.argument3
conv.v.b
not.b
bf [169]

:[160]
push.v arg.argument0
conv.v.b
bf [162]

:[161]
push.l 12
conv.l.v
push.v builtin.id
call.i gml_Script_execute_effect(argc=2)
popz.v
push.l 13
conv.l.v
push.v builtin.id
call.i gml_Script_execute_effect(argc=2)
popz.v
b [163]

:[162]
push.l 14
conv.l.v
push.v builtin.id
call.i gml_Script_execute_effect(argc=2)
popz.v

:[163]
push.v builtin.damageIncoming
pushi.e 0
cmp.i.v GT
bt [165]

:[164]
push.v builtin.damageMinimumIncoming
pushi.e 0
cmp.i.v GT
b [166]

:[165]
push.e 1

:[166]
bf [168]

:[167]
push.v builtin.damageMinimumIncoming
push.v builtin.damageIncoming
call.i max(argc=2)
pop.v.v builtin.damageIncoming
push.l 17
conv.l.v
push.v builtin.id
call.i gml_Script_execute_effect(argc=2)
popz.v

:[168]
push.v builtin.damageIncoming
call.i round(argc=1)
pop.v.v builtin.damageIncoming

:[169]
push.v builtin.damageIncoming
pushi.e 0
cmp.i.v GT
bf [178]

:[170]
push.v arg.argument0
conv.v.b
bf [172]

:[171]
push.v builtin.damageIncoming
pop.v.v builtin.lastDirectDamage
push.v builtin.hpLostDuringTheMonster
push.v builtin.damageIncoming
add.v.v
pop.v.v builtin.hpLostDuringTheMonster
push.l 18
conv.l.v
push.v builtin.id
call.i gml_Script_execute_effect(argc=2)
popz.v
b [173]

:[172]
push.l 19
conv.l.v
push.v builtin.id
call.i gml_Script_execute_effect(argc=2)
popz.v

:[173]
push.l 20
conv.l.v
push.v builtin.id
call.i gml_Script_execute_effect(argc=2)
popz.v
pushi.e 1
pop.v.b local._applyDamageAbility
pushloc.v local._applyDamageAbility
conv.v.b
bf [178]

:[174]
push.l 1
conv.l.v
push.v builtin.damageSprSource
push.v builtin.damageIncoming
push.s "{0}"@8789
conv.s.v
call.i @@string@@(argc=2)
call.i @@This@@(argc=0)
push.v builtin.create_float_text
callv.v 3
popz.v
push.l 1
conv.l.v
push.v builtin.damageSprSource
push.v builtin.damageIncoming
call.i @@This@@(argc=0)
push.v builtin.apply_damage
callv.v 3
popz.v
push.v arg.argument0
conv.v.b
bf [178]

:[175]
pushglb.v global.shader
dup.v 0 8
dup.v 0
push.v stacktop.update_shape
callv.v 0
popz.v
b [177]

> gml_Script____struct___350@anon@10158@gml_Object_oEntitie_Create_0 (locals=0, argc=0)
:[176]
call.i @@SetStatic@@(argc=0)
pushref.i 16777994
pop.v.v self.sprite_index
exit.i

:[177]
push.i [function]gml_Script____struct___350@anon@10158@gml_Object_oEntitie_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___350
call.i @@NewGMLObject@@(argc=1)
pushref.i 15
pushglb.v global.depthManager
push.s "ui"@5003
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
push.v builtin.yUi
pushi.e 24
add.i.v
push.v builtin.xUi
pushi.e 33
add.i.v
call.i instance_create_depth(argc=5)
pop.v.v local._vfxHit
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
pushloc.v local._vfxHit
pushi.e -9
pop.v.v [stacktop]self.image_xscale
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
pushloc.v local._vfxHit
pushi.e -9
pop.v.v [stacktop]self.image_yscale

:[178]
call.i @@This@@(argc=0)
push.v builtin.reset_fight_var
callv.v 0
popz.v

:[179]
push.v local._damagePart
push.e 1
add.i.v
pop.v.v local._damagePart
b [149]

:[180]
pushi.e 1
pop.v.i builtin.damagePartNbr
exit.i

:[181]
push.i [function]gml_Script_anon@10158@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.receive_damage
b [185]

> gml_Script_anon@13172@gml_Object_oEntitie_Create_0 (locals=0, argc=3)
:[182]
push.v builtin.hp
push.v arg.argument0
sub.v.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pop.v.v builtin.hp
push.d 1.1
conv.d.v
push.d 0.9
conv.d.v
call.i random_range(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
pushref.i 33554489
pushref.i 33554488
pushref.i 33554487
call.i choose(argc=3)
call.i audio_play_sound(argc=6)
popz.v
push.v global.chromaStrenght
pushi.e 30
conv.i.v
pushi.e 10
conv.i.v
pushi.e 100
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument0
call.i gml_Script_map_value(argc=5)
pushi.e 25
conv.i.v
call.i min(argc=2)
add.v.v
pop.v.v global.chromaStrenght
pushglb.v global.camera
pushi.e -9
push.v [stacktop]self.shakeTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushglb.v global.camera
pushi.e -9
push.v [stacktop]self.shakeTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushglb.v global.shake
push.l 2
conv.l.v
pushglb.v global.camera
pushi.e -9
push.v [stacktop]self.id
dup.v 2 8
dup.v 0
push.v stacktop.add_element
callv.v 2
popz.v
push.v builtin.token
pushi.e -9
push.v [stacktop]self.shakeTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.token
pushi.e -9
push.v [stacktop]self.shakeTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
push.v builtin.shakeTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.shakeTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
push.v builtin.hp
pushi.e 0
cmp.i.v EQ
bf [184]

:[183]
push.d 1.1
conv.d.v
push.d 0.9
conv.d.v
call.i random_range(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
pushref.i 33554458
call.i audio_play_sound(argc=6)
popz.v

:[184]
push.l 0
pop.v.l builtin.stateNext
call.i @@This@@(argc=0)
push.v builtin.update_hp_txt
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.check_effect_activation
callv.v 0
popz.v
exit.i

:[185]
push.i [function]gml_Script_anon@13172@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.apply_damage
b [187]

> gml_Script_anon@14054@gml_Object_oEntitie_Create_0 (locals=0, argc=0)
:[186]
push.l 0
conv.l.v
pushbltn.v builtin.undefined
push.s "global._miss"@9349
conv.s.v
call.i @@This@@(argc=0)
push.v builtin.create_float_text
callv.v 3
popz.v
push.d 1.1
conv.d.v
push.d 0.9
conv.d.v
call.i random_range(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 0
conv.i.v
pushi.e 10
conv.i.v
pushref.i 33554494
call.i audio_play_sound(argc=6)
popz.v
exit.i

:[187]
push.i [function]gml_Script_anon@14054@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.miss
b [210]

> gml_Script_anon@14613@gml_Object_oEntitie_Create_0 (locals=0, argc=3)
:[188]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [190]

:[189]
pushi.e 1
pop.v.i builtin.argument0

:[190]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [192]

:[191]
pushi.e -1
pop.v.i builtin.argument2

:[192]
push.v arg.argument1
pop.v.v builtin.healIncoming
push.v arg.argument2
pushi.e -1
cmp.i.v NEQ
bf [194]

:[193]
push.v arg.argument2
call.i sprite_get_name(argc=1)
b [195]

:[194]
push.s ""@61
conv.s.v

:[195]
pop.v.v builtin.healSprSource
push.v builtin.healIncoming
pushi.e 0
cmp.i.v GT
bf [197]

:[196]
push.l 21
conv.l.v
push.v builtin.id
call.i gml_Script_execute_effect(argc=2)
popz.v

:[197]
push.v arg.argument0
conv.v.b
bf [199]

:[198]
push.l 23
conv.l.v
push.v builtin.id
call.i gml_Script_execute_effect(argc=2)
popz.v
b [200]

:[199]
push.l 22
conv.l.v
push.v builtin.id
call.i gml_Script_execute_effect(argc=2)
popz.v

:[200]
push.v builtin.healIncoming
pushi.e 0
cmp.i.v GT
bf [202]

:[201]
push.l 24
conv.l.v
push.v builtin.id
call.i gml_Script_execute_effect(argc=2)
popz.v

:[202]
push.v builtin.healIncoming
call.i round(argc=1)
pop.v.v builtin.healIncoming
push.v builtin.healIncoming
pushi.e 0
cmp.i.v GT
bf [204]

:[203]
push.v builtin.hp
pushi.e 0
cmp.i.v GT
b [205]

:[204]
push.e 0

:[205]
bf [209]

:[206]
push.v arg.argument0
conv.v.b
bf [208]

:[207]
push.v builtin.healIncoming
pop.v.v builtin.lastDirectHeal

:[208]
push.l 25
conv.l.v
push.v builtin.id
call.i gml_Script_execute_effect(argc=2)
popz.v
push.v builtin.healSprSource
push.v builtin.healIncoming
call.i @@This@@(argc=0)
push.v builtin.apply_heal
callv.v 2
popz.v

:[209]
call.i @@This@@(argc=0)
push.v builtin.reset_fight_var
callv.v 0
popz.v
exit.i

:[210]
push.i [function]gml_Script_anon@14613@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.receive_heal
b [214]

> gml_Script_anon@15597@gml_Object_oEntitie_Create_0 (locals=0, argc=2)
:[211]
call.i @@This@@(argc=0)
push.v builtin.is_alive
callv.v 0
conv.v.b
not.b
bf [213]

:[212]
pushi.e 1
pop.v.b builtin.isAlive
push.l 1
pop.v.l builtin.stateNext

:[213]
push.l 2
conv.l.v
push.v arg.argument1
push.v arg.argument0
push.s "{0}"@8789
conv.s.v
call.i @@string@@(argc=2)
call.i @@This@@(argc=0)
push.v builtin.create_float_text
callv.v 3
popz.v
push.v builtin.hpMax
push.v builtin.hp
push.v arg.argument0
add.v.v
call.i min(argc=2)
pop.v.v builtin.hp
call.i @@This@@(argc=0)
push.v builtin.update_hp_txt
callv.v 0
popz.v
call.i @@This@@(argc=0)
push.v builtin.check_effect_activation
callv.v 0
popz.v
exit.i

:[214]
push.i [function]gml_Script_anon@15597@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.apply_heal
pushi.e 1
pop.v.b builtin.isAlive
b [217]

> gml_Script_anon@16006@gml_Object_oEntitie_Create_0 (locals=0, argc=0)
:[215]
push.v builtin.isAlive
ret.v

:[216]
exit.i

:[217]
push.i [function]gml_Script_anon@16006@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_alive
pushi.e 0
pop.v.b builtin.isDeadThisTurn
b [220]

> gml_Script_anon@16259@gml_Object_oEntitie_Create_0 (locals=0, argc=0)
:[218]
push.v builtin.isDeadThisTurn
ret.v

:[219]
exit.i

:[220]
push.i [function]gml_Script_anon@16259@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_dead_this_turn
pushi.e 1
pop.v.b builtin.isInFight
b [223]

> gml_Script_anon@16401@gml_Object_oEntitie_Create_0 (locals=0, argc=0)
:[221]
push.v builtin.isInFight
ret.v

:[222]
exit.i

:[223]
push.i [function]gml_Script_anon@16401@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_in_fight
push.v builtin.spriteName
push.s "sprIllu{0}"@9357
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pushi.e -1
cmp.i.v EQ
bf [225]

:[224]
pushbltn.v builtin.undefined
b [226]

:[225]
push.v builtin.spriteName
push.s "sprIllu{0}"@9357
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)

:[226]
pop.v.v builtin.spriteIllu
push.v builtin.spriteName
push.s "spr{0}Head"@9359
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pushi.e -1
cmp.i.v EQ
bf [228]

:[227]
pushbltn.v builtin.undefined
b [229]

:[228]
push.v builtin.spriteName
push.s "spr{0}Head"@9359
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)

:[229]
pop.v.v builtin.spriteHead
push.v builtin.spriteName
push.s "spr{0}HeadSmall"@9361
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pushi.e -1
cmp.i.v EQ
bf [231]

:[230]
pushbltn.v builtin.undefined
b [232]

:[231]
push.v builtin.spriteName
push.s "spr{0}HeadSmall"@9361
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)

:[232]
pop.v.v builtin.spriteHeadSmall
push.v builtin.spriteName
push.s "spr{0}"@9289
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pop.v.v builtin.spriteIdle
push.v builtin.spriteName
push.s "spr{0}Hit"@9363
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pushi.e -1
cmp.i.v EQ
bf [234]

:[233]
push.v builtin.spriteIdle
b [235]

:[234]
push.v builtin.spriteName
push.s "spr{0}Hit"@9363
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)

:[235]
pop.v.v builtin.spriteHit
push.v builtin.number
pushi.e 1
add.i.v
push.s "sprDeadP{0}"@9365
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pushi.e -1
cmp.i.v EQ
bf [237]

:[236]
push.v builtin.spriteIdle
b [238]

:[237]
push.v builtin.number
pushi.e 1
add.i.v
push.s "sprDeadP{0}"@9365
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)

:[238]
pop.v.v builtin.spriteDead
push.v builtin.spriteIdle
pop.v.v builtin.sprite_index
pushi.e 0
pop.v.i builtin.spriteOffsetX
pushi.e 0
pop.v.i builtin.spriteOffsetY
push.v builtin.sprite_index
call.i sprite_get_width(argc=1)
pop.v.v builtin.spriteW
push.v builtin.sprite_index
call.i sprite_get_height(argc=1)
pop.v.v builtin.spriteH
pushref.i 16777779
pop.v.v builtin.spriteProfile
pushref.i 16777779
pop.v.v builtin.spriteProfileDefault
pushref.i 16777780
pop.v.v builtin.spriteProfileDead
pushref.i 16777781
pop.v.v builtin.spriteProfileDeadTop
pushref.i 16777783
pop.v.v builtin.spriteProfileMushroom
pushref.i 16777782
pop.v.v builtin.spriteProfileLeaving
pushref.i 16777775
pop.v.v builtin.spriteProfileBoxGemDefault
pushref.i 16777777
pop.v.v builtin.spriteProfileBoxGemLeft
pushref.i 16777776
pop.v.v builtin.spriteProfileBoxGemDead
pushref.i 16777778
pop.v.v builtin.spriteProfileBoxGemMushroom
push.v builtin.spriteProfileBoxGemDefault
pop.v.v builtin.spriteProfileBoxGem
pushref.i 16777785
pop.v.v builtin.spriteProfileHp
pushref.i 16777414
pop.v.v builtin.spriteProfileGem
pushref.i 16777958
pop.v.v builtin.spriteProfileHpHiddenDefault
push.v builtin.spriteProfileHpHiddenDefault
pop.v.v builtin.spriteProfileHpHidden
pushref.i 16777959
pop.v.v builtin.spriteProfileHpHiddenMushroom
b [255]

> gml_Script_anon@18145@gml_Object_oEntitie_Create_0 (locals=0, argc=0)
:[239]
push.v builtin.spriteName
push.s "sprIllu{0}"@9357
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pushi.e -1
cmp.i.v EQ
bf [241]

:[240]
pushbltn.v builtin.undefined
b [242]

:[241]
push.v builtin.spriteName
push.s "sprIllu{0}"@9357
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)

:[242]
pop.v.v builtin.spriteIllu
push.v builtin.spriteName
push.s "spr{0}Head"@9359
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pushi.e -1
cmp.i.v EQ
bf [244]

:[243]
pushbltn.v builtin.undefined
b [245]

:[244]
push.v builtin.spriteName
push.s "spr{0}Head"@9359
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)

:[245]
pop.v.v builtin.spriteHead
push.v builtin.spriteName
push.s "spr{0}HeadSmall"@9361
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pushi.e -1
cmp.i.v EQ
bf [247]

:[246]
pushbltn.v builtin.undefined
b [248]

:[247]
push.v builtin.spriteName
push.s "spr{0}HeadSmall"@9361
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)

:[248]
pop.v.v builtin.spriteHeadSmall
push.v builtin.spriteName
push.s "spr{0}"@9289
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pop.v.v builtin.spriteIdle
push.v builtin.spriteName
push.s "spr{0}Hit"@9363
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pushi.e -1
cmp.i.v EQ
bf [250]

:[249]
push.v builtin.spriteIdle
b [251]

:[250]
push.v builtin.spriteName
push.s "spr{0}Hit"@9363
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)

:[251]
pop.v.v builtin.spriteHit
push.v builtin.number
pushi.e 1
add.i.v
push.s "sprDeadP{0}"@9365
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pushi.e -1
cmp.i.v EQ
bf [253]

:[252]
push.v builtin.spriteIdle
b [254]

:[253]
push.v builtin.number
pushi.e 1
add.i.v
push.s "sprDeadP{0}"@9365
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)

:[254]
pop.v.v builtin.spriteDead
push.v builtin.spriteIdle
pop.v.v builtin.sprite_index
pushi.e 0
pop.v.i builtin.spriteOffsetX
pushi.e 0
pop.v.i builtin.spriteOffsetY
push.v builtin.sprite_index
call.i sprite_get_width(argc=1)
pop.v.v builtin.spriteW
push.v builtin.sprite_index
call.i sprite_get_height(argc=1)
pop.v.v builtin.spriteH
pushref.i 16777779
pop.v.v builtin.spriteProfile
pushref.i 16777779
pop.v.v builtin.spriteProfileDefault
pushref.i 16777780
pop.v.v builtin.spriteProfileDead
pushref.i 16777781
pop.v.v builtin.spriteProfileDeadTop
pushref.i 16777783
pop.v.v builtin.spriteProfileMushroom
pushref.i 16777782
pop.v.v builtin.spriteProfileLeaving
pushref.i 16777775
pop.v.v builtin.spriteProfileBoxGemDefault
pushref.i 16777777
pop.v.v builtin.spriteProfileBoxGemLeft
pushref.i 16777776
pop.v.v builtin.spriteProfileBoxGemDead
pushref.i 16777778
pop.v.v builtin.spriteProfileBoxGemMushroom
push.v builtin.spriteProfileBoxGemDefault
pop.v.v builtin.spriteProfileBoxGem
pushref.i 16777785
pop.v.v builtin.spriteProfileHp
pushref.i 16777414
pop.v.v builtin.spriteProfileGem
pushref.i 16777958
pop.v.v builtin.spriteProfileHpHiddenDefault
push.v builtin.spriteProfileHpHiddenDefault
pop.v.v builtin.spriteProfileHpHidden
pushref.i 16777959
pop.v.v builtin.spriteProfileHpHiddenMushroom
exit.i

:[255]
push.i [function]gml_Script_anon@18145@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_sprite
push.v builtin.hpMax
pop.v.v builtin.hpMaxInit
push.v builtin.hpMaxInit
pop.v.v builtin.hp
push.v builtin.hp
pop.v.v builtin.hpPrev
pushref.i 16777785
call.i sprite_get_height(argc=1)
pop.v.v builtin.hpProfileH
pushref.i 16777785
call.i sprite_get_width(argc=1)
pop.v.v builtin.hpProfileWMax
push.v builtin.hpProfileWMax
pop.v.v builtin.hpProfileW
push.v builtin.hpProfileWMax
pop.v.v builtin.hpProfileWTo
push.d 0.25
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.timerHp
push.v builtin.id
push.s "{0}hp"@9381
conv.s.v
call.i @@string@@(argc=2)
push.v builtin.hp
push.s "{0}"@8789
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_scribble(argc=2)
dup.v 0
pushi.e -9
push.v [stacktop]self.scale
pushglb.v global.fontScaleTitle
dup.e 2 8
callv.v 1
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
push.s "ftNbrBig"@5422
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
pop.v.v builtin.txtHp
push.v builtin.id
push.s "{0}hpLabel"@9383
conv.s.v
call.i @@string@@(argc=2)
push.v builtin.hpMax
push.s "/{0}"@9384
conv.s.v
call.i @@string@@(argc=2)
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
pop.v.v builtin.txtHpLabel
b [280]

> gml_Script_anon@20902@gml_Object_oEntitie_Create_0 (locals=0, argc=6)
:[256]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [258]

:[257]
push.s ""@61
pop.v.s builtin.argument1

:[258]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [260]

:[259]
pushi.e 1
pop.v.b builtin.argument2

:[260]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [262]

:[261]
pushi.e 0
pop.v.b builtin.argument3

:[262]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [264]

:[263]
pushi.e 0
pop.v.i builtin.argument4

:[264]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [266]

:[265]
pushi.e 0
pop.v.b builtin.argument5

:[266]
push.v builtin.token
pushi.e -9
push.v [stacktop]self.theType
push.l 11
cmp.l.v EQ
bf [268]

:[267]
push.v arg.argument5
conv.v.b
not.b
b [269]

:[268]
push.e 0

:[269]
bf [271]

:[270]
exit.i

:[271]
push.v arg.argument1
call.i typeof(argc=1)
push.s "ref"@2460
cmp.s.v EQ
bf [273]

:[272]
push.v arg.argument1
call.i sprite_get_name(argc=1)
pop.v.v arg.argument1

:[273]
push.v builtin.hpMax
push.v arg.argument0
add.v.v
pushi.e 1
conv.i.v
call.i max(argc=2)
pop.v.v builtin.hpMax
push.v arg.argument2
conv.v.b
bf [275]

:[274]
push.l 0
conv.l.v
push.v arg.argument1
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.create_float_text
callv.v 3
popz.v

:[275]
push.v arg.argument3
conv.v.b
bf [277]

:[276]
pushi.e 0
conv.b.v
push.s ""@61
conv.s.v
push.v arg.argument4
call.i @@This@@(argc=0)
push.v builtin.update_hp_soft
callv.v 3
popz.v

:[277]
push.v builtin.hp
push.v builtin.hpMax
cmp.v.v GT
bf [279]

:[278]
pushi.e 0
conv.b.v
push.s ""@61
conv.s.v
push.v builtin.hpMax
push.v builtin.hp
sub.v.v
call.i @@This@@(argc=0)
push.v builtin.update_hp_soft
callv.v 3
popz.v

:[279]
call.i @@This@@(argc=0)
push.v builtin.update_hp_txt
callv.v 0
popz.v
exit.i

:[280]
push.i [function]gml_Script_anon@20902@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_hp_max
b [290]

> gml_Script_anon@22225@gml_Object_oEntitie_Create_0 (locals=0, argc=3)
:[281]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [283]

:[282]
push.s ""@61
pop.v.s builtin.argument1

:[283]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [285]

:[284]
pushi.e 1
pop.v.b builtin.argument2

:[285]
push.v arg.argument1
call.i typeof(argc=1)
push.s "ref"@2460
cmp.s.v EQ
bf [287]

:[286]
push.v arg.argument1
call.i sprite_get_name(argc=1)
pop.v.v arg.argument1

:[287]
push.v builtin.hp
push.v arg.argument0
add.v.v
pop.v.v builtin.hp
push.v builtin.hpMax
pushi.e 0
conv.i.v
push.v builtin.hp
call.i clamp(argc=3)
pop.v.v builtin.hp
call.i @@This@@(argc=0)
push.v builtin.update_hp_txt
callv.v 0
popz.v
push.v arg.argument2
conv.v.b
bf [289]

:[288]
push.l 0
conv.l.v
push.v arg.argument1
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.create_float_text
callv.v 3
popz.v

:[289]
exit.i

:[290]
push.i [function]gml_Script_anon@22225@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_hp_soft
b [306]

> gml_Script_anon@22612@gml_Object_oEntitie_Create_0 (locals=1, argc=0)
:[291]
pushglb.v global.dayNightCycle
pushi.e -9
push.v [stacktop]self.currentEvent
push.l 4
cmp.l.v EQ
bf [300]

:[292]
push.s "???"@6459
pop.v.s local._textHp
push.v builtin.hp
pushi.e 10
cmp.i.v GTE
bf [294]

:[293]
push.v builtin.hp
pushi.e 99
cmp.i.v LTE
b [295]

:[294]
push.e 0

:[295]
bf [297]

:[296]
push.s "??"@9389
pop.v.s local._textHp
b [299]

:[297]
push.v builtin.hp
pushi.e 10
cmp.i.v LT
bf [299]

:[298]
push.s "?"@3894
pop.v.s local._textHp

:[299]
b [301]

:[300]
push.v builtin.hp
pop.v.v local._textHp

:[301]
push.v builtin.txtHpLabel
call.i gml_Script_scribble_is_text_element(argc=1)
conv.v.b
bf [303]

:[302]
push.v builtin.txtHpLabel
dup.v 0 8
dup.v 0
push.v stacktop.flush
callv.v 0
popz.v

:[303]
push.v builtin.id
push.s "{0}hpLabel"@9383
conv.s.v
call.i @@string@@(argc=2)
push.v builtin.hpMax
push.s "/{0}"@9384
conv.s.v
call.i @@string@@(argc=2)
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
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.txtHpLabel
push.v builtin.txtHp
call.i gml_Script_scribble_is_text_element(argc=1)
conv.v.b
bf [305]

:[304]
push.v builtin.txtHp
dup.v 0 8
dup.v 0
push.v stacktop.flush
callv.v 0
popz.v

:[305]
push.v builtin.id
push.s "{0}hp"@9381
conv.s.v
call.i @@string@@(argc=2)
pushloc.v local._textHp
push.s "{0}"@8789
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_scribble(argc=2)
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
push.s "ftNbrBig"@5422
conv.s.v
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.scale
pushglb.v global.fontScaleTitle
dup.e 2 8
callv.v 1
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.txtHp
exit.i

:[306]
push.i [function]gml_Script_anon@22612@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_hp_txt
pushi.e 100
conv.i.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.hpPreviousTurn
b [308]

> gml_Script_anon@23512@gml_Object_oEntitie_Create_0 (locals=0, argc=0)
:[307]
push.v builtin.hp
pushi.e -6
pushglb.v global.fightManager
dup.v 0 8
dup.v 0
push.v stacktop.get_fight_counter
callv.v 0
conv.v.i
pop.v.v [array]self.hpPreviousTurn
exit.i

:[308]
push.i [function]gml_Script_anon@23512@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.save_hp_previous_turn
b [311]

> gml_Script_anon@23845@gml_Object_oEntitie_Create_0 (locals=1, argc=1)
:[309]
push.v arg.argument0
pushi.e 1
sub.i.v
pop.v.v arg.argument0
push.v builtin.hpPreviousTurn
call.i array_length(argc=1)
pop.v.v local._lengthTurnMax
pushloc.v local._lengthTurnMax
pushi.e 0
conv.i.v
push.v arg.argument0
call.i clamp(argc=3)
pop.v.v arg.argument0
pushi.e -6
push.v arg.argument0
conv.v.i
push.v [array]self.hpPreviousTurn
ret.v

:[310]
exit.i

:[311]
push.i [function]gml_Script_anon@23845@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_hp_previous_turn
push.v builtin.x
pop.v.v builtin.xInit
push.v builtin.y
pop.v.v builtin.yInit
push.v builtin.x
pop.v.v builtin.xUi
push.v builtin.y
pop.v.v builtin.yUi
push.v builtin.x
pushi.e 64
add.i.v
pop.v.v builtin.xEffect
push.v builtin.y
pushi.e 14
add.i.v
pop.v.v builtin.yEffect
pushbltn.v builtin.undefined
pop.v.v builtin.currentChatbox
pushi.e 0
pop.v.i builtin.gemSecured
pushi.e 0
pop.v.i builtin.gemSecureIncoming
push.v builtin.id
push.s "{0}gemSecuredPlayer"@9395
conv.s.v
call.i @@string@@(argc=2)
push.v builtin.gemSecured
push.s "{0}"@8789
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_scribble(argc=2)
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
push.s "ftNbrSmall"@5423
conv.s.v
dup.e 2 8
callv.v 1
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.gemSecuredTxt
b [313]

> gml_Script_anon@24554@gml_Object_oEntitie_Create_0 (locals=0, argc=0)
:[312]
push.v builtin.id
push.s "{0}gemSecuredPlayer"@9395
conv.s.v
call.i @@string@@(argc=2)
push.v builtin.gemSecured
push.s "{0}"@8789
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_scribble(argc=2)
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
push.s "ftNbrSmall"@5423
conv.s.v
dup.e 2 8
callv.v 1
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.gemSecuredTxt
exit.i

:[313]
push.i [function]gml_Script_anon@24554@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_text_gem_secured
b [316]

> gml_Script_anon@24729@gml_Object_oEntitie_Create_0 (locals=0, argc=0)
:[314]
push.v builtin.gemSecured
ret.v

:[315]
exit.i

:[316]
push.i [function]gml_Script_anon@24729@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_gem_secured
pushi.e 0
pop.v.i builtin.gem
pushi.e 0
pop.v.i builtin.gemIncoming
push.v builtin.id
push.s "{0}gem"@9401
conv.s.v
call.i @@string@@(argc=2)
push.v builtin.gem
call.i gml_Script_scribble(argc=2)
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
push.s "ftNbrBig"@5422
conv.s.v
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.scale
pushglb.v global.fontScaleTitle
dup.e 2 8
callv.v 1
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.gemTxt
pushglb.v global.particlesSys
call.i part_emitter_create(argc=1)
pop.v.v builtin.peGem
push.l 6
conv.l.v
push.v builtin.peGem
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
pushi.e 9
pop.v.i local._size
push.v builtin.xUi
pushi.e 45
add.i.v
pop.v.v local._xp
push.v builtin.yUi
pushi.e 58
add.i.v
pop.v.v local._yp
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
pushloc.v local._yp
pushloc.v local._size
add.v.v
pushloc.v local._yp
pushloc.v local._size
sub.v.v
pushloc.v local._xp
pushloc.v local._size
add.v.v
pushloc.v local._xp
pushloc.v local._size
sub.v.v
push.v builtin.peGem
pushglb.v global.particlesSys
call.i part_emitter_region(argc=8)
popz.v
b [318]

> gml_Script_anon@25371@gml_Object_oEntitie_Create_0 (locals=0, argc=0)
:[317]
push.v builtin.gemSecured
pushi.e 1
add.i.v
pop.v.v builtin.gemSecured
call.i @@This@@(argc=0)
push.v builtin.update_text_gem_secured
callv.v 0
popz.v
pushi.e 0
conv.b.v
pushi.e 10
conv.i.v
pushref.i 33554478
pushref.i 33554477
pushref.i 33554476
call.i choose(argc=3)
call.i audio_play_sound(argc=3)
popz.v
exit.i

:[318]
push.i [function]gml_Script_anon@25371@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.add_gem_secure_callback
b [320]

> gml_Script_anon@25708@gml_Object_oEntitie_Create_0 (locals=0, argc=0)
:[319]
push.v builtin.gem
pushi.e 1
add.i.v
pop.v.v builtin.gem
call.i @@This@@(argc=0)
push.v builtin.update_text_gem
callv.v 0
popz.v
pushi.e 8
conv.i.v
pushglb.v global.particles
pushi.e -9
push.v [stacktop]self.ptGem
push.v builtin.peGem
pushglb.v global.particlesSys
call.i part_emitter_burst(argc=4)
popz.v
pushi.e 0
conv.b.v
pushi.e 10
conv.i.v
pushref.i 33554478
pushref.i 33554477
pushref.i 33554476
call.i choose(argc=3)
call.i audio_play_sound(argc=3)
popz.v
call.i @@This@@(argc=0)
push.v builtin.check_effect_activation
callv.v 0
popz.v
exit.i

:[320]
push.i [function]gml_Script_anon@25708@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.add_gem_callback
b [322]

> gml_Script_anon@26005@gml_Object_oEntitie_Create_0 (locals=0, argc=0)
:[321]
push.v builtin.gem
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
call.i max(argc=2)
pop.v.v builtin.gem
call.i @@This@@(argc=0)
push.v builtin.update_text_gem
callv.v 0
popz.v
exit.i

:[322]
push.i [function]gml_Script_anon@26005@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.delete_gem_callback
b [326]

> gml_Script_anon@26092@gml_Object_oEntitie_Create_0 (locals=0, argc=0)
:[323]
push.v builtin.gemTxt
call.i gml_Script_scribble_is_text_element(argc=1)
conv.v.b
bf [325]

:[324]
push.v builtin.gemTxt
dup.v 0 8
dup.v 0
push.v stacktop.flush
callv.v 0
popz.v

:[325]
push.v builtin.id
push.s "{0}gem"@9401
conv.s.v
call.i @@string@@(argc=2)
push.v builtin.gem
call.i gml_Script_scribble(argc=2)
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
push.s "ftNbrBig"@5422
conv.s.v
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.scale
pushglb.v global.fontScaleTitle
dup.e 2 8
callv.v 1
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 1
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.gemTxt
exit.i

:[326]
push.i [function]gml_Script_anon@26092@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_text_gem
b [329]

> gml_Script_anon@26409@gml_Object_oEntitie_Create_0 (locals=0, argc=0)
:[327]
push.v builtin.gem
ret.v

:[328]
exit.i

:[329]
push.i [function]gml_Script_anon@26409@gml_Object_oEntitie_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_gem
pushbltn.v builtin.undefined
pop.v.v builtin.state
pushbltn.v builtin.undefined
pop.v.v builtin.stateNext
pushbltn.v builtin.undefined
pop.v.v builtin.statePrev
push.v builtin.charType
push.v builtin.number
b [331]

> gml_Script____struct___351@gml_Object_oEntitie_Create_0 (locals=0, argc=0)
:[330]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.number
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.theType
exit.i

:[331]
push.i [function]gml_Script____struct___351@gml_Object_oEntitie_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___351
call.i @@NewGMLObject@@(argc=3)
pushref.i 1
pushglb.v global.depthManager
push.s "token"@4998
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
push.v builtin.yUi
push.v builtin.xUi
call.i instance_create_depth(argc=5)
pop.v.v builtin.ability

:[end]