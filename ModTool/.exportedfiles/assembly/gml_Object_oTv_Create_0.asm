:[0]
pushi.e 0
pop.v.i builtin.depth
pushbltn.v builtin.undefined
pop.v.v builtin.screenState
pushbltn.v builtin.undefined
pop.v.v builtin.screenStatePrev
push.l 17
pop.v.l builtin.screenStateNext
push.l 22
pop.v.l builtin.screenAfterTurnOn
pushbltn.v builtin.undefined
pop.v.v builtin.screenFromCallback
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
push.d 0.3
conv.d.v
push.d 0.1
conv.d.v
call.i random_range(argc=2)
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pop.v.v builtin.theCallbackTimer
b [2]

> gml_Script_anon@290@gml_Object_oTv_Create_0 (locals=0, argc=0)
:[1]
push.v builtin.screenFromCallback
pop.v.v builtin.screenStateNext
exit.i

:[2]
push.i [function]gml_Script_anon@290@gml_Object_oTv_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.callbackSwitchScreen
push.v builtin.objWidth
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v builtin.spriteX
push.v builtin.objHeight
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v builtin.spriteY
pushi.e 1
pop.v.i builtin.image_xscale
pushi.e 1
pop.v.i builtin.image_yscale
pushi.e -1
pop.v.i builtin.spriteToDraw
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue6
pop.v.v builtin.colorToDraw
pushi.e 0
pop.v.b builtin.typistActivated
call.i gml_Script_scribble_typist(argc=0)
pop.v.v builtin.typist
push.v builtin.typist
pushi.e 0
conv.i.v
pushi.e 1
pushglb.v global.dialogueTextSpeed
mul.v.i
dup.v 2 8
dup.v 0
push.v stacktop.in
callv.v 2
popz.v
pushi.e -1
pop.v.i builtin.textToDraw
push.s ""@61
pop.v.s builtin.textLabel
pushi.e 1
pop.v.i builtin.textScale
pushglb.v global.currentLanguage
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
push.s "ftFusionJP"@7388
pop.v.s builtin.textFont
push.s "ftFusionJPTitle"@7389
pop.v.s builtin.textTitleFont
b [7]

:[4]
pushglb.v global.currentLanguage
pushi.e 4
cmp.i.v EQ
bf [6]

:[5]
push.s "ftFusionSC"@7390
pop.v.s builtin.textFont
push.s "ftFusionSCTitle"@7391
pop.v.s builtin.textTitleFont
b [7]

:[6]
push.s "ftMonobit"@7360
pop.v.s builtin.textFont
push.s "ftAlkhemikal"@7363
pop.v.s builtin.textTitleFont

:[7]
pushi.e 1
pop.v.i builtin.textAlignH
pushi.e 1
pop.v.i builtin.textAlignV
pushi.e 8
pop.v.i builtin.typistCurrentOffset
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey8
pop.v.v builtin.textColor
pushi.e 0
pop.v.i builtin.image_index
pushi.e 1
pop.v.i builtin.image_speed
b [16]

> gml_Script_anon@1096@gml_Object_oTv_Create_0 (locals=0, argc=0)
:[8]
pushi.e -1
pop.v.i builtin.spriteToDraw
push.v builtin.objWidth
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v builtin.spriteX
push.v builtin.objHeight
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v builtin.spriteY
pushi.e 1
pop.v.i builtin.image_xscale
pushi.e 1
pop.v.i builtin.image_yscale
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue6
pop.v.v builtin.colorToDraw
pushi.e 0
pop.v.b builtin.typistActivated
push.v builtin.typist
pushi.e 0
conv.i.v
pushi.e 1
pushglb.v global.dialogueTextSpeed
mul.v.i
dup.v 2 8
dup.v 0
push.v stacktop.in
callv.v 2
popz.v
push.v builtin.typist
dup.v 0 8
dup.v 0
push.v stacktop.reset
callv.v 0
popz.v
pushi.e -1
pop.v.i builtin.textToDraw
push.s ""@61
pop.v.s builtin.textLabel
pushi.e 1
pop.v.i builtin.textScale
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
pop.v.v builtin.textColor
pushglb.v global.currentLanguage
pushi.e 3
cmp.i.v EQ
bf [10]

