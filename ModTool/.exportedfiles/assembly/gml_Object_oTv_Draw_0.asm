; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.surfTv
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [2]

:[1]
push.v builtin.objHeight
push.v builtin.objWidth
call.i surface_create(argc=2)
pop.v.v builtin.surfTv

:[2]
push.v builtin.surfTv
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
push.v builtin.colorToDraw
pushi.e -1
cmp.i.v NEQ
bf [4]

:[3]
pushi.e 0
conv.b.v
push.v builtin.colorToDraw
push.v builtin.colorToDraw
push.v builtin.colorToDraw
push.v builtin.colorToDraw
push.v builtin.objHeight
push.v builtin.objWidth
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_rectangle_color(argc=9)
popz.v

:[4]
push.v builtin.spriteToDraw
pushi.e -1
cmp.i.v NEQ
bf [6]

:[5]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v builtin.image_angle
push.v builtin.image_yscale
push.v builtin.image_xscale
push.v builtin.spriteY
push.v builtin.spriteX
push.v builtin.image_index
push.v builtin.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[6]
push.v builtin.number
pushi.e 6
cmp.i.v EQ
bf [15]

:[7]
push.v builtin.screenState
push.l 7
cmp.l.v EQ
bt [13]

:[8]
push.v builtin.screenState
push.l 29
cmp.l.v EQ
bt [13]

:[9]
push.v builtin.screenState
push.l 30
cmp.l.v EQ
bt [13]

:[10]
push.v builtin.screenState
push.l 31
cmp.l.v EQ
bt [13]

:[11]
push.v builtin.screenState
push.l 28
cmp.l.v EQ
bt [13]

:[12]
push.v builtin.screenState
push.l 33
cmp.l.v EQ
b [14]

:[13]
push.e 1

:[14]
b [16]

:[15]
push.e 0

:[16]
bf [36]

:[17]
pushbltn.v builtin.current_time
pushi.e 400
conv.i.d
div.d.v
push.v builtin.lengthAnimMonster
mod.v.v
pushi.e -6
pushi.e 0
push.v [array]self.spriteAnnouncementMonster
call.i sprite_get_number(argc=1)
mul.v.v
push.v builtin.lengthAnimMonster
div.v.v
pop.v.v local._animationFrame
push.v builtin.screenState
push.l 7
cmp.l.v NEQ
bf [30]

:[18]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.red1
pop.v.v local._shdMonsterColor
push.v builtin.screenState
dup.v 0
push.l 31
cmp.l.v EQ
bt [24]

:[19]
dup.v 0
push.l 33
cmp.l.v EQ
bt [25]

:[20]
dup.v 0
push.l 29
cmp.l.v EQ
bt [26]

:[21]
dup.v 0
push.l 30
cmp.l.v EQ
bt [27]

:[22]
dup.v 0
push.l 28
cmp.l.v EQ
bt [28]

:[23]
b [29]

:[24]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.blue1
pop.v.v local._shdMonsterColor
b [29]

:[25]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.purple2
pop.v.v local._shdMonsterColor
b [29]

:[26]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.orange1
pop.v.v local._shdMonsterColor
b [29]

:[27]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
pop.v.v local._shdMonsterColor
b [29]

:[28]
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.yellow1
pop.v.v local._shdMonsterColor
b [29]

:[29]
popz.v
pushref.i 134217751
call.i shader_set(argc=1)
popz.v
pushi.e 1
conv.i.v
pushloc.v local._shdMonsterColor
call.i colour_get_blue(argc=1)
pushi.e 255
conv.i.d
div.d.v
pushloc.v local._shdMonsterColor
call.i colour_get_green(argc=1)
pushi.e 255
conv.i.d
div.d.v
pushloc.v local._shdMonsterColor
call.i colour_get_red(argc=1)
pushi.e 255
conv.i.d
div.d.v
push.s "u_colour"@11503
conv.s.v
pushref.i 134217751
call.i shader_get_uniform(argc=2)
call.i shader_set_uniform_f(argc=5)
popz.v

:[30]
pushi.e 0
pop.v.i local._n

