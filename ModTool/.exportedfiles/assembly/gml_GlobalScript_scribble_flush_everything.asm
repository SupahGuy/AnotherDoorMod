:[0]
b [10]

> gml_Script_scribble_flush_everything (locals=2, argc=0)
:[1]
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__cache_state
pushi.e -9
pushenv [9]

:[2]
pushi.e 0
pop.v.i local._i
push.v builtin.__ecache_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [4]

:[3]
pushi.e 1
pushi.e -1
pushloc.v local._i
conv.v.i
push.v [array]self.__ecache_array
pushi.e -9
pop.v.b [stacktop]self.__flushed
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [3]

:[4]
popz.i
pushi.e 0
pop.v.i local._i
push.v builtin.__gc_grid_ids
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [6]

:[5]
pushi.e -6
pushloc.v local._i
conv.v.i
push.v [array]self.__gc_grid_ids
call.i ds_grid_destroy(argc=1)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [5]

:[6]
popz.i
pushi.e 0
conv.i.v
push.v builtin.__gc_grid_refs
call.i array_resize(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.__gc_grid_ids
call.i array_resize(argc=2)
popz.v
push.v builtin.__ecache_dict
call.i variable_struct_get_names(argc=1)
pop.v.v local._names_array
pushi.e 0
pop.v.i local._i
pushloc.v local._names_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [8]

:[7]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._names_array
push.v builtin.__ecache_dict
call.i variable_struct_remove(argc=2)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [7]

:[8]
popz.i
pushi.e 0
conv.i.v
push.v builtin.__ecache_name_array
call.i array_resize(argc=2)
popz.v
pushi.e 0
conv.i.v
push.v builtin.__ecache_array
call.i array_resize(argc=2)
popz.v
call.i gml_Script___scribble_flush_nodels(argc=0)
popz.v

:[9]
popenv [2]
exit.i

:[10]
push.i [function]gml_Script_scribble_flush_everything
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_flush_everything
popz.v

:[end]