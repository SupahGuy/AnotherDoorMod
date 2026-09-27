; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i gml_Script_live_call(argc=0)
conv.v.b
bf [2]

:[1]
pushglb.v global.live_result
ret.v

:[2]
call.i @@This@@(argc=0)
push.v builtin.is_visible
callv.v 0
conv.v.b
not.b
bf [4]

:[3]
exit.i

:[4]
call.i event_inherited(argc=0)
popz.v
pushi.e 0
pop.v.i local._offset
push.v builtin.stateGui
dup.v 0
push.l 2
cmp.l.v EQ
bt [7]

:[5]
dup.v 0
push.l 3
cmp.l.v EQ
bt [7]

:[6]
b [8]

:[7]
pushi.e 1
pop.v.i local._offset
b [8]

:[8]
popz.v
push.v builtin.label
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [end]

:[9]
push.v builtin.labelDraw
push.v builtin.y
pushloc.v local._offset
add.v.v
push.v builtin.theHeight
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushglb.v global.zoom
mul.v.v
push.v builtin.x
push.v builtin.theWidth
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v

:[end]