; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i event_inherited(argc=0)
popz.v
pushglb.v global.__ElementController
pop.v.v builtin.controller
push.v builtin.sprH
push.v builtin.labelH
pushglb.v global.zoom
div.v.v
sub.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pop.v.v local._padY
pushi.e 8
conv.i.v
pushloc.v local._padY
pushi.e 8
conv.i.v
pushloc.v local._padY
call.i @@This@@(argc=0)
push.v builtin.set_padding
callv.v 4
popz.v
pushref.i 33554443
call.i @@This@@(argc=0)
push.v builtin.set_hover_sound
callv.v 1
popz.v

:[end]