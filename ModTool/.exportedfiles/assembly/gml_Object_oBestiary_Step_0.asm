:[0]
pushi.e 0
conv.i.v
push.l 7
conv.l.v
call.i gml_Script_InputPressed(argc=2)
conv.v.b
bf [2]

:[1]
push.v builtin.monstersCounter
pushi.e 1
add.i.v
pushglb.v global.monsters
call.i gml_Script_get_size(argc=1)
mod.v.v
pop.v.v builtin.monstersCounter
push.v builtin.monstersCounter
call.i @@This@@(argc=0)
push.v builtin.set_current_monster
callv.v 1
popz.v

:[2]
pushi.e 0
conv.i.v
push.l 8
conv.l.v
call.i gml_Script_InputPressed(argc=2)
conv.v.b
bf [end]

:[3]
push.v builtin.monstersCounter
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushglb.v global.monsters
call.i gml_Script_get_size(argc=1)
pushi.e 1
sub.i.v
pop.v.v builtin.monstersCounter
b [6]

:[5]
push.v builtin.monstersCounter
push.e 1
sub.i.v
pop.v.v builtin.monstersCounter

:[6]
push.v builtin.monstersCounter
call.i @@This@@(argc=0)
push.v builtin.set_current_monster
callv.v 1
popz.v

:[end]