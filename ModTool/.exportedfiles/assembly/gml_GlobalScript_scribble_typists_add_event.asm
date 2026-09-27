:[0]
b [30]

> gml_Script_scribble_typists_add_event (locals=1, argc=2)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pop.v.v static._system
push.v static._system
pushi.e -9
push.v [stacktop]self.__effects_map
pop.v.v static._effects_map
push.v static._system
pushi.e -9
push.v [stacktop]self.__macros_map
pop.v.v static._macros_map
push.v static._system
pushi.e -9
push.v [stacktop]self.__typewriter_events_map
pop.v.v static._typewriter_events_map

:[3]
push.v arg.argument0
call.i is_string(argc=1)
conv.v.b
not.b
bf [5]

:[4]
push.s "\")"@194
conv.s.v
push.v arg.argument0
push.s "Event names should be strings.\n(Input to script was \""@8101
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
exit.i

:[5]
push.v arg.argument1
call.i is_undefined(argc=1)
conv.v.b
bt [10]

:[6]
push.v arg.argument1
call.i is_method(argc=1)
conv.v.b
not.b
bf [8]

:[7]
push.v arg.argument1
call.i script_exists(argc=1)
conv.v.b
not.b
b [9]

:[8]
push.e 0

:[9]
b [11]

:[10]
push.e 1

:[11]
bf [13]

:[12]
push.s "\")"@194
conv.s.v
push.v arg.argument1
call.i typeof(argc=1)
push.s "Invalid function provided\n(Input datatype was \""@7731
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
exit.i

:[13]
push.v arg.argument0
call.i gml_Script___scribble_config_colours(argc=0)
call.i variable_struct_exists(argc=2)
conv.v.b
bf [15]

:[14]
push.s "Warning! Event name \""@8102
push.v arg.argument0
add.v.s
push.s "\" has already been defined as a colour"@7733
add.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
exit.i

:[15]
push.v arg.argument0
push.v static._effects_map
call.i ds_map_exists(argc=2)
conv.v.b
bf [17]

:[16]
push.s "Warning! Event name \""@8102
push.v arg.argument0
add.v.s
push.s "\" has already been defined as an effect"@7734
add.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
exit.i

:[17]
push.v arg.argument0
push.v static._macros_map
call.i ds_map_exists(argc=2)
conv.v.b
bf [19]

:[18]
push.s "Warning! Macro name \""@7732
push.v arg.argument0
add.v.s
push.s "\" has already been defined as a macro"@8103
add.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
exit.i

:[19]
push.v arg.argument0
push.v static._typewriter_events_map
call.i ds_map_find_value(argc=2)
pop.v.v local._old_function
pushloc.v local._old_function
call.i is_undefined(argc=1)
conv.v.b
not.b
bf [29]

:[20]
pushloc.v local._old_function
call.i is_numeric(argc=1)
conv.v.b
bf [22]

:[21]
pushloc.v local._old_function
pushi.e 0
cmp.i.v LT
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
push.s "Warning! Overwriting event ["@7737
push.v arg.argument0
add.v.s
push.s "] tied to <invalid script>"@8104
add.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v
b [29]

:[25]
push.s "Warning! Overwriting event ["@7737
push.v arg.argument0
add.v.s
push.s "] tied to \""@7738
add.s.v
pushloc.v local._old_function
call.i is_method(argc=1)
conv.v.b
bf [27]

:[26]
pushloc.v local._old_function
call.i string(argc=1)
b [28]

:[27]
pushloc.v local._old_function
call.i script_get_name(argc=1)

:[28]
add.v.v
push.s "\""@1193
add.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v

:[29]
push.v arg.argument1
push.v arg.argument0
push.v static._typewriter_events_map
call.i ds_map_set(argc=3)
popz.v
exit.i

:[30]
push.i [function]gml_Script_scribble_typists_add_event
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_typists_add_event
popz.v

:[end]