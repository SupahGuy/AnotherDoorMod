:[0]
pushi.e 1
pop.v.b builtin.view_enabled
pushi.e 1
conv.b.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.view_visible
pushglb.v global.gameWidth
pushi.e -6
pushi.e 0
pop.v.v [array]self.view_wport
pushglb.v global.gameHeight
pushi.e -6
pushi.e 0
pop.v.v [array]self.view_hport
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_set_view_size(argc=3)
popz.v

:[end]