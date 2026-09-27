; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.platonia
cmp.v.v EQ
bf [11]

:[1]
pushi.e 0
pop.v.i local._i

:[2]
pushloc.v local._i
push.v builtin.slotsFaces
call.i array_length(argc=1)
cmp.v.v LT
bf [4]

:[3]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.slotsFaces
call.i instance_destroy(argc=1)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [2]

:[4]
pushi.e 0
pop.v.i local._i

:[5]
pushloc.v local._i
push.v builtin.slotsPrice
call.i array_length(argc=1)
cmp.v.v LT
bf [7]

:[6]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.slotsPrice
call.i instance_destroy(argc=1)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [5]

:[7]
pushi.e 0
pop.v.i local._i

:[8]
pushloc.v local._i
push.v builtin.playersButtons
call.i array_length(argc=1)
cmp.v.v LT
bf [10]

:[9]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.playersButtons
call.i instance_destroy(argc=1)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [8]

:[10]
b [end]

:[11]
push.v builtin.structMonster
pushglb.v global.monsters
pushi.e -9
push.v [stacktop]self.blackMarket
cmp.v.v EQ
bf [end]

:[12]
pushref.i 31
pushi.e -9
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]
pushref.i 51
pushi.e -9
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]
pushref.i 46
pushi.e -9
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]

:[end]