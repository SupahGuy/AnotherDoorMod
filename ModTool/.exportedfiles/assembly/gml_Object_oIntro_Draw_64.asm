; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.state
push.l 4
cmp.l.v EQ
bf [end]

:[1]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
pushbltn.v builtin.room_height
pushi.e 2
conv.i.d
div.d.v
push.v builtin.bookOffsetY
add.v.v
pushbltn.v builtin.room_width
pushi.e 2
conv.i.d
div.d.v
pushi.e 0
conv.i.v
pushref.i 16777270
call.i draw_sprite(argc=4)
popz.v
pushi.e 0
pop.v.i local._p

:[2]
pushloc.v local._p
push.v builtin.bookPositionList
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [4]

:[3]
call.i @@Global@@(argc=0)
pushi.e -9
pushloc.v local._p
conv.v.i
push.v [array]self.mercenaries
pushi.e -9
push.v [stacktop]self.spriteName
push.s "spr{0}Head"@9359
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pop.v.v local._assetsHead
pushi.e -6
pushloc.v local._p
conv.v.i
push.v [arraypushaf]self.bookPositionList
pushi.e 1
pushaf.e
pushi.e 16
add.i.v
push.v builtin.bookOffsetY
add.v.v
pushi.e -6
pushloc.v local._p
conv.v.i
push.v [arraypushaf]self.bookPositionList
pushi.e 0
pushaf.e
pushi.e 31
add.i.v
pushi.e 0
conv.i.v
pushloc.v local._assetsHead
call.i draw_sprite(argc=4)
popz.v
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [2]

:[4]
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
pushi.e 0
pop.v.i local._p

:[5]
pushloc.v local._p
push.v builtin.bookPositionList
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [7]

:[6]
call.i @@Global@@(argc=0)
pushi.e -9
pushloc.v local._p
conv.v.i
push.v [array]self.mercenaries
pushi.e -9
push.v [stacktop]self.className
push.s "{0}"@8789
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_LocPreprocessor(argc=1)
pop.v.v local._name
pushi.e 1
conv.i.v
pushloc.v local._name
call.i string_char_at(argc=2)
pop.v.v local._first
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._name
call.i string_delete(argc=3)
pop.v.v local._rest
pushloc.v local._rest
call.i string_lower(argc=1)
pushloc.v local._first
call.i string_concat(argc=2)
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
push.s "ftAlkhemikalSh"@5419
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
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.draw
pushi.e -6
pushloc.v local._p
conv.v.i
push.v [arraypushaf]self.bookPositionList
pushi.e 1
pushaf.e
pushi.e 49
add.i.v
push.v builtin.bookOffsetY
add.v.v
pushglb.v global.zoom
mul.v.v
pushi.e -6
pushloc.v local._p
conv.v.i
push.v [arraypushaf]self.bookPositionList
pushi.e 0
pushaf.e
push.d 33.5
add.d.v
pushglb.v global.zoom
mul.v.v
dup.e 2 16
callv.v 2
popz.v
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [5]

:[7]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
pushi.e 0
pop.v.i local._p

:[8]
pushloc.v local._p
push.v builtin.stampToDraw
call.i array_length(argc=1)
cmp.v.v LT
bf [10]

:[9]
pushi.e -1
pushloc.v local._p
conv.v.i
push.v [array]self.stampToDraw
pushi.e -9
push.v [stacktop]self.y
push.v builtin.bookOffsetY
add.v.v
pushi.e -1
pushloc.v local._p
conv.v.i
push.v [array]self.stampToDraw
pushi.e -9
push.v [stacktop]self.x
pushi.e -1
pushloc.v local._p
conv.v.i
push.v [array]self.stampToDraw
pushi.e -9
push.v [stacktop]self.sprite
call.i sprite_get_number(argc=1)
pushi.e 1
sub.i.v
pushi.e -1
pushloc.v local._p
conv.v.i
push.v [array]self.stampToDraw
pushi.e -9
push.v [stacktop]self.sprite
call.i draw_sprite(argc=4)
popz.v
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [8]

:[10]
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v

:[end]