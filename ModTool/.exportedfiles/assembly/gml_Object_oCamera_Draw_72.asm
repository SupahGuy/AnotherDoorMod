:[0]
pushbltn.v builtin.view_current
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
push.v builtin.cam3D
call.i camera_apply(argc=1)
popz.v

:[end]