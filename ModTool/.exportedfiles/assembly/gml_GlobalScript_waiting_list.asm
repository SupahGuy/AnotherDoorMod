:[0]
b [27]

> gml_Script_waiting_list (locals=0, argc=0)
:[1]
call.i @@SetStatic@@(argc=0)
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.waitingList
pushi.e 0
pop.v.i builtin.waitingListCount
b [5]

> gml_Script_anon@234@waiting_list@waiting_list (locals=0, argc=1)
:[2]
push.v arg.argument0
call.i @@This@@(argc=0)
push.v builtin.is_in_list
callv.v 1
conv.v.b
not.b
bf [4]

:[3]
push.v arg.argument0
push.v builtin.waitingList
call.i array_push(argc=2)
popz.v
push.v builtin.waitingListCount
push.e 1
add.i.v
pop.v.v builtin.waitingListCount

:[4]
exit.i

:[5]
push.i [function]gml_Script_anon@234@waiting_list@waiting_list
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set
b [7]

> gml_Script_anon@852@waiting_list@waiting_list (locals=0, argc=0)
:[6]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.waitingList
pushi.e 0
pop.v.i builtin.waitingListCount
exit.i

:[7]
push.i [function]gml_Script_anon@852@waiting_list@waiting_list
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.empty
b [11]

> gml_Script_anon@1049@waiting_list@waiting_list (locals=1, argc=1)
:[8]
push.v arg.argument0
push.v builtin.waitingList
call.i array_get_index(argc=2)
pop.v.v local._index
pushloc.v local._index
pushi.e -1
cmp.i.v NEQ
bf [10]

:[9]
pushi.e 1
conv.i.v
pushloc.v local._index
push.v builtin.waitingList
call.i array_delete(argc=3)
popz.v
push.v builtin.waitingListCount
push.e 1
sub.i.v
pop.v.v builtin.waitingListCount

:[10]
exit.i

:[11]
push.i [function]gml_Script_anon@1049@waiting_list@waiting_list
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.remove
b [14]

> gml_Script_anon@1842@waiting_list@waiting_list (locals=0, argc=0)
:[12]
push.v builtin.waitingList
ret.v

:[13]
exit.i

:[14]
push.i [function]gml_Script_anon@1842@waiting_list@waiting_list
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_waiting_list
b [17]

> gml_Script_anon@2271@waiting_list@waiting_list (locals=0, argc=0)
:[15]
call.i @@This@@(argc=0)
push.v builtin.get_waiting_list_count
callv.v 0
pushi.e 0
cmp.i.v EQ
conv.b.v
ret.v

:[16]
exit.i

:[17]
push.i [function]gml_Script_anon@2271@waiting_list@waiting_list
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_waiting_list_empty
b [20]

> gml_Script_anon@2444@waiting_list@waiting_list (locals=0, argc=0)
:[18]
push.v builtin.waitingListCount
ret.v

:[19]
exit.i

:[20]
push.i [function]gml_Script_anon@2444@waiting_list@waiting_list
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.get_waiting_list_count
b [26]

> gml_Script_anon@2624@waiting_list@waiting_list (locals=1, argc=1)
:[21]
push.v arg.argument0
push.v builtin.waitingList
call.i array_get_index(argc=2)
pop.v.v local._index
pushloc.v local._index
pushi.e -1
cmp.i.v NEQ
bf [24]

:[22]
pushi.e 1
conv.b.v
ret.v

:[23]
b [25]

:[24]
pushi.e 0
conv.b.v
ret.v

:[25]
exit.i

:[26]
push.i [function]gml_Script_anon@2624@waiting_list@waiting_list
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.is_in_list
exit.i

:[27]
push.i [function]gml_Script_waiting_list
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.waiting_list
popz.v

:[end]