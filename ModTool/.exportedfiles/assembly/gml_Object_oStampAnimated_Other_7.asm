:[0]
push.v builtin.image_number
pushi.e 1
sub.i.v
pop.v.v builtin.image_index
pushi.e 0
pop.v.i builtin.image_speed
call.i instance_destroy(argc=0)
popz.v

:[end]