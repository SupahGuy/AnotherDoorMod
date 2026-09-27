:[0]
b [4]

> gml_Script_scribble_whitelist_sprite (locals=0, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__state
pop.v.v static._scribble_state

:[3]
pushi.e 1
conv.b.v
push.v arg.argument0
push.v static._scribble_state
pushi.e -9
push.v [stacktop]self.__sprite_whitelist_map
call.i ds_map_set(argc=3)
popz.v
exit.i

:[4]
push.i [function]gml_Script_scribble_whitelist_sprite
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_whitelist_sprite
popz.v

:[end]