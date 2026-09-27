:[0]
b [8]

> gml_Script_add_to_clean_up (locals=0, argc=3)
:[1]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[3]
push.s "toCleanUp"@4550
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [5]

:[4]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.toCleanUp

:[5]
push.v arg.argument1
push.v arg.argument2
push.v arg.argument0
b [7]

> gml_Script____struct___65@add_to_clean_up@clean_up (locals=0, argc=0)
:[6]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.elem
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.parent
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.garbageType
exit.i

:[7]
push.i [function]gml_Script____struct___65@add_to_clean_up@clean_up
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___65
call.i @@NewGMLObject@@(argc=4)
push.v builtin.toCleanUp
call.i array_push(argc=2)
popz.v
exit.i

:[8]
push.i [function]gml_Script_add_to_clean_up
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.add_to_clean_up
popz.v
b [54]

> gml_Script_g_clean_up (locals=1, argc=0)
:[9]
push.s "toCleanUp"@4550
conv.s.v
push.v builtin.id
call.i variable_instance_exists(argc=2)
conv.v.b
not.b
bf [11]

:[10]
exit.i

:[11]
pushi.e 0
pop.v.i local._c

:[12]
pushloc.v local._c
push.v builtin.toCleanUp
call.i array_length(argc=1)
cmp.v.v LT
bf [53]

:[13]
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.garbageType
dup.v 0
push.l 1
cmp.l.v EQ
bt [24]

:[14]
dup.v 0
push.l 0
cmp.l.v EQ
bt [27]

:[15]
dup.v 0
push.l 2
cmp.l.v EQ
bt [30]

:[16]
dup.v 0
push.l 5
cmp.l.v EQ
bt [33]

:[17]
dup.v 0
push.l 4
cmp.l.v EQ
bt [36]

:[18]
dup.v 0
push.l 6
cmp.l.v EQ
bt [39]

:[19]
dup.v 0
push.l 3
cmp.l.v EQ
bt [42]

:[20]
dup.v 0
push.l 7
cmp.l.v EQ
bt [45]

:[21]
dup.v 0
push.l 8
cmp.l.v EQ
bt [48]

:[22]
b [51]

:[23]
b [52]

:[24]
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.elem
call.i instance_exists(argc=1)
conv.v.b
bf [26]

:[25]
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.elem
call.i instance_destroy(argc=1)
popz.v

:[26]
b [52]

:[27]
pushref.i gml_Script_myTimer
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.elem
call.i is_instanceof(argc=2)
conv.v.b
bf [29]

:[28]
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.elem
dup.v 0 8
dup.v 0
push.v stacktop.clean_up_variables
callv.v 0
popz.v

:[29]
pushbltn.v builtin.undefined
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
pop.v.v [stacktop]self.elem
b [52]

:[30]
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.elem
call.i time_source_exists(argc=1)
conv.v.b
bf [32]

:[31]
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.elem
call.i time_source_destroy(argc=1)
popz.v

:[32]
b [52]

:[33]
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.elem
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.parent
call.i part_emitter_exists(argc=2)
conv.v.b
bf [35]

:[34]
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.elem
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.parent
call.i part_emitter_clear(argc=2)
popz.v
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.elem
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.parent
call.i part_emitter_destroy(argc=2)
popz.v

:[35]
b [52]

:[36]
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.elem
call.i part_system_exists(argc=1)
conv.v.b
bf [38]

:[37]
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.elem
call.i part_particles_clear(argc=1)
popz.v
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.elem
call.i part_system_destroy(argc=1)
popz.v

:[38]
b [52]

:[39]
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.elem
call.i part_type_exists(argc=1)
conv.v.b
bf [41]

:[40]
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.elem
call.i part_type_destroy(argc=1)
popz.v

:[41]
b [52]

:[42]
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.elem
call.i surface_exists(argc=1)
conv.v.b
bf [44]

:[43]
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.elem
call.i surface_free(argc=1)
popz.v

:[44]
b [52]

:[45]
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.elem
call.i audio_emitter_exists(argc=1)
conv.v.b
bf [47]

:[46]
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.elem
call.i audio_emitter_free(argc=1)
popz.v

:[47]
b [52]

:[48]
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.elem
call.i buffer_exists(argc=1)
conv.v.b
bf [50]

:[49]
pushi.e -1
pushloc.v local._c
conv.v.i
push.v [array]self.toCleanUp
pushi.e -9
push.v [stacktop]self.elem
call.i buffer_delete(argc=1)
popz.v

:[50]
b [52]

:[51]
b [52]

:[52]
popz.v
push.v local._c
push.e 1
add.i.v
pop.v.v local._c
b [12]

:[53]
exit.i

:[54]
push.i [function]gml_Script_g_clean_up
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.g_clean_up
popz.v

:[end]