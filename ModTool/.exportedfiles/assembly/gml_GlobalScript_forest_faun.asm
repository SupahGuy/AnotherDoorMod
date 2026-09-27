:[0]
b [12]

> gml_Script_forest_faun (locals=0, argc=0)
:[1]
b [7]

> gml_Script_anon@177@forest_faun@forest_faun (locals=0, argc=0)
:[2]
pushref.i 7
pushi.e -9
pushenv [6]

:[3]
push.v builtin.token
pushi.e -4
cmp.i.v NEQ
bf [5]

:[4]
push.v builtin.token
call.i instance_destroy(argc=1)
popz.v

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [3]
exit.i

:[7]
push.i [function]gml_Script_anon@177@forest_faun@forest_faun
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.monster_script_end
b [11]

> gml_Script_anon@421@forest_faun@forest_faun (locals=4, argc=1)
:[8]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [10]

:[9]
pushi.e -1
pop.v.i builtin.argument0

:[10]
push.l 0
pop.v.l local._alignY
push.l 2
pop.v.l local._alignX
push.l 1
pop.v.l local._close
push.s "lore.ini"@5582
conv.s.v
call.i ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "encounter"@4943
conv.s.v
push.s "faun"@5316
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v local._dialNbr
pushloc.v local._dialNbr
pushi.e 1
add.i.v
pushi.e 4
mod.i.v
pop.v.v local._dialNbr
pushloc.v local._dialNbr
push.s "encounter"@4943
conv.s.v
push.s "faun"@5316
conv.s.v
call.i ini_write_real(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
pushloc.v local._close
push.l 3
conv.l.v
pushloc.v local._alignY
pushloc.v local._alignX
pushloc.v local._dialNbr
push.s "faun._choice{0}"@5585
conv.s.v
call.i @@string@@(argc=2)
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pushref.i 14
pushi.e 0
conv.i.v
pushi.e 80
conv.i.v
pushi.e 200
conv.i.v
call.i instance_create_depth(argc=5)
popz.v
exit.i

:[11]
push.i [function]gml_Script_anon@421@forest_faun@forest_faun
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.activate_dialogue
push.v builtin.activate_dialogue
push.v builtin.monster_script_end
call.i @@NewGMLArray@@(argc=0)
call.i @@NewGMLArray@@(argc=0)
call.i @@NewGMLArray@@(argc=1)
push.l 6
conv.l.v
push.s "MonsterFaun"@5587
conv.s.v
push.s "monster._faunDesc"@5588
conv.s.v
push.s "monster._faun"@5589
conv.s.v
push.s "faun"@5316
conv.s.v
push.i [function]gml_Script_c_monster
conv.i.v
call.i @@NewGMLObject@@(argc=10)
pushglb.v global.monsters
pushi.e -9
pop.v.v [stacktop]self.faun
exit.i

:[12]
push.i [function]gml_Script_forest_faun
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.forest_faun
popz.v

:[end]