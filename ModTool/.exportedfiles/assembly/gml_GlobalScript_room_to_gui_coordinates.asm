:[0]
b [3]

> gml_Script_room_to_gui_coordinates (locals=8, argc=2)
:[1]
pushi.e -6
pushi.e 0
push.v [array]self.view_xport
pop.v.v local.cl
pushi.e -6
pushi.e 0
push.v [array]self.view_yport
pop.v.v local.ct
pushbltn.v builtin.argument0
pushloc.v local.cl
sub.v.v
pop.v.v local.off_x
pushbltn.v builtin.argument1
pushloc.v local.ct
sub.v.v
pop.v.v local.off_y
pushloc.v local.off_x
pushi.e -6
pushi.e 0
push.v [array]self.view_wport
div.v.v
pop.v.v local.off_x_percent
pushloc.v local.off_y
pushi.e -6
pushi.e 0
push.v [array]self.view_hport
div.v.v
pop.v.v local.off_y_percent
pushloc.v local.off_x_percent
pushglb.v global.gameWidth
mul.v.v
pop.v.v local.gui_x
pushloc.v local.off_y_percent
pushglb.v global.gameHeight
mul.v.v
pop.v.v local.gui_y
push.v local.gui_x
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_x(argc=1)
sub.v.v
pop.v.v local.gui_x
push.v local.gui_y
pushi.e -6
pushi.e 0
push.v [array]self.view_camera
call.i camera_get_view_y(argc=1)
sub.v.v
pop.v.v local.gui_y
pushloc.v local.gui_y
pushloc.v local.gui_x
call.i @@NewGMLArray@@(argc=2)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_room_to_gui_coordinates
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.room_to_gui_coordinates
popz.v

:[end]