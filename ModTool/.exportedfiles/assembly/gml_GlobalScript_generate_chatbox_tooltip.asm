:[0]
b [16]

> gml_Script_generate_chatbox_tooltip (locals=5, argc=6)
:[1]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e -1
pop.v.i builtin.argument4

:[3]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.b builtin.argument5

:[5]
push.v arg.argument5
conv.v.b
bf [7]

:[6]
pushglb.v global.networkingManager
pushi.e -9
push.v [stacktop]self.isNetworkGame
conv.v.b
b [8]

:[7]
push.e 0

:[8]
bf [12]

:[9]
push.l 2
pop.v.l local._receiver
push.v arg.argument4
pushi.e -1
cmp.i.v NEQ
bf [11]

:[10]
push.l 3
pop.v.l local._receiver

:[11]
pushglb.v global.networkingManager
push.v arg.argument4
pushi.e -1
conv.i.v
pushloc.v local._receiver
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
dup.v 7 8
dup.v 0
push.v stacktop.networking_generate_chatbox_tooltip
callv.v 7
popz.v

:[12]
pushglb.v global.playersManager
push.v arg.argument0
dup.v 1 8
dup.v 0
push.v stacktop.get_characters
callv.v 1
pop.v.v local._charLinked
pushloc.v local._charLinked
pushi.e -9
push.v [stacktop]self.currentChatbox
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [15]

:[13]
pushloc.v local._charLinked
pushi.e -9
push.v [stacktop]self.currentChatbox
call.i instance_exists(argc=1)
conv.v.b
bf [15]

:[14]
pushloc.v local._charLinked
pushi.e -9
push.v [stacktop]self.currentChatbox
call.i instance_destroy(argc=1)
popz.v

:[15]
push.l 2
pop.v.l local._close
push.v arg.argument3
pushbltn.v builtin.undefined
pushloc.v local._charLinked
push.i [function]gml_Script_cTooltip
conv.i.v
call.i @@NewGMLObject@@(argc=4)
pop.v.v local._tooltip
pushloc.v local._tooltip
pushref.i 62
pushglb.v global.depthManager
push.s "chatbox"@4993
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
push.v arg.argument2
push.v arg.argument1
call.i instance_create_depth(argc=5)
pop.v.v local._tooltipInst
pushloc.v local._tooltipInst
pushloc.v local._charLinked
pushi.e -9
pop.v.v [stacktop]self.currentChatbox
exit.i

:[16]
push.i [function]gml_Script_generate_chatbox_tooltip
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.generate_chatbox_tooltip
popz.v

:[end]