:[9]
push.s "ftFusionJP"@7388
pop.v.s builtin.textFont
push.s "ftFusionJPTitle"@7389
pop.v.s builtin.textTitleFont
b [15]

:[10]
pushglb.v global.currentLanguage
pushi.e 4
cmp.i.v EQ
bf [12]

:[11]
push.s "ftFusionSC"@7390
pop.v.s builtin.textFont
push.s "ftFusionSCTitle"@7391
pop.v.s builtin.textTitleFont
b [15]

:[12]
pushglb.v global.currentLanguage
pushi.e 7
cmp.i.v EQ
bf [14]

:[13]
push.s "ftPixeloidSans"@7362
pop.v.s builtin.textFont
push.s "ftPixeloidSans"@7362
pop.v.s builtin.textTitleFont
b [15]

:[14]
push.s "ftMonobit"@7360
pop.v.s builtin.textFont
push.s "ftAlkhemikal"@7363
pop.v.s builtin.textTitleFont

:[15]
pushi.e 1
pop.v.i builtin.textAlignH
pushi.e 1
pop.v.i builtin.textAlignV
pushi.e 8
pop.v.i builtin.typistCurrentOffset
pushi.e 0
pop.v.i builtin.image_index
pushi.e 1
pop.v.i builtin.image_speed
pushi.e 0
conv.i.v
push.v builtin.pTvGemParticle
push.v builtin.tvEmmiter
push.v builtin.tvParticlesSys
call.i part_emitter_stream(argc=4)
popz.v
exit.i

