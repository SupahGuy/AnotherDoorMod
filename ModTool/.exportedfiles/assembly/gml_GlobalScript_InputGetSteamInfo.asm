:[0]
b [14]

> gml_Script_InputGetSteamInfo (locals=0, argc=1)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___InputSystem(argc=0)
pop.v.v static._system

:[3]
push.v arg.argument0
push.l 0
cmp.l.v EQ
bf [6]

:[4]
push.v static._system
pushi.e -9
push.v [stacktop]self.__usingSteamworks
ret.v

:[5]
b [13]

:[6]
push.v arg.argument0
push.l 1
cmp.l.v EQ
bf [9]

:[7]
push.v static._system
pushi.e -9
push.v [stacktop]self.__onSteamDeck
ret.v

:[8]
b [13]

:[9]
push.v arg.argument0
push.l 2
cmp.l.v EQ
bf [12]

:[10]
push.v static._system
pushi.e -9
push.v [stacktop]self.__onWINE
ret.v

:[11]
b [13]

:[12]
push.s " unhandled"@6466
conv.s.v
push.v arg.argument0
push.s "Field "@6467
conv.s.v
call.i gml_Script___InputError(argc=3)
popz.v

:[13]
exit.i

:[14]
push.i [function]gml_Script_InputGetSteamInfo
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.InputGetSteamInfo
popz.v

:[end]