:[31]
pushloc.v local._n
push.v builtin.monsterTotal
cmp.v.v LT
bf [33]

:[32]
push.v builtin.monsterTotal
push.v builtin.monsterByLine
div.v.v
pushloc.v local._n
push.v builtin.monsterByLine
div.v.v
call.i floor(argc=1)
pushi.e 1
add.i.v
call.i min(argc=2)
pop.v.v local._percentageCompletionLine
push.v local._percentageCompletionLine
pushloc.v local._n
push.v builtin.monsterByLine
div.v.v
call.i floor(argc=1)
sub.v.v
pop.v.v local._percentageCompletionLine
push.v builtin.objWidth
push.v builtin.spriteWMonster
push.v builtin.monsterByLine
pushloc.v local._percentageCompletionLine
mul.v.v
mul.v.v
sub.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v local._x
push.v local._x
push.v builtin.spriteWMonster
pushloc.v local._n
push.v builtin.monsterByLine
mod.v.v
mul.v.v
add.v.v
pop.v.v local._x
push.v local._x
push.v builtin.spriteOffsetXMonster
add.v.v
pop.v.v local._x
push.v builtin.objHeight
push.v builtin.spriteHMonster
push.v builtin.monsterTotal
push.v builtin.monsterByLine
div.v.v
call.i ceil(argc=1)
mul.v.v
sub.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v local._y
push.v local._y
push.v builtin.spriteHMonster
pushloc.v local._n
push.v builtin.monsterByLine
div.v.v
call.i floor(argc=1)
mul.v.v
add.v.v
pop.v.v local._y
push.v local._y
push.v builtin.spriteOffsetYMonster
add.v.v
pop.v.v local._y
pushloc.v local._y
pushloc.v local._x
pushloc.v local._animationFrame
pushi.e -6
pushloc.v local._n
conv.v.i
push.v [array]self.spriteAnnouncementMonster
call.i draw_sprite(argc=4)
popz.v
push.v local._n
push.e 1
add.i.v
pop.v.v local._n
b [31]

:[33]
push.v builtin.screenState
push.l 7
cmp.l.v NEQ
bf [35]

:[34]
call.i shader_reset(argc=0)
popz.v

:[35]
b [58]

:[36]
push.v builtin.screenState
push.l 20
cmp.l.v EQ
bf [44]

:[37]
pushglb.v global.displayControllerAsset
push.l 0
cmp.l.v EQ
bt [42]

:[38]
pushglb.v global.displayControllerAsset
push.l 0
cmp.l.v NEQ
bf [40]

:[39]
push.v builtin.number
pushi.e 1
cmp.i.v NEQ
b [41]

:[40]
push.e 0

:[41]
b [43]

:[42]
push.e 1

:[43]
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
push.v builtin.tvParticlesSys
call.i part_system_drawit(argc=1)
popz.v
b [58]

:[47]
push.v builtin.screenState
push.l 21
cmp.l.v EQ
bf [55]

:[48]
pushglb.v global.displayControllerAsset
push.l 0
cmp.l.v EQ
bt [53]

:[49]
pushglb.v global.displayControllerAsset
push.l 0
cmp.l.v NEQ
bf [51]

:[50]
push.v builtin.number
pushi.e 3
cmp.i.v NEQ
b [52]

:[51]
push.e 0

:[52]
b [54]

:[53]
push.e 1

:[54]
b [56]

:[55]
push.e 0

:[56]
bf [58]

:[57]
push.v builtin.tvParticlesSys
call.i part_system_drawit(argc=1)
popz.v

:[58]
push.v builtin.textToDraw
pushi.e -1
cmp.i.v NEQ
bf [65]

:[59]
push.v builtin.typistActivated
conv.v.b
bf [64]

:[60]
push.v builtin.textToDraw
push.v builtin.typist
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
dup.v 3 8
dup.v 0
push.v stacktop.get_bbox_revealed
callv.v 3
pushi.e -9
push.v [stacktop]self.height
pop.v.v local._height
pushloc.v local._height
push.v builtin.objHeight
cmp.v.v LT
bf [62]

