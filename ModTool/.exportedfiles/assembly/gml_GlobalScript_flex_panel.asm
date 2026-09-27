:[0]
b [27]

> gml_Script_ik_flex_panel_draw_layout (locals=6, argc=2)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument1

:[3]
pushi.e 0
conv.b.v
push.v arg.argument0
call.i flexpanel_node_layout_get_position(argc=2)
pop.v.v local._pos
push.v arg.argument0
call.i flexpanel_node_get_name(argc=1)
pop.v.v local._name
push.v arg.argument0
call.i flexpanel_node_get_data(argc=1)
pop.v.v local._data
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.type
push.l 1
cmp.l.v EQ
bt [5]

:[4]
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.type
push.l 0
cmp.l.v EQ
b [6]

:[5]
push.e 1

:[6]
bf [13]

:[7]
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.element
pushi.e -9
push.v [stacktop]self.__starting_halign
pushi.e 0
cmp.i.v EQ
bf [9]

:[8]
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.element
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument1
sub.v.v
pushglb.v global.zoom
mul.v.v
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.x
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v
b [12]

:[9]
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.element
pushi.e -9
push.v [stacktop]self.__starting_halign
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.element
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument1
sub.v.v
pushglb.v global.zoom
mul.v.v
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._pos
pushi.e -9
push.v [stacktop]self.width
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
add.v.v
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v
b [12]

:[11]
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.element
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument1
sub.v.v
pushglb.v global.zoom
mul.v.v
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._pos
pushi.e -9
push.v [stacktop]self.width
add.v.v
pushglb.v global.zoom
mul.v.v
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v

:[12]
b [23]

:[13]
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.type
push.l 2
cmp.l.v EQ
bf [15]

:[14]
pushglb.v global.fontOpenEnded
call.i draw_set_font(argc=1)
popz.v
pushglb.v global.color
pushi.e -9
push.v [stacktop]self.grey1
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushglb.v global.fontScaleOpenEnded
pushglb.v global.fontScaleOpenEnded
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.element
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.y
pushglb.v global.zoom
mul.v.v
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.x
pushglb.v global.zoom
mul.v.v
call.i draw_text_transformed(argc=6)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
b [23]

:[15]
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.type
push.l 4
cmp.l.v EQ
bf [17]

:[16]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
pushloc.v local._pos
pushi.e -9
push.v [stacktop]self.height
pushloc.v local._pos
pushi.e -9
push.v [stacktop]self.width
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument1
sub.v.v
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
conv.i.v
pushref.i 16777954
call.i draw_sprite_stretched(argc=6)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
b [23]

:[17]
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.type
push.l 5
cmp.l.v EQ
bf [19]

:[18]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
pushloc.v local._pos
pushi.e -9
push.v [stacktop]self.height
pushloc.v local._pos
pushi.e -9
push.v [stacktop]self.width
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument1
sub.v.v
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
conv.i.v
pushref.i 16777953
call.i draw_sprite_stretched(argc=6)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
b [23]

:[19]
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.type
push.l 6
cmp.l.v EQ
bf [21]

:[20]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument1
sub.v.v
pushloc.v local._pos
pushi.e -9
push.v [stacktop]self.height
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._pos
pushi.e -9
push.v [stacktop]self.width
pushi.e 2
conv.i.d
div.d.v
add.v.v
pushbltn.v builtin.current_time
pushi.e 25
conv.i.d
div.d.v
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.element
call.i draw_sprite(argc=4)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v
b [23]

:[21]
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.type
push.l 7
cmp.l.v EQ
bf [23]

:[22]
call.i gml_Script_upscale_pixelart_start(argc=0)
popz.v
pushloc.v local._pos
pushi.e -9
push.v [stacktop]self.height
pushloc.v local._pos
pushi.e -9
push.v [stacktop]self.width
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument1
sub.v.v
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.x
pushi.e 0
conv.i.v
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.element
call.i draw_sprite_stretched(argc=6)
popz.v
call.i gml_Script_upscale_pixelart_end(argc=0)
popz.v

:[23]
push.v arg.argument0
call.i flexpanel_node_get_num_children(argc=1)
pop.v.v local._children_count
pushi.e 0
pop.v.i local.i

:[24]
pushloc.v local.i
pushloc.v local._children_count
cmp.v.v LT
bf [26]

:[25]
pushloc.v local.i
push.v arg.argument0
call.i flexpanel_node_get_child(argc=2)
pop.v.v local._child
push.v arg.argument1
pushloc.v local._child
call.i gml_Script_ik_flex_panel_draw_layout(argc=2)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [24]

:[26]
exit.i

:[27]
push.i [function]gml_Script_ik_flex_panel_draw_layout
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.ik_flex_panel_draw_layout
popz.v
b [34]

> gml_Script_ik_flex_panel_generate_instance (locals=6, argc=1)
:[28]
pushi.e 0
conv.b.v
push.v arg.argument0
call.i flexpanel_node_layout_get_position(argc=2)
pop.v.v local._pos
push.v arg.argument0
call.i flexpanel_node_get_name(argc=1)
pop.v.v local._name
push.v arg.argument0
call.i flexpanel_node_get_data(argc=1)
pop.v.v local._data
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.type
push.l 3
cmp.l.v EQ
bf [30]

