; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.v builtin.state
push.l 0
cmp.l.v EQ
bf [end]

:[1]
call.i steam_initialised(argc=0)
conv.v.b
bf [6]

:[2]
push.s "+connect_lobby"@10411
conv.s.v
pushglb.v global.parameters
call.i array_get_index(argc=2)
pop.v.v local._ind
pushloc.v local._ind
pushi.e -1
cmp.i.v NEQ
bf [5]

:[3]
call.i steam_lobby_get_member_count(argc=0)
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
call.i @@Global@@(argc=0)
pushi.e -9
pushloc.v local._ind
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.parameters
call.i int64(argc=1)
pop.v.v local._lobby
pushloc.v local._lobby
call.i steam_lobby_join_id(argc=1)
popz.v
push.l 6
pop.v.l builtin.stateNext

:[5]
b [end]

:[6]
push.v builtin.counterLobbyJoinParam
pushi.e 3
cmp.i.v LT
bf [end]

:[7]
push.v builtin.counterLobbyJoinParam
push.e 1
add.i.v
pop.v.v builtin.counterLobbyJoinParam
pushi.e 60
conv.i.v
pushi.e -6
pushi.e 0
pop.v.v [array]self.alarm

:[end]