:[61]
pushi.e 8
pop.v.i local._currentOffsetTextTo
b [63]

:[62]
pushi.e 8
pushloc.v local._height
sub.v.i
push.v builtin.objHeight
add.v.v
pushi.e 7
sub.i.v
pop.v.v local._currentOffsetTextTo

:[63]
push.d 0.4
conv.d.v
pushloc.v local._currentOffsetTextTo
push.v builtin.typistCurrentOffset
call.i lerp(argc=3)
pop.v.v builtin.typistCurrentOffset
push.v builtin.textToDraw
push.v builtin.objWidth
pushi.e 12
sub.i.v
dup.v 1 8
dup.v 0
push.v stacktop.wrap
callv.v 1
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
dup.v 2 8
dup.v 0
push.v stacktop.align
callv.v 2
push.v builtin.typist
push.v builtin.typistCurrentOffset
pushi.e 8
conv.i.v
dup.v 3 8
dup.v 0
push.v stacktop.draw
callv.v 3
popz.v
b [65]

:[64]
push.v builtin.textToDraw
push.v builtin.objHeight
pushi.e 2
conv.i.d
div.d.v
push.v builtin.objWidth
pushi.e 2
conv.i.d
div.d.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v

:[65]
call.i surface_reset_target(argc=0)
popz.v
push.v builtin.surfaceCrt
call.i surface_exists(argc=1)
conv.v.b
not.b
bf [67]

:[66]
push.v builtin.objHeight
push.v builtin.objWidth
call.i surface_create(argc=2)
pop.v.v builtin.surfaceCrt

:[67]
push.v builtin.surfaceCrt
call.i surface_set_target(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i draw_clear_alpha(argc=2)
popz.v
pushref.i 134217756
call.i shader_set(argc=1)
popz.v
push.v builtin.objHeight
push.v builtin.objWidth
push.v builtin.u_resolution
call.i shader_set_uniform_f(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.surfTv
call.i draw_surface(argc=3)
popz.v
call.i shader_reset(argc=0)
popz.v
call.i surface_reset_target(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.objHeight
neg.v
pushi.e 2
conv.i.d
div.d.v
push.v builtin.yInit
sub.v.v
push.v builtin.objWidth
neg.v
pushi.e 2
conv.i.d
div.d.v
push.v builtin.xInit
sub.v.v
call.i matrix_build(argc=9)
pop.v.v local._matrixToOrigin
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.angleZ
push.v builtin.angleY
push.v builtin.angleX
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i matrix_build(argc=9)
pop.v.v local._matrixRotate
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.zInit
push.v builtin.yInit
push.v builtin.xInit
call.i matrix_build(argc=9)
pop.v.v local._matrixTranslate
pushloc.v local._matrixRotate
pushloc.v local._matrixToOrigin
call.i matrix_multiply(argc=2)
pop.v.v local._transformRotate
pushloc.v local._matrixTranslate
pushloc.v local._transformRotate
call.i matrix_multiply(argc=2)
pop.v.v local._transformFinal
pushloc.v local._transformFinal
pushi.e 2
conv.i.v
call.i matrix_set(argc=2)
popz.v
pushref.i 134217743
call.i shader_set(argc=1)
popz.v
push.v builtin.objHeight
push.v builtin.objWidth
push.v builtin.frame_size_uniform
call.i shader_set_uniform_f(argc=3)
popz.v
pushi.e 1
conv.b.v
call.i gpu_set_tex_filter(argc=1)
popz.v
push.v builtin.surfaceCrt
call.i surface_get_texture(argc=1)
pop.v.v builtin.tex
push.v builtin.tex
pushi.e 5
conv.i.v
push.v builtin.vBuffFace
call.i vertex_submit(argc=3)
popz.v
pushi.e 0
conv.b.v
call.i gpu_set_tex_filter(argc=1)
popz.v
call.i shader_reset(argc=0)
popz.v
call.i matrix_build_identity(argc=0)
pushi.e 2
conv.i.v
call.i matrix_set(argc=2)
popz.v

:[end]