:[0]
b [52]

> gml_Script___scribble_tick (locals=5, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__state
pop.v.v static._scribble_state
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__cache_state
pop.v.v static._cache_state
pushi.e 0
pop.v.i static._ecache_list_index
pushi.e 0
pop.v.i static._ecache_weak_index
pushi.e 0
pop.v.i static._ecache_name_index
push.v static._cache_state
pushi.e -9
push.v [stacktop]self.__ecache_array
pop.v.v static._ecache_array
push.v static._cache_state
pushi.e -9
push.v [stacktop]self.__ecache_dict
pop.v.v static._ecache_dict
push.v static._cache_state
pushi.e -9
push.v [stacktop]self.__ecache_weak_array
pop.v.v static._ecache_weak_array
push.v static._cache_state
pushi.e -9
push.v [stacktop]self.__ecache_name_array
pop.v.v static._ecache_name_array
pushi.e 0
pop.v.i static._mcache_name_index
push.v static._cache_state
pushi.e -9
push.v [stacktop]self.__mcache_dict
pop.v.v static._mcache_dict
push.v static._cache_state
pushi.e -9
push.v [stacktop]self.__mcache_name_array
pop.v.v static._mcache_name_array
pushi.e 0
pop.v.i static._vbuff_index
push.v static._cache_state
pushi.e -9
push.v [stacktop]self.__gc_vbuff_refs
pop.v.v static._gc_vbuff_refs
push.v static._cache_state
pushi.e -9
push.v [stacktop]self.__gc_vbuff_ids
pop.v.v static._gc_vbuff_ids
pushi.e 0
pop.v.i static._grid_index
push.v static._cache_state
pushi.e -9
push.v [stacktop]self.__gc_grid_refs
pop.v.v static._gc_grid_refs
push.v static._cache_state
pushi.e -9
push.v [stacktop]self.__gc_grid_ids
pop.v.v static._gc_grid_ids
pushbltn.v builtin.undefined
pop.v.v static._os_is_paused
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__state
pop.v.v static._scribble_state

:[3]
push.v static._scribble_state
pushi.e -9
dup.i 4
push.v [stacktop]self.__frames
push.e 1
add.i.v
pop.i.v [stacktop]self.__frames
push.v static._scribble_state
pushi.e -9
push.v [stacktop]self.__frames
pop.v.v local._frames
call.i os_is_paused(argc=0)
push.v static._os_is_paused
cmp.v.v NEQ
bf [7]

:[4]
call.i os_is_paused(argc=0)
pop.v.v static._os_is_paused
push.v static._scribble_state
pushi.e -9
pushenv [6]

:[5]
pushi.e 1
pop.v.b builtin.__shader_anim_desync
pushi.e 1
pop.v.b builtin.__shader_anim_desync_to_default

:[6]
popenv [5]

:[7]
push.v static._ecache_array
call.i array_length(argc=1)
pop.v.v local._size
pushloc.v local._size
push.v static._ecache_list_index
call.i min(argc=2)
pop.v.v static._ecache_list_index
pushloc.v local._size
call.i sqrt(argc=1)
call.i ceil(argc=1)
pushi.e 3
conv.i.v
call.i max(argc=2)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [14]

:[8]
push.v static._ecache_list_index
push.e 1
sub.i.v
pop.v.v static._ecache_list_index
push.v static._ecache_list_index
pushi.e 0
cmp.i.v LT
bf [11]

:[9]
push.v static._ecache_list_index
push.v static._ecache_array
call.i array_length(argc=1)
add.v.v
pop.v.v static._ecache_list_index
push.v static._ecache_list_index
pushi.e 0
cmp.i.v LT
bf [11]

:[10]
pushi.e 0
pop.v.i static._ecache_list_index
b [14]

:[11]
pushi.e -16
push.v static._ecache_list_index
conv.v.i
push.v [array]self._ecache_array
pop.v.v local._element
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__last_drawn
pushi.e 10
add.i.v
pushloc.v local._frames
cmp.v.v LT
bf [13]

:[12]
pushi.e 1
conv.i.v
push.v static._ecache_list_index
push.v static._ecache_array
call.i array_delete(argc=3)
popz.v
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__cache_name
push.v static._ecache_dict
call.i variable_struct_remove(argc=2)
popz.v

:[13]
pushi.e 1
sub.i.i
dup.i 0
bt [8]

:[14]
popz.i
push.v static._ecache_weak_array
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [17]

:[15]
push.v static._ecache_weak_index
pushi.e 1
add.i.v
push.v static._ecache_weak_array
call.i array_length(argc=1)
mod.v.v
pop.v.v static._ecache_weak_index
pushi.e -16
push.v static._ecache_weak_index
conv.v.i
push.v [array]self._ecache_weak_array
call.i weak_ref_alive(argc=1)
conv.v.b
not.b
bf [17]

:[16]
pushi.e 1
conv.i.v
push.v static._ecache_weak_index
push.v static._ecache_weak_array
call.i array_delete(argc=3)
popz.v

:[17]
push.v static._ecache_name_array
call.i array_length(argc=1)
pop.v.v local._size
pushloc.v local._size
push.v static._ecache_name_index
call.i min(argc=2)
pop.v.v static._ecache_name_index
pushloc.v local._size
call.i sqrt(argc=1)
call.i ceil(argc=1)
pushi.e 3
conv.i.v
call.i max(argc=2)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [27]

:[18]
push.v static._ecache_name_index
push.e 1
sub.i.v
pop.v.v static._ecache_name_index
push.v static._ecache_name_index
pushi.e 0
cmp.i.v LT
bf [21]

:[19]
push.v static._ecache_name_index
push.v static._ecache_name_array
call.i array_length(argc=1)
add.v.v
pop.v.v static._ecache_name_index
push.v static._ecache_name_index
pushi.e 0
cmp.i.v LT
bf [21]

:[20]
pushi.e 0
pop.v.i static._ecache_name_index
b [27]

:[21]
pushi.e -16
push.v static._ecache_name_index
conv.v.i
push.v [array]self._ecache_name_array
pop.v.v local._name
pushloc.v local._name
push.v static._ecache_dict
call.i variable_struct_get(argc=2)
pop.v.v local._weak
pushloc.v local._weak
pushbltn.v builtin.undefined
cmp.v.v EQ
bt [23]

:[22]
pushloc.v local._weak
call.i weak_ref_alive(argc=1)
conv.v.b
not.b
b [24]

:[23]
push.e 1

:[24]
bf [26]

:[25]
pushloc.v local._name
push.v static._ecache_dict
call.i variable_struct_remove(argc=2)
popz.v
pushi.e 1
conv.i.v
push.v static._ecache_name_index
push.v static._ecache_name_array
call.i array_delete(argc=3)
popz.v

:[26]
pushi.e 1
sub.i.i
dup.i 0
bt [18]

:[27]
popz.i
push.v static._mcache_name_array
call.i array_length(argc=1)
pop.v.v local._size
pushloc.v local._size
push.v static._mcache_name_index
call.i min(argc=2)
pop.v.v static._mcache_name_index
pushloc.v local._size
call.i sqrt(argc=1)
call.i ceil(argc=1)
pushi.e 3
conv.i.v
call.i max(argc=2)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [37]

:[28]
push.v static._mcache_name_index
push.e 1
sub.i.v
pop.v.v static._mcache_name_index
push.v static._mcache_name_index
pushi.e 0
cmp.i.v LT
bf [31]

:[29]
push.v static._mcache_name_index
push.v static._mcache_name_array
call.i array_length(argc=1)
add.v.v
pop.v.v static._mcache_name_index
push.v static._mcache_name_index
pushi.e 0
cmp.i.v LT
bf [31]

:[30]
pushi.e 0
pop.v.i static._mcache_name_index
b [37]

:[31]
pushi.e -16
push.v static._mcache_name_index
conv.v.i
push.v [array]self._mcache_name_array
pop.v.v local._name
pushloc.v local._name
push.v static._mcache_dict
call.i variable_struct_get(argc=2)
pop.v.v local._weak
pushloc.v local._weak
pushbltn.v builtin.undefined
cmp.v.v EQ
bt [33]

:[32]
pushloc.v local._weak
call.i weak_ref_alive(argc=1)
conv.v.b
not.b
b [34]

:[33]
push.e 1

:[34]
bf [36]

:[35]
pushloc.v local._name
push.v static._mcache_dict
call.i variable_struct_remove(argc=2)
popz.v
pushi.e 1
conv.i.v
push.v static._mcache_name_index
push.v static._mcache_name_array
call.i array_delete(argc=3)
popz.v

:[36]
pushi.e 1
sub.i.i
dup.i 0
bt [28]

:[37]
popz.i
push.v static._gc_vbuff_refs
call.i array_length(argc=1)
pop.v.v local._size
pushloc.v local._size
push.v static._vbuff_index
call.i min(argc=2)
pop.v.v static._vbuff_index
pushloc.v local._size
call.i sqrt(argc=1)
call.i ceil(argc=1)
pushi.e 3
conv.i.v
call.i max(argc=2)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [44]

:[38]
push.v static._vbuff_index
push.e 1
sub.i.v
pop.v.v static._vbuff_index
push.v static._vbuff_index
pushi.e 0
cmp.i.v LT
bf [41]

:[39]
push.v static._vbuff_index
push.v static._gc_vbuff_refs
call.i array_length(argc=1)
add.v.v
pop.v.v static._vbuff_index
push.v static._vbuff_index
pushi.e 0
cmp.i.v LT
bf [41]

:[40]
pushi.e 0
pop.v.i static._vbuff_index
b [44]

:[41]
pushi.e -16
push.v static._vbuff_index
conv.v.i
push.v [array]self._gc_vbuff_refs
pop.v.v local._weak
pushloc.v local._weak
call.i weak_ref_alive(argc=1)
conv.v.b
not.b
bf [43]

:[42]
pushi.e -16
push.v static._vbuff_index
conv.v.i
push.v [array]self._gc_vbuff_ids
call.i vertex_delete_buffer(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v static._vbuff_index
push.v static._gc_vbuff_refs
call.i array_delete(argc=3)
popz.v
pushi.e 1
conv.i.v
push.v static._vbuff_index
push.v static._gc_vbuff_ids
call.i array_delete(argc=3)
popz.v

:[43]
pushi.e 1
sub.i.i
dup.i 0
bt [38]

:[44]
popz.i
push.v static._gc_grid_refs
call.i array_length(argc=1)
pop.v.v local._size
pushloc.v local._size
push.v static._grid_index
call.i min(argc=2)
pop.v.v static._grid_index
pushloc.v local._size
call.i sqrt(argc=1)
call.i ceil(argc=1)
pushi.e 3
conv.i.v
call.i max(argc=2)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [51]

:[45]
push.v static._grid_index
push.e 1
sub.i.v
pop.v.v static._grid_index
push.v static._grid_index
pushi.e 0
cmp.i.v LT
bf [48]

:[46]
push.v static._grid_index
push.v static._gc_grid_refs
call.i array_length(argc=1)
add.v.v
pop.v.v static._grid_index
push.v static._grid_index
pushi.e 0
cmp.i.v LT
bf [48]

:[47]
pushi.e 0
pop.v.i static._grid_index
b [51]

:[48]
pushi.e -16
push.v static._grid_index
conv.v.i
push.v [array]self._gc_grid_refs
pop.v.v local._weak
pushloc.v local._weak
call.i weak_ref_alive(argc=1)
conv.v.b
not.b
bf [50]

:[49]
pushi.e -16
push.v static._grid_index
conv.v.i
push.v [array]self._gc_grid_ids
call.i ds_grid_destroy(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v static._grid_index
push.v static._gc_grid_refs
call.i array_delete(argc=3)
popz.v
pushi.e 1
conv.i.v
push.v static._grid_index
push.v static._gc_grid_ids
call.i array_delete(argc=3)
popz.v

:[50]
pushi.e 1
sub.i.i
dup.i 0
bt [45]

:[51]
popz.i
exit.i

:[52]
push.i [function]gml_Script___scribble_tick
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_tick
popz.v

:[end]