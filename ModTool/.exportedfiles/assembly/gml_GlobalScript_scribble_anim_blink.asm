:[0]
b [6]

> gml_Script_scribble_anim_blink (locals=0, argc=3)
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
push.v static._scribble_state
pushi.e -9
pushenv [5]

:[4]
push.v arg.argument0
pop.v.v builtin.__blink_on_duration
push.v arg.argument1
pop.v.v builtin.__blink_off_duration
push.v arg.argument2
pop.v.v builtin.__blink_time_offset

:[5]
popenv [4]
exit.i

:[6]
push.i [function]gml_Script_scribble_anim_blink
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_anim_blink
popz.v

:[end]