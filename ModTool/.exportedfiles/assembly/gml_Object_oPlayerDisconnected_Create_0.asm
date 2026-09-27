; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushglb.v global.waitingList
push.v builtin.id
dup.v 1 8
dup.v 0
push.v stacktop.set
callv.v 1
popz.v
push.s "online._someoneHasLeftTitle"@10911
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
push.s "online._someoneHasLeftDesc"@10912
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
pushi.e 16
pop.v.i builtin.controllerSpacing
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.wannaWait
pushi.e 0
pop.v.i builtin.wannaContinueCounter
pushi.e 0
pop.v.i local._i

:[1]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [3]

:[2]
pushi.e 1
conv.b.v
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.wannaWait
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [1]

:[3]
pushi.e 0
pop.v.i builtin.numberPlayersConnected
pushi.e 0
pop.v.i local._i

:[4]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [8]

:[5]
pushglb.v global.playersManager
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.is_connected
callv.v 1
conv.v.b
bf [7]

:[6]
push.v builtin.numberPlayersConnected
push.e 1
add.i.v
pop.v.v builtin.numberPlayersConnected

:[7]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [4]

:[8]
b [10]

> gml_Script_anon@647@gml_Object_oPlayerDisconnected_Create_0 (locals=0, argc=0)
:[9]
push.s "online._someoneHasLeftTitle"@10911
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
push.s "online._someoneHasLeftDesc"@10912
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
exit.i

:[10]
push.i [function]gml_Script_anon@647@gml_Object_oPlayerDisconnected_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.update_text
push.l 1
conv.l.v
push.l 2
conv.l.v
b [12]

> gml_Script____struct___485@gml_Object_oPlayerDisconnected_Create_0 (locals=0, argc=0)
:[11]
call.i @@SetStatic@@(argc=0)
pushref.i 16777295
pop.v.v self.sprite_index
push.s "global._doNotWait"@10918
pop.v.s self.label
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.alignH
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.alignV
exit.i

:[12]
push.i [function]gml_Script____struct___485@gml_Object_oPlayerDisconnected_Create_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___485
call.i @@NewGMLObject@@(argc=3)
pushref.i 33
push.v builtin.depth
pushi.e 1
sub.i.v
pushglb.v global.gameHeight
pushi.e 32
sub.i.v
push.v builtin.x
call.i instance_create_depth(argc=5)
pop.v.v builtin.btnWannaLeave
b [24]

> gml_Script_anon@1202@gml_Object_oPlayerDisconnected_Create_0 (locals=3, argc=0)
:[13]
pushi.e 0
pop.v.b local._someoneWantToWait
push.v builtin.numberPlayersConnected
pop.v.v builtin.wannaContinueCounter
pushi.e 0
pop.v.i local._i

:[14]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [21]

:[15]
pushglb.v global.playersManager
pushloc.v local._i
dup.v 1 8
dup.v 0
push.v stacktop.is_connected
callv.v 1
pop.v.v local._state
pushloc.v local._state
pushi.e 1
cmp.b.v EQ
bf [17]

:[16]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.wannaWait
pushi.e 1
cmp.b.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
pushi.e 1
pop.v.b local._someoneWantToWait
push.v builtin.wannaContinueCounter
push.e 1
sub.i.v
pop.v.v builtin.wannaContinueCounter

:[20]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [14]

:[21]
pushloc.v local._someoneWantToWait
conv.v.b
not.b
bf [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
exit.i

:[24]
push.i [function]gml_Script_anon@1202@gml_Object_oPlayerDisconnected_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.check_counter_no_wait

:[end]