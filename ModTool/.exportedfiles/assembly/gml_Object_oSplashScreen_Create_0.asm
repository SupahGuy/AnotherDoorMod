; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushglb.v global.depthManager
push.s "choice"@5014
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 1
sub.i.v
pop.v.v builtin.depth
pushi.e 0
pop.v.b builtin.timerLaunched
b [24]

> gml_Script_anon@100@gml_Object_oSplashScreen_Create_0 (locals=1, argc=0)
:[1]
b [21]

> gml_Script_anon@139@anon@100@gml_Object_oSplashScreen_Create_0 (locals=0, argc=0)
:[2]
pushref.i 5
pushi.e -9
pushenv [20]

:[3]
push.s "settings.ini"@4517
conv.s.v
call.i ini_open(argc=1)
popz.v
pushglb.v global.zoomDefault
push.s "zoom"@5381
conv.s.v
push.s "display"@7257
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v global.zoom
pushref.i 54
pushi.e -9
pushenv [17]

:[4]
pushglb.v global.zoom
pushglb.v global.zoomMax
cmp.v.v EQ
bt [6]

:[5]
pushglb.v global.fullScreen
conv.v.b
b [7]

:[6]
push.e 1

:[7]
bf [9]

:[8]
push.v builtin.videoScaleButtonUp
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
b [10]

:[9]
push.v builtin.videoScaleButtonUp
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[10]
pushglb.v global.zoom
pushglb.v global.zoomMin
cmp.v.v EQ
bt [12]

:[11]
pushglb.v global.fullScreen
conv.v.b
b [13]

:[12]
push.e 1

:[13]
bf [15]

:[14]
push.v builtin.videoScaleButtonDown
pushi.e 1
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v
b [16]

:[15]
push.v builtin.videoScaleButtonDown
pushi.e 0
conv.b.v
dup.v 1 8
dup.v 0
push.v stacktop.set_disabled
callv.v 1
popz.v

:[16]
pushglb.v global.zoom
call.i gml_Script_scribble(argc=1)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
dup.e 2 16
callv.v 2
push.v builtin.structElements
pushi.e -9
push.v [stacktop]self.videoScaleValue
pushi.e -9
push.v [stacktop]self.data
pushi.e -9
pop.v.v [stacktop]self.element

:[17]
popenv [4]
call.i ini_close(argc=0)
popz.v
pushglb.v global.fullScreen
conv.v.b
bf [19]

:[18]
pushi.e 0
conv.b.v
call.i window_set_showborder(argc=1)
popz.v
pushi.e 1
conv.b.v
call.i window_set_fullscreen(argc=1)
popz.v
call.i display_get_width(argc=0)
pushglb.v global.gameWidth
div.v.v
pop.v.v global.zoom
pushi.e 11
conv.i.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.alarm
b [20]

:[19]
call.i @@This@@(argc=0)
push.v builtin.resize
callv.v 0
popz.v

:[20]
popenv [3]
pushref.i 50331656
call.i room_goto(argc=1)
popz.v
exit.i

:[21]
push.i [function]gml_Script_anon@139@anon@100@gml_Object_oSplashScreen_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v local._callbackRoom
pushloc.v local._callbackRoom
b [23]

> gml_Script____struct___592@anon@100@gml_Object_oSplashScreen_Create_0 (locals=0, argc=0)
:[22]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.leaveCallback
exit.i

:[23]
push.i [function]gml_Script____struct___592@anon@100@gml_Object_oSplashScreen_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___592
call.i @@NewGMLObject@@(argc=2)
pushref.i 53
pushglb.v global.depthManager
push.s "roomTransition"@4992
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create_depth(argc=5)
popz.v
exit.i

:[24]
push.i [function]gml_Script_anon@100@gml_Object_oSplashScreen_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v local._callback
pushloc.v local._callback
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.v builtin.id
push.i [function]gml_Script_myTimer
conv.i.v
call.i @@NewGMLObject@@(argc=9)
pop.v.v builtin.timerLogoAD

:[end]