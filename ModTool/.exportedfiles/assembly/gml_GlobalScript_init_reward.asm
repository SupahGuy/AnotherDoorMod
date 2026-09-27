:[0]
b [2]

> gml_Script_init_reward (locals=0, argc=0)
:[1]
exit.i

:[2]
push.i [function]gml_Script_init_reward
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.init_reward
popz.v

:[end]