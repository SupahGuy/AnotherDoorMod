; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushbltn.v builtin.room
pushref.i 50331655
cmp.v.v NEQ
bf [2]

:[1]
exit.i

:[2]
push.v builtin.btnCursor
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[3]
push.v builtin.btnCursor
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [6]

:[4]
push.v builtin.btnCursor
dup.v 0 8
dup.v 0
push.v stacktop.who_released
callv.v 0
pop.v.v local._clickNbr
pushloc.v local._clickNbr
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [6]

:[5]
pushglb.v global.playersManager
pushloc.v local._clickNbr
dup.v 1 8
dup.v 0
push.v stacktop.get_cursor
callv.v 1
pop.v.v local._cursor
pushloc.v local._cursor
pushi.e 1
conv.b.v
pushloc.v local._clickNbr
pushloc.v local._cursor
pushi.e -9
push.v [stacktop]self.isCursorVisible
conv.v.b
not.b
conv.b.v
dup.v 3 8
dup.v 0
push.v stacktop.show_cursor
callv.v 3
popz.v

:[6]
push.v builtin.btnSettings
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[7]
push.v builtin.btnSettings
dup.v 0 8
dup.v 0
push.v stacktop.is_released
callv.v 0
conv.v.b
bf [end]

:[8]
pushref.i 54
pushi.e -9
pushenv [10]

:[9]
call.i @@This@@(argc=0)
push.v builtin.switch_state
callv.v 0
popz.v

:[10]
popenv [9]

:[end]