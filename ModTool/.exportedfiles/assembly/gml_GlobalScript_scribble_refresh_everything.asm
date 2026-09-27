:[0]
b [9]

> gml_Script_scribble_refresh_everything (locals=3, argc=0)
:[1]
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__cache_state
pushi.e -9
pushenv [8]

:[2]
push.v builtin.__ecache_weak_array
pop.v.v local._array
pushi.e 0
pop.v.i local._i
pushloc.v local._array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [7]

:[3]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._array
pop.v.v local._weak_ref
pushloc.v local._weak_ref
call.i weak_ref_alive(argc=1)
conv.v.b
bf [5]

:[4]
pushloc.v local._weak_ref
pushi.e -9
push.v [stacktop]self.ref
dup.v 0 8
dup.v 0
push.v stacktop.refresh
callv.v 0
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [6]

:[5]
pushi.e 1
conv.i.v
pushloc.v local._i
pushloc.v local._array
call.i array_delete(argc=3)
popz.v

:[6]
pushi.e 1
sub.i.i
dup.i 0
bt [3]

:[7]
popz.i

:[8]
popenv [2]
exit.i

:[9]
push.i [function]gml_Script_scribble_refresh_everything
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_refresh_everything
popz.v

:[end]