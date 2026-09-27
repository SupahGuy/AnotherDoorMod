:[0]
call.i @@This@@(argc=0)
pop.v.v global.__ElementController
b [4]

> gml_Script_anon@147@gml_Object_oGUI_Create_0 (locals=0, argc=1)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushglb.v global.playersCount
pop.v.v builtin.argument0

:[3]
pushbltn.v builtin.undefined
push.v arg.argument0
call.i array_create(argc=2)
pop.v.v builtin.element_in_focus
pushbltn.v builtin.undefined
push.v arg.argument0
call.i array_create(argc=2)
pop.v.v builtin.element_in_hover
pushbltn.v builtin.undefined
push.v arg.argument0
call.i array_create(argc=2)
pop.v.v builtin.element_in_release
pushbltn.v builtin.undefined
push.v arg.argument0
call.i array_create(argc=2)
pop.v.v builtin.element_in_active
pushbltn.v builtin.undefined
push.v arg.argument0
call.i array_create(argc=2)
pop.v.v builtin.element_in_click
pushbltn.v builtin.undefined
push.v arg.argument0
call.i array_create(argc=2)
pop.v.v builtin.element_in_hover_enter
pushbltn.v builtin.undefined
push.v arg.argument0
call.i array_create(argc=2)
pop.v.v builtin.element_in_hover_leave
pushi.e 1
conv.b.v
push.v arg.argument0
call.i array_create(argc=2)
pop.v.v builtin.can_click
pushi.e 1
conv.b.v
push.v arg.argument0
call.i array_create(argc=2)
pop.v.v builtin.can_hover
pushi.e 0
conv.b.v
push.v arg.argument0
call.i array_create(argc=2)
pop.v.v builtin.release_any_element
pushi.e 0
conv.b.v
push.v arg.argument0
call.i array_create(argc=2)
pop.v.v builtin.release_any_blocking_element
exit.i

:[4]
push.i [function]gml_Script_anon@147@gml_Object_oGUI_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.set
pushi.e 4
conv.i.v
call.i @@This@@(argc=0)
push.v builtin.set
callv.v 1
popz.v
b [16]

> gml_Script_anon@947@gml_Object_oGUI_Create_0 (locals=1, argc=1)
:[5]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[6]
pushi.e -1
pop.v.i builtin.argument0

:[7]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
bf [12]

:[8]
pushi.e 0
pop.v.i local._i

:[9]
pushloc.v local._i
pushglb.v global.playersCount
cmp.v.v LT
bf [11]

:[10]
pushbltn.v builtin.undefined
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.element_in_focus
pushbltn.v builtin.undefined
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.element_in_hover
pushbltn.v builtin.undefined
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.element_in_release
pushbltn.v builtin.undefined
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.element_in_active
pushbltn.v builtin.undefined
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.element_in_click
pushbltn.v builtin.undefined
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.element_in_hover_enter
pushbltn.v builtin.undefined
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.element_in_hover_leave
pushi.e 1
conv.b.v
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.can_click
pushi.e 1
conv.b.v
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.can_hover
pushi.e 0
conv.b.v
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.release_any_element
pushi.e 0
conv.b.v
pushi.e -6
pushloc.v local._i
conv.v.i
pop.v.v [array]self.release_any_blocking_element
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [9]

:[11]
b [15]

:[12]
pushbltn.v builtin.undefined
pushi.e -6
push.v arg.argument0
conv.v.i
pop.v.v [array]self.element_in_focus
pushi.e -6
push.v arg.argument0
conv.v.i
push.v [array]self.element_in_hover
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [14]

:[13]
pushi.e -1
push.v arg.argument0
conv.v.i
push.v [array]self.element_in_hover
push.v arg.argument0
dup.v 1 8
dup.v 0
push.v stacktop.cursor_leave
callv.v 1
popz.v

:[14]
pushbltn.v builtin.undefined
pushi.e -6
push.v arg.argument0
conv.v.i
pop.v.v [array]self.element_in_release
pushbltn.v builtin.undefined
pushi.e -6
push.v arg.argument0
conv.v.i
pop.v.v [array]self.element_in_active
pushbltn.v builtin.undefined
pushi.e -6
push.v arg.argument0
conv.v.i
pop.v.v [array]self.element_in_click
pushbltn.v builtin.undefined
pushi.e -6
push.v arg.argument0
conv.v.i
pop.v.v [array]self.element_in_hover_enter
pushbltn.v builtin.undefined
pushi.e -6
push.v arg.argument0
conv.v.i
pop.v.v [array]self.element_in_hover_leave
pushi.e 1
conv.b.v
pushi.e -6
push.v arg.argument0
conv.v.i
pop.v.v [array]self.can_click
pushi.e 1
conv.b.v
pushi.e -6
push.v arg.argument0
conv.v.i
pop.v.v [array]self.can_hover

:[15]
exit.i

:[16]
push.i [function]gml_Script_anon@947@gml_Object_oGUI_Create_0
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
pop.v.v builtin.reset

:[end]