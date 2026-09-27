:[0]
push.v builtin.hpProfileWMax
pushi.e 0
conv.i.v
push.v builtin.hpMax
pushi.e 0
conv.i.v
push.v builtin.hp
call.i gml_Script_map_value(argc=5)
call.i round(argc=1)
pop.v.v builtin.hpProfileWTo
push.d 0.1
conv.d.v
push.v builtin.hpProfileWTo
push.v builtin.hpProfileW
call.i lerp(argc=3)
pop.v.v builtin.hpProfileW
push.v builtin.hp
pop.v.v builtin.hpPrev
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [1]

:[1]
push.v builtin.state
push.l 1
cmp.l.v EQ
bf [5]

:[2]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [4]

:[3]
push.v builtin.spriteIdle
pop.v.v builtin.sprite_index

:[4]
b [19]

:[5]
push.v builtin.state
push.l 0
cmp.l.v EQ
bf [11]

:[6]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [8]

:[7]
push.d 0.2
pushglb.v global.vfxEffectSpeed
div.v.d
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.damageTimer
push.v builtin.damageTimer
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
push.v builtin.damageTimer
dup.v 0 8
dup.v 0
push.v stacktop.run
callv.v 0
popz.v
pushi.e 0
pop.v.i builtin.image_index
push.v builtin.spriteHit
pop.v.v builtin.sprite_index

:[8]
push.v builtin.damageTimer
dup.v 0 8
dup.v 0
push.v stacktop.is_finished
callv.v 0
conv.v.b
bf [10]

:[9]
push.l 1
pop.v.l builtin.stateNext

:[10]
b [19]

:[11]
push.v builtin.state
push.l 2
cmp.l.v EQ
bf [16]

:[12]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [15]

:[13]
call.i @@This@@(argc=0)
push.v builtin.delete_effect
callv.v 0
popz.v
push.l 2
conv.l.v
push.v builtin.number
push.l 0
conv.l.v
push.v builtin.gem
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
call.i gml_Script_g_exchange_gem(argc=8)
popz.v
push.v builtin.spriteDead
pop.v.v builtin.sprite_index
push.v builtin.spriteProfileDead
pop.v.v builtin.spriteProfile
push.v builtin.spriteProfileBoxGemDead
pop.v.v builtin.spriteProfileBoxGem
push.v builtin.token
pushi.e -9
push.v [stacktop]self.theType
push.l 17
cmp.l.v NEQ
bf [15]

:[14]
pushglb.v global.playersManager
push.l 14
conv.l.v
push.v builtin.number
dup.v 2 8
dup.v 0
push.v stacktop.apply_action
callv.v 2
popz.v
push.v builtin.token
push.l 1
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.change_type
callv.v 1
popz.v

:[15]
b [19]

:[16]
push.v builtin.state
push.l 3
cmp.l.v EQ
bf [19]

:[17]
push.v builtin.statePrev
push.v builtin.state
cmp.v.v NEQ
bf [19]

:[18]
call.i @@This@@(argc=0)
push.v builtin.delete_effect
callv.v 0
popz.v
push.v builtin.spriteProfileLeaving
pop.v.v builtin.spriteProfile
push.v builtin.spriteProfileBoxGemLeft
pop.v.v builtin.spriteProfileBoxGem
push.v builtin.token
push.l 2
conv.l.v
dup.v 1 8
dup.v 0
push.v stacktop.change_type
callv.v 1
popz.v

:[19]
push.v builtin.state
pop.v.v builtin.statePrev
push.v builtin.stateNext
pop.v.v builtin.state

:[end]