:[0]
b [4]

> gml_Script_c_mercenary (locals=0, argc=5)
:[1]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument2

:[3]
call.i @@SetStatic@@(argc=0)
push.v arg.argument0
pop.v.v builtin.className
push.v arg.argument1
pop.v.v builtin.desc
push.v arg.argument2
pop.v.v builtin.hpMax
push.v arg.argument3
pop.v.v builtin.spriteName
push.v arg.argument4
pop.v.v builtin.charType
exit.i

:[4]
push.i [function]gml_Script_c_mercenary
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.c_mercenary
popz.v
b [13]

> gml_Script_c_monster_data (locals=0, argc=0)
:[5]
call.i @@SetStatic@@(argc=0)
pushi.e 0
pop.v.i builtin.numberOfAppearances
b [8]

> gml_Script_anon@864@c_monster_data@create_s_entities (locals=0, argc=0)
:[6]
push.v builtin.numberOfAppearances
ret.v

:[7]
exit.i

:[8]
push.i [function]gml_Script_anon@864@c_monster_data@create_s_entities
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_appearance
b [10]

> gml_Script_anon@939@c_monster_data@create_s_entities (locals=0, argc=0)
:[9]
push.v builtin.numberOfAppearances
push.e 1
add.i.v
pop.v.v builtin.numberOfAppearances
exit.i

:[10]
push.i [function]gml_Script_anon@939@c_monster_data@create_s_entities
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.incr_appearance
b [12]

> gml_Script_anon@997@c_monster_data@create_s_entities (locals=0, argc=0)
:[11]
pushi.e 0
pop.v.i builtin.numberOfAppearances
exit.i

:[12]
push.i [function]gml_Script_anon@997@c_monster_data@create_s_entities
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset
exit.i

:[13]
push.i [function]gml_Script_c_monster_data
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.c_monster_data
popz.v
b [23]

> gml_Script_c_monster (locals=0, argc=9)
:[14]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [16]

:[15]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument5

:[16]
pushbltn.v builtin.argument6
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [18]

:[17]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument6

:[18]
pushbltn.v builtin.argument7
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [20]

:[19]
pushbltn.v builtin.undefined
pop.v.v builtin.argument7

:[20]
pushbltn.v builtin.argument8
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [22]

:[21]
pushbltn.v builtin.undefined
pop.v.v builtin.argument8

:[22]
call.i @@SetStatic@@(argc=0)
push.v arg.argument0
pop.v.v builtin.structName
push.v arg.argument1
pop.v.v builtin.className
push.v arg.argument2
pop.v.v builtin.desc
push.v arg.argument3
pop.v.v builtin.spriteName
push.v arg.argument4
pop.v.v builtin.category
push.v arg.argument5
pop.v.v builtin.cards
push.v arg.argument6
pop.v.v builtin.mushroomCards
push.v arg.argument7
pop.v.v builtin.monster_script_end
push.v arg.argument8
pop.v.v builtin.activate_dialogue
push.i [function]gml_Script_c_monster_data
conv.i.v
call.i @@NewGMLObject@@(argc=1)
pop.v.v builtin.data
exit.i

:[23]
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.c_monster
popz.v
call.i @@NewGMLArray@@(argc=0)
pop.v.v global.mercenaries
call.i @@NewGMLObject@@(argc=0)
pop.v.v global.monsters
b [25]

> gml_Script_create_s_entities (locals=6, argc=0)
:[24]
push.l 1
conv.l.v
push.s "Rogue"@4872
conv.s.v
pushi.e 100
conv.i.v
push.s "mercenary._shadowDesc"@4873
conv.s.v
push.s "mercenary._shadowName"@4874
conv.s.v
push.i [function]gml_Script_c_mercenary
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local._shadow
push.l 0
conv.l.v
push.s "Knight"@4876
conv.s.v
pushi.e 100
conv.i.v
push.s "mercenary._flyntDesc"@4877
conv.s.v
push.s "mercenary._flyntName"@4878
conv.s.v
push.i [function]gml_Script_c_mercenary
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local._flynt
push.l 2
conv.l.v
push.s "Necromancer"@4880
conv.s.v
pushi.e 100
conv.i.v
push.s "mercenary._simoneDesc"@4881
conv.s.v
push.s "mercenary._simoneName"@4882
conv.s.v
push.i [function]gml_Script_c_mercenary
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local._simone
push.l 3
conv.l.v
push.s "Aise"@4884
conv.s.v
pushi.e 100
conv.i.v
push.s "mercenary._aiseDesc"@4885
conv.s.v
push.s "mercenary._aiseName"@4886
conv.s.v
push.i [function]gml_Script_c_mercenary
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local._aise
push.l 4
conv.l.v
push.s "Basalt"@4888
conv.s.v
pushi.e 100
conv.i.v
push.s "mercenary._basaltDesc"@4889
conv.s.v
push.s "mercenary._basaltName"@4890
conv.s.v
push.i [function]gml_Script_c_mercenary
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local._basalt
push.l 5
conv.l.v
push.s "Winslet"@4892
conv.s.v
pushi.e 100
conv.i.v
push.s "mercenary._winsletDesc"@4893
conv.s.v
push.s "mercenary._winsletName"@4894
conv.s.v
push.i [function]gml_Script_c_mercenary
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local._winslet
pushloc.v local._aise
pushloc.v local._simone
pushloc.v local._basalt
pushloc.v local._winslet
pushloc.v local._flynt
pushloc.v local._shadow
pushglb.v global.mercenaries
call.i array_push(argc=7)
popz.v
pushglb.v global.mercenaries
call.i array_length(argc=1)
pop.v.v global.mercenariesCount
exit.i

:[25]
push.i [function]gml_Script_create_s_entities
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.create_s_entities
popz.v

:[end]