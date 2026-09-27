; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i gml_Script_live_call(argc=0)
conv.v.b
bf [2]

:[1]
pushglb.v global.live_result
ret.v

:[2]
pushi.e 0
bf [4]

:[3]
pushbltn.v builtin.room
pushref.i 50331655
cmp.v.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [end]

:[6]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
pushi.e 1
conv.b.v
pushi.e 40
conv.i.v
pushi.e 40
conv.i.v
pushi.e 16
conv.i.v
pushi.e 16
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 28
conv.i.v
pushi.e 28
conv.i.v
pushi.e 0
conv.i.v
pushref.i 16777989
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
conv.b.v
pushi.e 72
conv.i.v
pushi.e 40
conv.i.v
pushi.e 48
conv.i.v
pushi.e 16
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 60
conv.i.v
pushi.e 28
conv.i.v
pushi.e 0
conv.i.v
pushref.i 16777391
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
conv.b.v
pushi.e 104
conv.i.v
pushi.e 40
conv.i.v
pushi.e 80
conv.i.v
pushi.e 16
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 92
conv.i.v
pushi.e 28
conv.i.v
pushi.e 0
conv.i.v
pushref.i 16777272
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
conv.b.v
pushi.e 136
conv.i.v
pushi.e 40
conv.i.v
pushi.e 112
conv.i.v
pushi.e 16
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 124
conv.i.v
pushi.e 28
conv.i.v
pushi.e 0
conv.i.v
pushref.i 16777423
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
conv.b.v
pushi.e 168
conv.i.v
pushi.e 40
conv.i.v
pushi.e 144
conv.i.v
pushi.e 16
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 156
conv.i.v
pushi.e 28
conv.i.v
pushi.e 0
conv.i.v
pushref.i 16777414
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
conv.b.v
pushi.e 200
conv.i.v
pushi.e 40
conv.i.v
pushi.e 176
conv.i.v
pushi.e 16
conv.i.v
call.i draw_rectangle(argc=5)
popz.v
pushi.e 188
conv.i.v
pushi.e 28
conv.i.v
pushi.e 0
conv.i.v
pushref.i 16777903
call.i draw_sprite(argc=4)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
exit.i

:[7]
pushglb.v global.seed_number
push.s "Seed: {0}"@9151
conv.s.v
call.i @@string@@(argc=2)
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.draw
pushi.e 50
conv.i.v
pushi.e 200
conv.i.v
dup.e 2 16
callv.v 2
popz.v
pushi.e 0
pop.v.i local._i

:[8]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [end]

:[9]
pushi.e 0
pop.v.i local._j

:[10]
pushloc.v local._j
pushglb.v global.playersManager
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pushi.e -9
push.v [stacktop]self.hpPreviousTurn
call.i array_length(argc=1)
cmp.v.v LT
bf [15]

:[11]
pushglb.v global.playersManager
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pushi.e -9
pushloc.v local._j
conv.v.i
push.v [array]self.hpPreviousTurn
pop.v.v local._e
pushglb.v global.fightManager
dup.v 0 8
dup.v 0
push.v stacktop.get_fight_counter
callv.v 0
pushi.e 10
sub.i.v
pushloc.v local._j
cmp.v.v EQ
bf [13]

:[12]
pushloc.v local._e
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.draw
pushi.e 100
pushloc.v local._j
pushi.e 16
mul.i.v
add.v.i
pushi.e 110
pushloc.v local._i
pushi.e 50
mul.i.v
add.v.i
dup.e 2 16
callv.v 2
popz.v
b [14]

:[13]
pushloc.v local._e
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.draw
pushi.e 100
pushloc.v local._j
pushi.e 16
mul.i.v
add.v.i
pushi.e 100
pushloc.v local._i
pushi.e 50
mul.i.v
add.v.i
dup.e 2 16
callv.v 2
popz.v

:[14]
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
b [10]

:[15]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [8]

:[end]