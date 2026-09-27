:[0]
b [2]

> gml_Script_instance_deactivate_all_hook (locals=0, argc=1)
:[1]
push.v arg.argument0
call.i instance_deactivate_all(argc=1)
popz.v
pushref.i 4
call.i instance_activate_object(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script_instance_deactivate_all_hook
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.instance_deactivate_all_hook
popz.v
b [4]

> gml_Script_instance_deactivate_layer_hook (locals=0, argc=1)
:[3]
push.v arg.argument0
call.i instance_deactivate_layer(argc=1)
popz.v
pushref.i 4
call.i instance_activate_object(argc=1)
popz.v
exit.i

:[4]
push.i [function]gml_Script_instance_deactivate_layer_hook
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.instance_deactivate_layer_hook
popz.v
b [6]

> gml_Script_instance_deactivate_object_hook (locals=0, argc=1)
:[5]
push.v arg.argument0
call.i instance_deactivate_object(argc=1)
popz.v
pushref.i 4
call.i instance_activate_object(argc=1)
popz.v
exit.i

:[6]
push.i [function]gml_Script_instance_deactivate_object_hook
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.instance_deactivate_object_hook
popz.v
b [8]

> gml_Script_instance_deactivate_region_hook (locals=0, argc=6)
:[7]
push.v arg.argument5
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i instance_deactivate_region(argc=6)
popz.v
pushref.i 4
call.i instance_activate_object(argc=1)
popz.v
exit.i

:[8]
push.i [function]gml_Script_instance_deactivate_region_hook
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.instance_deactivate_region_hook
popz.v

:[end]