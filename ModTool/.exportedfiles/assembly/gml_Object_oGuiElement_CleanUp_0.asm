; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushglb.v global.__ElementController
call.i instance_exists(argc=1)
conv.v.b
bf [14]

:[1]
pushi.e 0
pop.v.i local._p

:[2]
pushloc.v local._p
pushglb.v global.playersCount
cmp.v.v LT
bf [14]

:[3]
pushglb.v global.__ElementController
pushi.e -9
pushloc.v local._p
conv.v.i
push.v [array]self.element_in_focus
push.v builtin.id
cmp.v.v EQ
bf [5]

:[4]
pushbltn.v builtin.undefined
pushglb.v global.__ElementController
pushi.e -9
pushloc.v local._p
conv.v.i
pop.v.v [array]self.element_in_focus

:[5]
pushglb.v global.__ElementController
pushi.e -9
pushloc.v local._p
conv.v.i
push.v [array]self.element_in_hover
push.v builtin.id
cmp.v.v EQ
bf [7]

:[6]
pushbltn.v builtin.undefined
pushglb.v global.__ElementController
pushi.e -9
pushloc.v local._p
conv.v.i
pop.v.v [array]self.element_in_hover

:[7]
pushglb.v global.__ElementController
pushi.e -9
pushloc.v local._p
conv.v.i
push.v [array]self.element_in_release
push.v builtin.id
cmp.v.v EQ
bf [9]

:[8]
pushbltn.v builtin.undefined
pushglb.v global.__ElementController
pushi.e -9
pushloc.v local._p
conv.v.i
pop.v.v [array]self.element_in_release

:[9]
pushglb.v global.__ElementController
pushi.e -9
pushloc.v local._p
conv.v.i
push.v [array]self.element_in_active
push.v builtin.id
cmp.v.v EQ
bf [11]

:[10]
pushbltn.v builtin.undefined
pushglb.v global.__ElementController
pushi.e -9
pushloc.v local._p
conv.v.i
pop.v.v [array]self.element_in_active

:[11]
pushglb.v global.__ElementController
pushi.e -9
pushloc.v local._p
conv.v.i
push.v [array]self.element_in_click
push.v builtin.id
cmp.v.v EQ
bf [13]

:[12]
pushbltn.v builtin.undefined
pushglb.v global.__ElementController
pushi.e -9
pushloc.v local._p
conv.v.i
pop.v.v [array]self.element_in_click

:[13]
push.v local._p
push.e 1
add.i.v
pop.v.v local._p
b [2]

:[14]
push.v builtin.tooltipLength
pushi.e 0
cmp.i.v GT
bf [end]

:[15]
pushi.e 0
pop.v.i local._i

:[16]
pushloc.v local._i
push.v builtin.tooltipLength
cmp.v.v LT
bf [end]

:[17]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.tooltip
call.i instance_destroy(argc=1)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [16]

:[end]