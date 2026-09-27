:[0]
push.v builtin.y
pushref.i 40
pushi.e -9
push.v [stacktop]self.bookOffsetY
sub.v.v
call.i round(argc=1)
pop.v.v builtin.yInit

:[end]