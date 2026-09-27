:[0]
b [2]

> gml_Script_InputManualUpdate (locals=0, argc=0)
:[1]
push.s ")"@372
conv.s.v
pushi.e 1
conv.b.v
push.s "Cannot call InputManualUpdate(), INPUT_UPDATE_AFTER_COLLECT must be set to `false` (="@6497
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v
push.l 1
conv.l.v
call.i gml_Script___InputPlugInExecuteCallbacks(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script_InputManualUpdate
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputManualUpdate
popz.v

:[end]