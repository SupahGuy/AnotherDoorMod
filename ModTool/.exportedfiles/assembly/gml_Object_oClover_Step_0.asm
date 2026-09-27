; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushbltn.v builtin.current_time
pushi.e 1200
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 40
mul.i.v
pop.v.v builtin.offsetCloverX
pushbltn.v builtin.current_time
pushi.e 600
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 16
mul.i.v
pop.v.v builtin.offsetCloverY
pushi.e 0
pop.v.i local._i

:[1]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [13]

:[2]
pushglb.v global.playersManager
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.get_cursor
callv.v 1
pop.v.v local._cursor
pushloc.v local._cursor
pushi.e -4
cmp.i.v NEQ
bf [12]

:[3]
pushloc.v local._i
call.i gml_Script_InputPlayerGetGhost(argc=1)
conv.v.b
not.b
bt [8]

:[4]
pushloc.v local._i
call.i gml_Script_InputPlayerGetGhost(argc=1)
conv.v.b
bf [6]

:[5]
pushloc.v local._cursor
pushi.e -9
push.v [stacktop]self.isCursorVisible
conv.v.b
b [7]

:[6]
push.e 0

:[7]
b [9]

:[8]
push.e 1

:[9]
bf [12]

:[10]
push.v builtin.y
push.v builtin.x
pushloc.v local._cursor
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._cursor
pushi.e -9
push.v [stacktop]self.x
call.i point_distance(argc=4)
pop.v.v local._distance
pushloc.v local._distance
push.v builtin.distanceMax
cmp.v.v LT
bf [12]

:[11]
pushloc.v local._cursor
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._cursor
pushi.e -9
push.v [stacktop]self.x
push.v builtin.y
push.v builtin.x
call.i point_direction(argc=4)
pop.v.v local._dir
pushi.e 8
pushi.e 1
pushloc.v local._distance
push.v builtin.distanceMax
div.v.v
sub.v.i
mul.v.i
pop.v.v local._force
push.v builtin.offsetMouseX
pushloc.v local._dir
pushi.e 180
add.i.v
pushloc.v local._force
call.i lengthdir_x(argc=2)
add.v.v
pop.v.v builtin.offsetMouseX
push.v builtin.offsetMouseY
pushloc.v local._dir
pushi.e 180
add.i.v
pushloc.v local._force
call.i lengthdir_y(argc=2)
add.v.v
pop.v.v builtin.offsetMouseY

:[12]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [1]

:[13]
push.v builtin.offsetMouseX
push.d 0.9
mul.d.v
pop.v.v builtin.offsetMouseX
push.v builtin.offsetMouseY
push.d 0.9
mul.d.v
pop.v.v builtin.offsetMouseY
push.v builtin.xInit
push.v builtin.offsetCloverX
add.v.v
push.v builtin.offsetMouseX
add.v.v
pop.v.v builtin.x
push.v builtin.yInit
push.v builtin.offsetCloverY
add.v.v
push.v builtin.offsetMouseY
add.v.v
pop.v.v builtin.y
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
push.v builtin.y
pushi.e 8
add.i.v
push.v builtin.y
pushi.e 8
sub.i.v
push.v builtin.x
pushi.e 8
add.i.v
push.v builtin.x
pushi.e 8
sub.i.v
push.v builtin.particlesEmmiter
push.v builtin.particlesSystem
call.i part_emitter_region(argc=8)
popz.v
pushi.e -1
conv.i.v
push.v builtin.particlesType
push.v builtin.particlesEmmiter
push.v builtin.particlesSystem
call.i part_emitter_stream(argc=4)
popz.v

:[end]