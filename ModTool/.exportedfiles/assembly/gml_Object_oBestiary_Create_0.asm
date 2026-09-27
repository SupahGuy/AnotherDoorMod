; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushbltn.v builtin.room_width
pop.v.v builtin.roomW
pushi.e 0
conv.i.v
call.i array_create(argc=1)
pop.v.v builtin.effects
pushi.e 1
pop.v.i builtin.effectByLine
pushi.e 200
pop.v.i builtin.effectW
pushi.e 100
pop.v.i builtin.effectH
pushbltn.v builtin.room_width
push.v builtin.effectW
sub.v.v
pushi.e 2
conv.i.d
div.d.v
pop.v.v builtin.effectOffsetX
pushi.e 16
pop.v.i builtin.effectSpacingY
pushi.e 0
pop.v.i local._effectOffsetY
pushglb.v global.effect
call.i variable_struct_get_names(argc=1)
pop.v.v local._effectKey
pushi.e 1
conv.b.v
pushloc.v local._effectKey
call.i array_sort(argc=2)
popz.v
pushi.e 0
pop.v.i local.i

:[1]
pushloc.v local.i
pushglb.v global.effect
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [12]

:[2]
pushi.e -7
pushloc.v local.i
conv.v.i
push.v [array]self._effectKey
pop.v.v local._k
pushloc.v local._k
pushglb.v global.effect
call.i variable_struct_get(argc=2)
pop.v.v local._v
pushi.e 1
pop.v.b local._add
pushi.e 0
pop.v.i local._c

:[3]
pushloc.v local._c
pushloc.v local._v
pushi.e -9
push.v [stacktop]self.condition
call.i array_length(argc=1)
cmp.v.v LT
bf [7]

:[4]
pushloc.v local._v
pushi.e -9
pushloc.v local._c
conv.v.i
push.v [array]self.condition
push.l 0
cmp.l.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.b local._add

:[6]
push.v local._c
push.e 1
add.i.v
pop.v.v local._c
b [3]

:[7]
pushloc.v local._add
conv.v.b
bf [11]

:[8]
pushloc.v local._effectOffsetY
pushloc.v local._v
pushi.e -9
push.v [stacktop]self.sprite
pushloc.v local._v
pushi.e -9
push.v [stacktop]self.desc
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.wrap
push.v builtin.effectW
dup.e 2 8
callv.v 1
pushloc.v local._v
pushi.e -9
push.v [stacktop]self.name
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.wrap
push.v builtin.effectW
dup.e 2 8
callv.v 1
b [10]

> gml_Script____struct___323@gml_Object_oBestiary_Create_0 (locals=0, argc=0)
:[9]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.name
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.desc
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.sprite_index
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.offsetY
exit.i

:[10]
push.i [function]gml_Script____struct___323@gml_Object_oBestiary_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___323
call.i @@NewGMLObject@@(argc=5)
pop.v.v local._struct
pushloc.v local._struct
pushi.e 0
conv.i.v
push.v builtin.effects
call.i array_insert(argc=3)
popz.v
push.v local._effectOffsetY
pushloc.v local._struct
pushi.e -9
push.v [stacktop]self.name
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
pushloc.v local._struct
pushi.e -9
push.v [stacktop]self.desc
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
add.v.v
push.v builtin.effectSpacingY
add.v.v
add.v.v
pop.v.v local._effectOffsetY

:[11]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [1]

:[12]
push.v builtin.effects
call.i gml_Script_get_size(argc=1)
pop.v.v builtin.effectLength
pushbltn.v builtin.undefined
pop.v.v builtin.currentMonster
pushglb.v global.monsters
call.i variable_struct_get_names(argc=1)
pop.v.v builtin.monstersArray
pushi.e 1
conv.b.v
push.v builtin.monstersArray
call.i array_sort(argc=2)
popz.v
pushi.e 0
pop.v.i builtin.monstersCounter
b [21]

> gml_Script_anon@1489@gml_Object_oBestiary_Create_0 (locals=3, argc=1)
:[13]
pushref.i 6
pushi.e -9
pushenv [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [14]
pushi.e -6
push.v arg.argument0
call.i abs(argc=1)
conv.v.i
push.v [array]self.monstersArray
pop.v.v local._k
pushloc.v local._k
pushglb.v global.monsters
call.i variable_struct_get(argc=2)
pop.v.v builtin.currentMonster
push.v builtin.currentMonster
pushi.e -9
push.v [stacktop]self.spriteName
push.s "spr{0}Idle"@8657
conv.s.v
call.i @@string@@(argc=2)
call.i asset_get_index(argc=1)
pop.v.v builtin.currentMonsterSprite
pushi.e 0
pop.v.i local._c

:[16]
pushloc.v local._c
push.v builtin.currentMonster
pushi.e -9
pushi.e 0
push.v [array]self.cards
call.i array_length(argc=1)
cmp.v.v LT
bf [20]

:[17]
push.l 0
conv.l.v
push.v builtin.currentMonster
pushi.e -9
push.v [stacktop]self.cards
call.i array_length(argc=1)
pushloc.v local._c
push.v builtin.currentMonster
pushi.e -9
pushi.e 0
push.v [arraypushaf]self.cards
pushloc.v local._c
conv.v.i
pushaf.e
b [19]

> gml_Script____struct___324@anon@1489@gml_Object_oBestiary_Create_0 (locals=0, argc=0)
:[18]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.item
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.cardNumber
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.cardNumberTotal
pushref.i 16777325
pop.v.v self.sprite_index
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.cardType
pushi.e 0
pop.v.b self.isDisabled
exit.i

:[19]
push.i [function]gml_Script____struct___324@anon@1489@gml_Object_oBestiary_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___324
call.i @@NewGMLObject@@(argc=5)
pushref.i 6
pushglb.v global.depthManager
push.s "cards"@4255
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
pop.v.v local._card
push.v local._c
push.e 1
add.i.v
pop.v.v local._c
b [16]

:[20]
exit.i

:[21]
push.i [function]gml_Script_anon@1489@gml_Object_oBestiary_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set_current_monster
push.v builtin.monstersCounter
call.i @@This@@(argc=0)
push.v builtin.set_current_monster
callv.v 1
popz.v

:[end]