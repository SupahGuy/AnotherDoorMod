; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i event_inherited(argc=0)
popz.v
call.i @@This@@(argc=0)
push.v builtin.is_active
callv.v 0
conv.v.b
bf [7]

:[1]
pushref.i 11
pushi.e -9
pushenv [6]

:[2]
push.v other.x
pop.v.v local._xMin
push.v other.x
push.v other.theSpriteWidth
add.v.v
pop.v.v local._xMax
pushloc.v local._xMax
pushloc.v local._xMin
push.v builtin.x
pushi.e 3
add.i.v
call.i clamp(argc=3)
pop.v.v local._x
push.v other.maxRangeVisualValue
push.v other.minRangeVisualValue
pushloc.v local._xMax
pushloc.v local._xMin
pushloc.v local._x
call.i gml_Script_map_value(argc=5)
pop.v.v other.newValueVisual
push.v other.newValueVisual
push.v other.newValueVisual
push.v other.rangeStep
mod.v.v
sub.v.v
pop.v.v other.newValueVisual
push.v other.newValueVisual
push.v other.valueVisual
cmp.v.v NEQ
bf [6]

:[3]
call.i @@Other@@(argc=0)
dup.v 0 8
dup.v 0
push.v stacktop.is_pressed
callv.v 0
conv.v.b
bf [5]

:[4]
call.i @@Other@@(argc=0)
pushi.e 1
conv.b.v
push.v other.newValueVisual
dup.v 2 8
dup.v 0
push.v stacktop.update_value
callv.v 2
popz.v
b [6]

:[5]
call.i @@Other@@(argc=0)
push.v other.newValueVisual
dup.v 1 8
dup.v 0
push.v stacktop.update_value
callv.v 1
popz.v

:[6]
popenv [2]

:[7]
push.d 0.5
conv.d.v
push.v builtin.sliderDotXTo
push.v builtin.sliderDotX
call.i lerp(argc=3)
pop.v.v builtin.sliderDotX

:[end]