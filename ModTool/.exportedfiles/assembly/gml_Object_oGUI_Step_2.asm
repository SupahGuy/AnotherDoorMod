; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushi.e 0
pop.v.i local._i

:[1]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [end]

:[2]
pushi.e 1
conv.b.v
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.can_hover
pushi.e 1
conv.b.v
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.can_click
pushi.e 0
conv.b.v
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.release_any_element
pushi.e 0
conv.b.v
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.release_any_blocking_element
pushbltn.v builtin.undefined
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.element_in_click
pushbltn.v builtin.undefined
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.element_in_release
pushbltn.v builtin.undefined
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.element_in_hover_enter
pushbltn.v builtin.undefined
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.element_in_hover_leave
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [1]

:[end]