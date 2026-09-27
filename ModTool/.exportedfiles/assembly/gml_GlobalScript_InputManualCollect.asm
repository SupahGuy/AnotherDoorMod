:[0]
b [2]

> gml_Script_InputManualCollect (locals=0, argc=0)
:[1]
push.s ")"@372
conv.s.v
pushi.e 0
conv.i.v
push.s "Cannot call InputManualCollect(), INPUT_COLLECT_MODE must be set to 2 (="@6494
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v
call.i gml_Script___InputCollect(argc=0)
popz.v
exit.i

:[2]
push.i [function]gml_Script_InputManualCollect
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputManualCollect
popz.v

:[end]