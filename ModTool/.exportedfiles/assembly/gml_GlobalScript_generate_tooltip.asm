:[0]
b [39]

> gml_Script_generate_tooltip (locals=9, argc=11)
:[1]
pushbltn.v builtin.argument6
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e -1
pop.v.i builtin.argument6

:[3]
pushbltn.v builtin.argument7
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e -1
pop.v.i builtin.argument7

:[5]
pushbltn.v builtin.argument8
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[6]
push.l 0
pop.v.l builtin.argument8

:[7]
pushbltn.v builtin.argument9
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [9]

:[8]
pushi.e 0
pop.v.b builtin.argument9

:[9]
pushbltn.v builtin.argument10
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [11]

:[10]
pushi.e -4
pop.v.i builtin.argument10

:[11]
push.v arg.argument8
push.l 1
cmp.l.v EQ
bf [19]

:[12]
push.v arg.argument3
pop.v.v local._lastY
push.v arg.argument10
pop.v.v local._theIdParent
pushi.e 0
pop.v.i local._i

:[13]
pushloc.v local._i
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.actionType
call.i array_length(argc=1)
cmp.v.v LT
bf [15]

:[14]
pushloc.v local._theIdParent
pushbltn.v builtin.undefined
push.l 0
conv.l.v
push.v arg.argument7
push.v arg.argument6
push.v arg.argument5
push.v arg.argument4
pushloc.v local._lastY
push.v arg.argument2
push.v arg.argument1
pushi.e -9
pushloc.v local._i
conv.v.i
push.v [array]self.actionType
push.v arg.argument0
call.i gml_Script_generate_tooltip(argc=11)
pop.v.v local._tooltip
pushloc.v local._tooltip
pushi.e -9
push.v [stacktop]self.posY
pop.v.v local._lastY
pushloc.v local._tooltip
pushi.e -9
push.v [stacktop]self.idParent
pop.v.v local._theIdParent
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [13]

:[15]
pushloc.v local._lastY
push.v arg.argument10
b [17]

> gml_Script____struct___83@generate_tooltip@generate_tooltip (locals=0, argc=0)
:[16]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.idParent
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.posY
exit.i

:[17]
push.i [function]gml_Script____struct___83@generate_tooltip@generate_tooltip
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___83
call.i @@NewGMLObject@@(argc=3)
ret.v

:[18]
b [38]

:[19]
push.v arg.argument8
push.l 2
cmp.l.v EQ
bf [24]

:[20]
push.v arg.argument7
push.v arg.argument6
push.v arg.argument1
call.i gml_Script_add_var_to_text(argc=3)
pop.v.v local._body
push.v arg.argument10
pushbltn.v builtin.undefined
pushbltn.v builtin.undefined
push.v arg.argument1
pushbltn.v builtin.undefined
push.v arg.argument5
push.v arg.argument4
pushloc.v local._body
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.name
push.v arg.argument0
push.i [function]gml_Script_cTooltip
conv.i.v
call.i @@NewGMLObject@@(argc=11)
pop.v.v local._structTooltip
pushloc.v local._structTooltip
pushref.i 61
pushi.e 0
conv.i.v
push.v arg.argument3
pushi.e 2
sub.i.v
push.v arg.argument2
call.i instance_create_depth(argc=5)
pop.v.v local._tooltip
pushloc.v local._tooltip
call.i @@This@@(argc=0)
push.v builtin.set_tooltip
callv.v 1
popz.v
pushloc.v local._tooltip
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._tooltip
b [22]

> gml_Script____struct___84@generate_tooltip@generate_tooltip (locals=0, argc=0)
:[21]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.idParent
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.posY
exit.i

:[22]
push.i [function]gml_Script____struct___84@generate_tooltip@generate_tooltip
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___84
call.i @@NewGMLObject@@(argc=3)
ret.v

:[23]
b [38]

:[24]
push.v arg.argument8
push.l 0
cmp.l.v EQ
bf [38]

:[25]
push.v arg.argument1
pushi.e -9
pushi.e 0
push.v [array]self.condition
push.l 0
cmp.l.v EQ
bf [29]

:[26]
push.v arg.argument3
b [28]

> gml_Script____struct___85@generate_tooltip@generate_tooltip (locals=0, argc=0)
:[27]
call.i @@SetStatic@@(argc=0)
pushi.e -4
pop.v.i self.idParent
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.posY
exit.i

:[28]
push.i [function]gml_Script____struct___85@generate_tooltip@generate_tooltip
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___85
call.i @@NewGMLObject@@(argc=2)
ret.v

:[29]
push.v arg.argument3
pop.v.v local._lastY
push.v arg.argument10
pop.v.v local._theIdParent
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.linkedEffectTooltip
pop.v.v local._linkedEffect
pushi.e 0
pop.v.i local._i

:[30]
pushloc.v local._i
pushloc.v local._linkedEffect
call.i array_length(argc=1)
cmp.v.v LT
bf [32]

:[31]
pushloc.v local._theIdParent
pushi.e 1
conv.b.v
push.l 0
conv.l.v
pushi.e -1
conv.i.v
pushi.e -1
conv.i.v
push.v arg.argument5
push.v arg.argument4
pushloc.v local._lastY
push.v arg.argument2
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._linkedEffect
push.v arg.argument0
call.i gml_Script_generate_tooltip(argc=11)
pop.v.v local._tooltipEffect
pushloc.v local._tooltipEffect
pushi.e -9
push.v [stacktop]self.posY
pop.v.v local._lastY
pushloc.v local._tooltipEffect
pushi.e -9
push.v [stacktop]self.idParent
pop.v.v local._theIdParent
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [30]

:[32]
push.v arg.argument7
push.v arg.argument6
push.v arg.argument1
call.i gml_Script_add_var_to_text(argc=3)
pop.v.v local._body
pushloc.v local._theIdParent
pushbltn.v builtin.undefined
push.v arg.argument9
push.v arg.argument1
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.sprite
push.v arg.argument5
push.v arg.argument4
pushloc.v local._body
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.name
push.v arg.argument0
push.i [function]gml_Script_cTooltip
conv.i.v
call.i @@NewGMLObject@@(argc=11)
pop.v.v local._structTooltip
pushloc.v local._linkedEffect
call.i array_length(argc=1)
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
pushi.e 0
conv.i.v
b [35]

:[34]
pushi.e 2
conv.i.v

:[35]
pop.v.v local._offsetY
pushloc.v local._structTooltip
pushref.i 61
pushi.e 0
conv.i.v
pushloc.v local._lastY
pushloc.v local._offsetY
sub.v.v
push.v arg.argument2
call.i instance_create_depth(argc=5)
pop.v.v local._tooltip
pushloc.v local._tooltip
call.i @@This@@(argc=0)
push.v builtin.set_tooltip
callv.v 1
popz.v
pushloc.v local._tooltip
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._tooltip
b [37]

> gml_Script____struct___86@generate_tooltip@generate_tooltip (locals=0, argc=0)
:[36]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.idParent
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.posY
exit.i

:[37]
push.i [function]gml_Script____struct___86@generate_tooltip@generate_tooltip
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___86
call.i @@NewGMLObject@@(argc=3)
ret.v

:[38]
exit.i

:[39]
push.i [function]gml_Script_generate_tooltip
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.generate_tooltip
popz.v

:[end]