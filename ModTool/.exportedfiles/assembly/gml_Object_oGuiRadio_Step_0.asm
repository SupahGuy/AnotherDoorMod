; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.stateGui
dup.v 0
push.l 0
cmp.l.v EQ
bt [6]

:[1]
dup.v 0
push.l 1
cmp.l.v EQ
bt [14]

:[2]
dup.v 0
push.l 2
cmp.l.v EQ
bt [19]

:[3]
dup.v 0
push.l 3
cmp.l.v EQ
bt [22]

:[4]
dup.v 0
push.l 6
cmp.l.v EQ
bt [25]

:[5]
b [28]

:[6]
push.v builtin.stateGuiPrev
push.v builtin.stateGui
cmp.v.v NEQ
bf [13]

:[7]
push.v builtin.radioChecked
conv.v.b
bf [9]

:[8]
push.v builtin.spriteActive
pop.v.v builtin.sprite_index
b [10]

:[9]
push.v builtin.spriteDefault
pop.v.v builtin.sprite_index

:[10]
pushi.e 0
pop.v.i local._i

:[11]
pushloc.v local._i
push.v builtin.tooltipLength
cmp.v.v LT
bf [13]

:[12]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.tooltip
dup.v 0 8
dup.v 0
push.v stacktop.hide
callv.v 0
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [11]

:[13]
b [28]

:[14]
push.v builtin.stateGuiPrev
push.v builtin.stateGui
cmp.v.v NEQ
bf [18]

:[15]
push.v builtin.spriteHover
pop.v.v builtin.sprite_index
pushi.e 0
pop.v.i local._i

:[16]
pushloc.v local._i
push.v builtin.tooltipLength
cmp.v.v LT
bf [18]

:[17]
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.tooltip
dup.v 0 8
dup.v 0
push.v stacktop.show
callv.v 0
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [16]

:[18]
b [28]

:[19]
push.v builtin.stateGuiPrev
push.v builtin.stateGui
cmp.v.v NEQ
bf [21]

:[20]
push.v builtin.spriteActive
pop.v.v builtin.sprite_index

:[21]
b [28]

:[22]
push.v builtin.stateGuiPrev
push.v builtin.stateGui
cmp.v.v NEQ
bf [24]

:[23]
push.v builtin.spriteActiveHover
pop.v.v builtin.sprite_index

:[24]
b [28]

:[25]
push.v builtin.stateGuiPrev
push.v builtin.stateGui
cmp.v.v NEQ
bf [27]

:[26]
push.v builtin.spriteDisabled
pop.v.v builtin.sprite_index

:[27]
b [28]

:[28]
popz.v
push.v builtin.stateGui
pop.v.v builtin.stateGuiPrev
push.v builtin.stateGuiNext
pop.v.v builtin.stateGui
call.i @@This@@(argc=0)
push.v builtin.is_active
callv.v 0
conv.v.b
bf [end]

:[29]
call.i @@This@@(argc=0)
push.v builtin.set_radio_checked
callv.v 0
popz.v

:[end]