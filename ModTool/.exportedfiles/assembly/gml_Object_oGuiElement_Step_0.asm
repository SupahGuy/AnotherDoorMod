; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
call.i @@This@@(argc=0)
push.v builtin.is_visible
callv.v 0
conv.v.b
not.b
bf [2]

:[1]
exit.i

:[2]
push.v builtin.stateGui
dup.v 0
push.l 0
cmp.l.v EQ
bt [8]

:[3]
dup.v 0
push.l 1
cmp.l.v EQ
bt [21]

:[4]
dup.v 0
push.l 2
cmp.l.v EQ
bt [36]

:[5]
dup.v 0
push.l 3
cmp.l.v EQ
bt [43]

:[6]
dup.v 0
push.l 6
cmp.l.v EQ
bt [58]

:[7]
b [65]

:[8]
push.v builtin.stateGuiPrev
push.v builtin.stateGui
cmp.v.v NEQ
bf [20]

:[9]
push.v builtin.isPaused
conv.v.b
not.b
bf [11]

:[10]
push.v builtin.spriteDefault
pop.v.v builtin.mask_index

:[11]
push.v builtin.sprManagedByParent
conv.v.b
bf [13]

:[12]
push.v builtin.spriteDefault
pop.v.v builtin.sprite_index

:[13]
pushi.e 0
pop.v.i local._i

:[14]
pushloc.v local._i
push.v builtin.tooltipLength
cmp.v.v LT
bf [16]

:[15]
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
b [14]

:[16]
push.v builtin.stateGuiPrev
push.l 6
cmp.l.v EQ
bf [20]

:[17]
pushref.i 11
pushi.e -9
pushenv [19]

:[18]
call.i @@This@@(argc=0)
push.v builtin.check_hover
callv.v 0
popz.v

:[19]
popenv [18]

:[20]
b [65]

:[21]
push.v builtin.stateGuiPrev
push.v builtin.stateGui
cmp.v.v NEQ
bf [35]

:[22]
push.v builtin.sprManagedByParent
conv.v.b
bf [24]

:[23]
push.v builtin.spriteHover
pop.v.v builtin.sprite_index

:[24]
push.v builtin.hoverSnd
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [26]

:[25]
push.v builtin.stateGuiPrev
push.l 0
cmp.l.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [32]

:[28]
push.v builtin.hoverSndRespectOrder
conv.v.b
bf [30]

:[29]
pushi.e -6
push.v builtin.hoverSndOrder
conv.v.i
push.v [array]self.hoverSnd
b [31]

:[30]
pushi.e -6
push.v builtin.hoverSnd
call.i array_length(argc=1)
pushi.e 1
sub.i.v
call.i irandom(argc=1)
conv.v.i
push.v [array]self.hoverSnd

:[31]
pop.v.v local._soundToPlay
push.d 1.1
conv.d.v
push.d 0.9
conv.d.v
call.i random_range(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushloc.v local._soundToPlay
call.i audio_play_sound(argc=6)
popz.v
push.v builtin.hoverSndOrder
pushi.e 1
add.i.v
push.v builtin.hoverSnd
call.i array_length(argc=1)
mod.v.v
pop.v.v builtin.hoverSndOrder

:[32]
pushi.e 0
pop.v.i local._i

:[33]
pushloc.v local._i
push.v builtin.tooltipLength
cmp.v.v LT
bf [35]

:[34]
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
b [33]

:[35]
b [65]

:[36]
push.v builtin.stateGuiPrev
push.v builtin.stateGui
cmp.v.v NEQ
bf [42]

:[37]
push.v builtin.sprManagedByParent
conv.v.b
bf [39]

:[38]
push.v builtin.spriteActive
pop.v.v builtin.sprite_index

:[39]
pushi.e 0
pop.v.i local._i

:[40]
pushloc.v local._i
push.v builtin.tooltipLength
cmp.v.v LT
bf [42]

:[41]
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
b [40]

:[42]
b [65]

:[43]
push.v builtin.stateGuiPrev
push.v builtin.stateGui
cmp.v.v NEQ
bf [57]

:[44]
push.v builtin.sprManagedByParent
conv.v.b
bf [46]

:[45]
push.v builtin.spriteActiveHover
pop.v.v builtin.sprite_index

:[46]
push.v builtin.hoverSnd
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [48]

:[47]
push.v builtin.stateGuiPrev
push.l 2
cmp.l.v EQ
b [49]

:[48]
push.e 0

:[49]
bf [54]

:[50]
push.v builtin.hoverSndRespectOrder
conv.v.b
bf [52]

:[51]
pushi.e -6
push.v builtin.hoverSndOrder
conv.v.i
push.v [array]self.hoverSnd
b [53]

:[52]
pushi.e -6
push.v builtin.hoverSnd
call.i array_length(argc=1)
pushi.e 1
sub.i.v
call.i irandom(argc=1)
conv.v.i
push.v [array]self.hoverSnd

:[53]
pop.v.v local._soundToPlay
push.d 1.1
conv.d.v
push.d 0.9
conv.d.v
call.i random_range(argc=2)
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
pushi.e 0
conv.b.v
pushi.e 1
conv.i.v
pushloc.v local._soundToPlay
call.i audio_play_sound(argc=6)
popz.v
push.v builtin.hoverSndOrder
pushi.e 1
add.i.v
push.v builtin.hoverSnd
call.i array_length(argc=1)
mod.v.v
pop.v.v builtin.hoverSndOrder

:[54]
pushi.e 0
pop.v.i local._i

:[55]
pushloc.v local._i
push.v builtin.tooltipLength
cmp.v.v LT
bf [57]

:[56]
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
b [55]

:[57]
b [65]

:[58]
push.v builtin.stateGuiPrev
push.v builtin.stateGui
cmp.v.v NEQ
bf [64]

:[59]
call.i @@This@@(argc=0)
push.v builtin.cursor_leave
callv.v 0
popz.v
pushref.i 16777648
pop.v.v builtin.mask_index
push.v builtin.sprManagedByParent
conv.v.b
bf [61]

:[60]
push.v builtin.spriteDisabled
pop.v.v builtin.sprite_index

:[61]
pushi.e 0
pop.v.i local._t

:[62]
pushloc.v local._t
push.v builtin.tooltipLength
cmp.v.v LT
bf [64]

:[63]
pushi.e -1
pushloc.v local._t
conv.v.i
push.v [array]self.tooltip
dup.v 0 8
dup.v 0
push.v stacktop.hide
callv.v 0
popz.v
push.v local._t
push.e 1
add.i.v
pop.v.v local._t
b [62]

:[64]
b [65]

:[65]
popz.v
push.v builtin.stateGui
pop.v.v builtin.stateGuiPrev
push.v builtin.stateGuiNext
pop.v.v builtin.stateGui

:[end]