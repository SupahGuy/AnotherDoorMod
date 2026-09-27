:[0]
push.s "settings._controllerDisconnected"@8966
conv.s.v
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.title
push.v builtin.title
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
dup.v 2 8
dup.v 0
push.v stacktop.get_bbox
callv.v 2
pushi.e -9
push.v [stacktop]self.height
pop.v.v builtin.titleH
push.s "settings._controllerDisconnected2"@8968
conv.s.v
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.wrap
pushi.e 192
pushglb.v global.zoom
mul.v.i
dup.e 2 8
callv.v 1
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.desc
push.v builtin.desc
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
dup.v 2 8
dup.v 0
push.v stacktop.get_bbox
callv.v 2
pushi.e -9
push.v [stacktop]self.height
pop.v.v builtin.descH
pushi.e 8
pop.v.i builtin.txtSpacing
pushi.e 24
pop.v.i builtin.controllerSpacing
push.d 0.3
conv.d.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.animSuccess
b [2]

> gml_Script_anon@360@gml_Object_oControllerDisconnected_Create_0 (locals=0, argc=0)
:[1]
push.s "settings._controllerDisconnected2"@8968
conv.s.v
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.wrap
pushi.e 192
pushglb.v global.zoom
mul.v.i
dup.e 2 8
callv.v 1
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
dup.e 2 16
callv.v 2
pop.v.v builtin.desc
exit.i

:[2]
push.i [function]gml_Script_anon@360@gml_Object_oControllerDisconnected_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_text

:[end]