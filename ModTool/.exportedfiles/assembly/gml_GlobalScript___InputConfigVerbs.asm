:[0]
b [2]

> gml_Script___InputConfigVerbs (locals=0, argc=0)
:[1]
push.i -32788
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.i 40964
conv.i.v
push.s "scroll_up"@503
conv.s.v
push.l 0
conv.l.v
call.i gml_Script_InputDefineVerb(argc=4)
popz.v
push.i 32788
conv.i.v
call.i @@NewGMLArray@@(argc=1)
push.i 40965
conv.i.v
push.s "scroll_down"@505
conv.s.v
push.l 1
conv.l.v
call.i gml_Script_InputDefineVerb(argc=4)
popz.v
push.i -32786
conv.i.v
push.i 32781
conv.i.v
push.s "up"@280
conv.s.v
push.l 2
conv.l.v
call.i gml_Script_InputDefineVerb(argc=4)
popz.v
push.i 32786
conv.i.v
push.i 32782
conv.i.v
push.s "down"@281
conv.s.v
push.l 3
conv.l.v
call.i gml_Script_InputDefineVerb(argc=4)
popz.v
push.i -32785
conv.i.v
push.i 32783
conv.i.v
push.s "left"@250
conv.s.v
push.l 4
conv.l.v
call.i gml_Script_InputDefineVerb(argc=4)
popz.v
push.i 32785
conv.i.v
push.i 32784
conv.i.v
push.s "right"@252
conv.s.v
push.l 5
conv.l.v
call.i gml_Script_InputDefineVerb(argc=4)
popz.v
push.i 32769
conv.i.v
pushi.e 1
conv.i.v
push.s "bottomChoice"@506
conv.s.v
push.l 6
conv.l.v
call.i gml_Script_InputDefineVerb(argc=4)
popz.v
push.i 32771
conv.i.v
pushbltn.v builtin.undefined
push.s "leftChoice"@507
conv.s.v
push.l 7
conv.l.v
call.i gml_Script_InputDefineVerb(argc=4)
popz.v
push.i 32770
conv.i.v
pushbltn.v builtin.undefined
push.s "rightChoice"@508
conv.s.v
push.l 8
conv.l.v
call.i gml_Script_InputDefineVerb(argc=4)
popz.v
push.i 32772
conv.i.v
pushbltn.v builtin.undefined
push.s "topChoice"@509
conv.s.v
push.l 9
conv.l.v
call.i gml_Script_InputDefineVerb(argc=4)
popz.v
pushbltn.v builtin.undefined
pushi.e 13
conv.i.v
push.s "enter"@510
conv.s.v
push.l 10
conv.l.v
call.i gml_Script_InputDefineVerb(argc=4)
popz.v
push.i 32778
conv.i.v
pushi.e 27
conv.i.v
push.s "pause"@511
conv.s.v
push.l 12
conv.l.v
call.i gml_Script_InputDefineVerb(argc=4)
popz.v
pushbltn.v builtin.undefined
pushi.e 32
conv.i.v
push.s "show_mouse"@512
conv.s.v
push.l 13
conv.l.v
call.i gml_Script_InputDefineVerb(argc=4)
popz.v
push.l 4
conv.l.v
push.l 3
conv.l.v
push.l 5
conv.l.v
push.l 2
conv.l.v
push.l 0
conv.l.v
call.i gml_Script_InputDefineCluster(argc=5)
popz.v
exit.i

:[2]
push.i [function]gml_Script___InputConfigVerbs
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputConfigVerbs
popz.v

:[end]