:[29]
pushloc.v local._data
pushi.e -9
push.v [stacktop]self.element
pushloc.v local._pos
pushi.e -9
push.v [stacktop]self.top
call.i round(argc=1)
pushloc.v local._pos
pushi.e -9
push.v [stacktop]self.left
call.i round(argc=1)
dup.v 2 8
dup.v 0
push.v stacktop.set_position
callv.v 2
popz.v

:[30]
pushloc.v local._pos
pushi.e -9
push.v [stacktop]self.left
call.i round(argc=1)
pushloc.v local._data
pushi.e -9
pop.v.v [stacktop]self.x
pushloc.v local._pos
pushi.e -9
push.v [stacktop]self.top
call.i round(argc=1)
pushloc.v local._data
pushi.e -9
pop.v.v [stacktop]self.y
push.v arg.argument0
call.i flexpanel_node_get_num_children(argc=1)
pop.v.v local._children_count
pushi.e 0
pop.v.i local.i

:[31]
pushloc.v local.i
pushloc.v local._children_count
cmp.v.v LT
bf [33]

:[32]
pushloc.v local.i
push.v arg.argument0
call.i flexpanel_node_get_child(argc=2)
pop.v.v local._child
pushloc.v local._child
call.i gml_Script_ik_flex_panel_generate_instance(argc=1)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [31]

:[33]
exit.i

:[34]
push.i [function]gml_Script_ik_flex_panel_generate_instance
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.ik_flex_panel_generate_instance
popz.v
b [83]

> gml_Script_cFlexStruct (locals=0, argc=5)
:[35]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [37]

:[36]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[37]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [39]

:[38]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[39]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [41]

:[40]
pushbltn.v builtin.undefined
pop.v.v builtin.argument4

:[41]
call.i @@SetStatic@@(argc=0)
push.v arg.argument0
pop.v.v builtin.name
push.v arg.argument1
push.l 1
cmp.l.v EQ
bf [49]

:[42]
push.v arg.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [44]

:[43]
push.v arg.argument2
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
pushglb.v global.zoom
div.v.v
b [45]

:[44]
push.v arg.argument3

:[45]
pop.v.v builtin.height
push.v arg.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [47]

:[46]
push.v arg.argument2
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
pushglb.v global.zoom
div.v.v
b [48]

:[47]
push.v arg.argument4

:[48]
pop.v.v builtin.width
b [80]

:[49]
push.v arg.argument1
push.l 2
cmp.l.v EQ
bf [57]

:[50]
pushglb.v global.fontOpenEnded
call.i draw_set_font(argc=1)
popz.v
push.v arg.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [52]

:[51]
push.v arg.argument2
call.i string_height(argc=1)
pushglb.v global.fontScaleOpenEnded
mul.v.v
pushglb.v global.zoom
div.v.v
b [53]

:[52]
push.v arg.argument3

:[53]
pop.v.v builtin.height
push.v arg.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [55]

:[54]
push.v arg.argument2
call.i string_width(argc=1)
pushglb.v global.fontScaleOpenEnded
mul.v.v
pushglb.v global.zoom
div.v.v
b [56]

:[55]
push.v arg.argument4

:[56]
pop.v.v builtin.width
b [80]

:[57]
push.v arg.argument1
push.l 3
cmp.l.v EQ
bf [65]

:[58]
push.v arg.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [60]

:[59]
push.v arg.argument2
dup.v 0 8
dup.v 0
push.v stacktop.get_height
callv.v 0
b [61]

:[60]
push.v arg.argument3

:[61]
pop.v.v builtin.height
push.v arg.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [63]

:[62]
push.v arg.argument2
dup.v 0 8
dup.v 0
push.v stacktop.get_width
callv.v 0
b [64]

:[63]
push.v arg.argument4

:[64]
pop.v.v builtin.width
b [80]

:[65]
push.v arg.argument1
push.l 6
cmp.l.v EQ
bf [73]

:[66]
push.v arg.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [68]

:[67]
push.v arg.argument2
call.i sprite_get_height(argc=1)
b [69]

:[68]
push.v arg.argument3

:[69]
pop.v.v builtin.height
push.v arg.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [71]

:[70]
push.v arg.argument2
call.i sprite_get_width(argc=1)
b [72]

:[71]
push.v arg.argument4

:[72]
pop.v.v builtin.width
b [80]

:[73]
push.v arg.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [75]

:[74]
pushi.e 0
conv.i.v
b [76]

:[75]
push.v arg.argument3

:[76]
pop.v.v builtin.height
push.v arg.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [78]

:[77]
pushi.e 0
conv.i.v
b [79]

:[78]
push.v arg.argument4

:[79]
pop.v.v builtin.width

:[80]
push.v arg.argument2
push.v arg.argument1
b [82]

> gml_Script____struct___75@cFlexStruct@flex_panel (locals=0, argc=0)
:[81]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.type
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.element
pushi.e 0
pop.v.i self.x
pushi.e 0
pop.v.i self.y
exit.i

:[82]
push.i [function]gml_Script____struct___75@cFlexStruct@flex_panel
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___75
call.i @@NewGMLObject@@(argc=3)
pop.v.v builtin.data
exit.i

:[83]
push.i [function]gml_Script_cFlexStruct
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.cFlexStruct
popz.v

:[end]