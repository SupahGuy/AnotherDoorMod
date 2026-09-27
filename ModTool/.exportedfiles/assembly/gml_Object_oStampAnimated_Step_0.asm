:[0]
pushref.i 40
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
push.v builtin.yInit
pushref.i 40
pushi.e -9
push.v [stacktop]self.bookOffsetY
add.v.v
pop.v.v builtin.y

:[end]