:[16]
push.i [function]gml_Script_anon@1096@gml_Object_oTv_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset_var_to_draw
pushi.e 1
conv.i.v
pushbltn.v builtin.undefined
push.d 0.4
conv.d.v
push.d 0.1
conv.d.v
call.i irandom_range(argc=2)
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=5)
pop.v.v builtin.turnOnTimer
push.s "u_resolution"@8116
conv.s.v
pushref.i 134217756
call.i shader_get_uniform(argc=2)
pop.v.v builtin.u_resolution
push.v builtin.x
pop.v.v builtin.xInit
push.v builtin.y
pop.v.v builtin.yInit
push.v builtin.z1
pop.v.v builtin.zInit
pushi.e -60
pop.v.i builtin.numberOfGemParticles
call.i part_system_create(argc=0)
pop.v.v builtin.tvParticlesSys
push.v builtin.tvParticlesSys
call.i part_emitter_create(argc=1)
pop.v.v builtin.tvEmmiter
pushi.e 0
conv.b.v
push.v builtin.tvParticlesSys
call.i part_system_automatic_draw(argc=2)
popz.v
push.v builtin.depth
push.v builtin.tvParticlesSys
call.i part_system_depth(argc=2)
popz.v
call.i part_type_create(argc=0)
pop.v.v builtin.pTvGemParticle
pushi.e 1
conv.b.v
pushi.e 1
conv.b.v
pushi.e 0
conv.b.v
pushref.i 16777937
push.v builtin.pTvGemParticle
call.i part_type_sprite(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.pTvGemParticle
call.i part_type_size(argc=5)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.pTvGemParticle
call.i part_type_scale(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.pTvGemParticle
call.i part_type_orientation(argc=6)
popz.v
pushi.e 1
conv.i.v
push.v builtin.pTvGemParticle
call.i part_type_alpha1(argc=2)
popz.v
pushi.e 0
conv.b.v
push.v builtin.pTvGemParticle
call.i part_type_blend(argc=2)
popz.v
pushi.e 250
conv.i.v
pushi.e 250
conv.i.v
push.v builtin.pTvGemParticle
call.i part_type_life(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.pTvGemParticle
call.i part_type_speed(argc=5)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.pTvGemParticle
call.i part_type_direction(argc=5)
popz.v
pushi.e 270
conv.i.v
push.d 0.025
conv.d.v
push.v builtin.pTvGemParticle
call.i part_type_gravity(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e -24
conv.i.v
pushi.e -24
conv.i.v
push.v builtin.objWidth
pushi.e 0
conv.i.v
push.v builtin.tvEmmiter
push.v builtin.tvParticlesSys
call.i part_emitter_region(argc=8)
popz.v
push.l 4
conv.l.v
push.v builtin.tvParticlesSys
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
push.v builtin.tvParticlesSys
push.l 5
conv.l.v
push.v builtin.tvEmmiter
call.i gml_Script_add_to_clean_up(argc=3)
popz.v
push.l 6
conv.l.v
push.v builtin.pTvGemParticle
call.i gml_Script_add_to_clean_up(argc=2)
popz.v
push.v builtin.number
pushi.e 6
cmp.i.v EQ
bf [56]

:[17]
pushi.e 0
pop.v.i builtin.monsterTotal
pushi.e 4
pop.v.i builtin.monsterByLine
pushref.i 16777923
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.spriteAnnouncementMonster
pushi.e 0
conv.i.v
call.i game_get_speed(argc=1)
pop.v.v builtin.gSpeedMonster
pushi.e -6
pushi.e 0
push.v [array]self.spriteAnnouncementMonster
call.i sprite_get_speed(argc=1)
pop.v.v builtin.sSpeedMonster
pushi.e -6
pushi.e 0
push.v [array]self.spriteAnnouncementMonster
call.i sprite_get_width(argc=1)
pop.v.v builtin.spriteWMonster
pushi.e -6
pushi.e 0
push.v [array]self.spriteAnnouncementMonster
call.i sprite_get_xoffset(argc=1)
pop.v.v builtin.spriteOffsetXMonster
pushi.e -6
pushi.e 0
push.v [array]self.spriteAnnouncementMonster
call.i sprite_get_height(argc=1)
pop.v.v builtin.spriteHMonster
pushi.e -6
pushi.e 0
push.v [array]self.spriteAnnouncementMonster
call.i sprite_get_yoffset(argc=1)
pop.v.v builtin.spriteOffsetYMonster
push.v builtin.gSpeedMonster
push.v builtin.sSpeedMonster
div.v.v
pushi.e 10
conv.i.d
div.d.v
pop.v.v builtin.lengthAnimMonster
b [55]

> gml_Script_anon@4446@gml_Object_oTv_Create_0 (locals=1, argc=0)
:[18]
pushglb.v global.loopManager
dup.v 0 8
dup.v 0
push.v stacktop.get_current_door_length
callv.v 0
pop.v.v builtin.monsterTotal
push.v builtin.monsterTotal
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [28]

:[19]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [28]

:[20]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [28]

:[21]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [28]

:[22]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [28]

:[23]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [28]

:[24]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [29]

:[25]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [29]

:[26]
b [30]

:[27]
b [31]

:[28]
pushi.e 4
pop.v.i builtin.monsterByLine
b [31]

:[29]
pushi.e 3
pop.v.i builtin.monsterByLine
b [31]

:[30]
pushi.e 4
pop.v.i builtin.monsterByLine
b [31]

:[31]
popz.v
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.spriteAnnouncementMonster
pushi.e 0
pop.v.i local._d

:[32]
pushloc.v local._d
push.v builtin.monsterTotal
cmp.v.v LT
bf [54]

:[33]
pushglb.v global.loopManager
pushloc.v local._d
dup.v 1 8
dup.v 0
push.v stacktop.get_monster_at_position
callv.v 1
pushi.e -9
push.v [stacktop]self.category
dup.v 0
push.l 0
cmp.l.v EQ
bt [42]

:[34]
dup.v 0
push.l 1
cmp.l.v EQ
bt [46]

:[35]
dup.v 0
push.l 6
cmp.l.v EQ
bt [47]

:[36]
dup.v 0
push.l 7
cmp.l.v EQ
bt [48]

:[37]
dup.v 0
push.l 4
cmp.l.v EQ
bt [49]

:[38]
dup.v 0
push.l 5
cmp.l.v EQ
bt [50]

:[39]
dup.v 0
push.l 3
cmp.l.v EQ
bt [51]

:[40]
b [52]

:[41]
b [53]

:[42]
pushglb.v global.loopManager
pushloc.v local._d
dup.v 1 8
dup.v 0
push.v stacktop.get_monster_at_position
callv.v 1
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.statueForest
cmp.v.v EQ
bf [44]

:[43]
pushref.i 16777928
pushi.e -6
pushloc.v local._d
conv.v.i
pop.v.v [array]self.spriteAnnouncementMonster
b [45]

:[44]
pushref.i 16777923
pushi.e -6
pushloc.v local._d
conv.v.i
pop.v.v [array]self.spriteAnnouncementMonster

:[45]
b [53]

:[46]
pushref.i 16777921
pushi.e -6
pushloc.v local._d
conv.v.i
pop.v.v [array]self.spriteAnnouncementMonster
b [53]

:[47]
pushref.i 16777922
pushi.e -6
pushloc.v local._d
conv.v.i
pop.v.v [array]self.spriteAnnouncementMonster
b [53]

:[48]
pushref.i 16777927
pushi.e -6
pushloc.v local._d
conv.v.i
pop.v.v [array]self.spriteAnnouncementMonster
b [53]

:[49]
pushref.i 16777925
pushi.e -6
pushloc.v local._d
conv.v.i
pop.v.v [array]self.spriteAnnouncementMonster
b [53]

:[50]
pushref.i 16777920
pushi.e -6
pushloc.v local._d
conv.v.i
pop.v.v [array]self.spriteAnnouncementMonster
b [53]

:[51]
pushref.i 16777924
pushi.e -6
pushloc.v local._d
conv.v.i
pop.v.v [array]self.spriteAnnouncementMonster
b [53]

:[52]
pushref.i 16777923
pushi.e -6
pushloc.v local._d
conv.v.i
pop.v.v [array]self.spriteAnnouncementMonster
b [53]

:[53]
popz.v
push.v local._d
push.e 1
add.i.v
pop.v.v local._d
b [32]

:[54]
exit.i

:[55]
push.i [function]gml_Script_anon@4446@gml_Object_oTv_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_monsters_number

:[56]
call.i vertex_create_buffer(argc=0)
pop.v.v builtin.vBuffFace
pushi.e 0
conv.i.v
pushref.i 16777237
call.i sprite_get_texture(argc=2)
pop.v.v builtin.textureFace
pushglb.v global.vFormat
push.v builtin.vBuffFace
call.i vertex_begin(argc=2)
popz.v
push.v builtin.objHeight
push.v builtin.objWidth
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v builtin.z4
push.v builtin.y
push.v builtin.objHeight
add.v.v
push.v builtin.x
push.i [function]gml_Script_Vec3
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.z3
push.v builtin.y
push.v builtin.objHeight
add.v.v
push.v builtin.x
push.v builtin.objWidth
add.v.v
push.i [function]gml_Script_Vec3
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.z2
push.v builtin.y
push.v builtin.x
push.v builtin.objWidth
add.v.v
push.i [function]gml_Script_Vec3
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.z1
push.v builtin.y
push.v builtin.x
push.i [function]gml_Script_Vec3
conv.i.v
call.i @@NewGMLObject@@(argc=4)
push.v builtin.vBuffFace
call.i gml_Script_vertex_create_face(argc=9)
popz.v
push.v builtin.vBuffFace
call.i vertex_end(argc=1)
popz.v
push.v builtin.vBuffFace
call.i vertex_freeze(argc=1)
popz.v
pushi.e -1
pop.v.i builtin.surfTv
pushi.e -1
pop.v.i builtin.surfaceCrt
push.v builtin.surfTv
call.i surface_get_texture(argc=1)
pop.v.v builtin.tex
push.s "frame_size"@11468
conv.s.v
pushref.i 134217743
call.i shader_get_uniform(argc=2)
pop.v.v builtin.frame_size_uniform
pushi.e -1
pop.v.i builtin.whichOne
pushi.e 1
pop.v.i builtin.displaceValue
pushi.e 0
pop.v.i builtin.p1x
pushi.e 0
pop.v.i builtin.p1y
pushi.e 0
pop.v.i builtin.p1z
pushi.e 0
pop.v.i builtin.p2x
pushi.e 0
pop.v.i builtin.p2y
pushi.e 0
pop.v.i builtin.p2z
pushi.e 0
pop.v.i builtin.p3x
pushi.e 0
pop.v.i builtin.p3y
pushi.e 0
pop.v.i builtin.p3z
pushi.e 0
pop.v.i builtin.p4x
pushi.e 0
pop.v.i builtin.p4y
pushi.e 0
pop.v.i builtin.p4z

:[end]