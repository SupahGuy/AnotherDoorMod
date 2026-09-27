; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
pushbltn.v builtin.room
pushref.i 50331655
cmp.v.v EQ
bf [end]

:[1]
pushglb.v global.depthManager
push.s "ui"@5003
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 1
sub.i.v
b [3]

> gml_Script____struct___597@gml_Object_oUi_Other_4 (locals=0, argc=0)
:[2]
call.i @@SetStatic@@(argc=0)
pushref.i 16777967
pop.v.v self.sprite_index
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.depth
exit.i

:[3]
push.i [function]gml_Script____struct___597@gml_Object_oUi_Other_4
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___597
call.i @@NewGMLObject@@(argc=2)
pushref.i 33
push.s "Ui"@11519
conv.s.v
pushi.e 1
conv.i.v
pushi.e 583
conv.i.v
call.i instance_create_layer(argc=5)
pop.v.v builtin.btnCursor
push.l 1
conv.l.v
push.l 2
conv.l.v
push.s "global._topCursorShow"@9068
conv.s.v
pushbltn.v builtin.undefined
push.v builtin.id
push.i [function]gml_Script_cTooltip
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local._structTooltip
pushloc.v local._structTooltip
pushref.i 61
pushglb.v global.depthManager
push.s "tooltip"@4995
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
push.v builtin.btnCursor
pushi.e -9
push.v [stacktop]self.y
pushref.i 16777967
call.i sprite_get_height(argc=1)
add.v.v
pushi.e 2
add.i.v
push.v builtin.btnCursor
pushi.e -9
push.v [stacktop]self.x
pushref.i 16777967
call.i sprite_get_width(argc=1)
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
add.v.v
call.i instance_create_depth(argc=5)
pop.v.v local._tooltipCursor
push.v builtin.btnCursor
pushloc.v local._tooltipCursor
dup.v 1 8
dup.v 0
push.v stacktop.set_tooltip
callv.v 1
popz.v
pushglb.v global.depthManager
push.s "ui"@5003
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
pushi.e 1
sub.i.v
b [5]

> gml_Script____struct___598@gml_Object_oUi_Other_4 (locals=0, argc=0)
:[4]
call.i @@SetStatic@@(argc=0)
pushref.i 16777983
pop.v.v self.sprite_index
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.depth
exit.i

:[5]
push.i [function]gml_Script____struct___598@gml_Object_oUi_Other_4
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___598
call.i @@NewGMLObject@@(argc=2)
pushref.i 33
push.s "Ui"@11519
conv.s.v
pushi.e 1
conv.i.v
pushi.e 605
conv.i.v
call.i instance_create_layer(argc=5)
pop.v.v builtin.btnSettings
push.l 1
conv.l.v
push.l 2
conv.l.v
push.s "global._topSettings"@11524
conv.s.v
pushbltn.v builtin.undefined
push.v builtin.id
push.i [function]gml_Script_cTooltip
conv.i.v
call.i @@NewGMLObject@@(argc=6)
pop.v.v local._structTooltip
pushloc.v local._structTooltip
pushref.i 61
pushglb.v global.depthManager
push.s "tooltip"@4995
conv.s.v
dup.v 1 8
dup.v 0
push.v stacktop.get_depth
callv.v 1
push.v builtin.btnSettings
pushi.e -9
push.v [stacktop]self.y
pushref.i 16777983
call.i sprite_get_height(argc=1)
add.v.v
pushi.e 2
add.i.v
push.v builtin.btnSettings
pushi.e -9
push.v [stacktop]self.x
pushref.i 16777983
call.i sprite_get_width(argc=1)
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
add.v.v
call.i instance_create_depth(argc=5)
pop.v.v local._tooltipSettings
push.v builtin.btnSettings
pushloc.v local._tooltipSettings
dup.v 1 8
dup.v 0
push.v stacktop.set_tooltip
callv.v 1
popz.v

:[end]