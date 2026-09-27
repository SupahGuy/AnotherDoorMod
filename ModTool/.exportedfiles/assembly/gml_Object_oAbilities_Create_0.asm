; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e 1
conv.b.v
call.i @@This@@(argc=0)
push.v builtin.set_disabled
callv.v 1
popz.v
pushref.i 16777235
pop.v.v local._newSprite
push.v builtin.theType
dup.v 0
push.l 0
cmp.l.v EQ
bt [3]

:[1]
b [4]

:[2]
b [5]

:[3]
pushref.i 16777235
pop.v.v local._newSprite
push.s ""@61
pop.v.s local._tooltipName
push.s ""@61
pop.v.s local._tooltipDesc
b [5]

:[4]
pushref.i 16777235
pop.v.v local._newSprite
push.s ""@61
pop.v.s local._tooltipName
push.s ""@61
pop.v.s local._tooltipDesc
b [5]

:[5]
popz.v
pushloc.v local._newSprite
call.i @@This@@(argc=0)
push.v builtin.define_sprite
callv.v 1
popz.v
pushi.e 0
pop.v.i builtin.imgIndex
push.l 0
conv.l.v
push.l 2
conv.l.v
pushloc.v local._tooltipDesc
pushloc.v local._tooltipName
push.v builtin.id
push.i [function]gml_Script_cTooltip
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local._structTooltip
pushloc.v local._structTooltip
pushref.i 61
pushi.e 0
conv.i.v
push.v builtin.y
pushi.e 16
sub.i.v
push.v builtin.x
call.i instance_create_depth(argc=5)
pop.v.v local._tooltip
pushi.e 1
pushloc.v local._tooltip
pushi.e -9
pop.v.b [stacktop]self.persistent
pushloc.v local._tooltip
call.i @@This@@(argc=0)
push.v builtin.set_tooltip
callv.v 1
popz.v
push.l 0
pop.v.l builtin.state
pushbltn.v builtin.undefined
pop.v.v builtin.stateNext
pushbltn.v builtin.undefined
pop.v.v builtin.statePrev

:[end]