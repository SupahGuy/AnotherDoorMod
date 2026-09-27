:[0]
b [17]

> gml_Script_string_wordwrap_width (locals=4, argc=5)
:[1]
push.v arg.argument4
call.i draw_set_font(argc=1)
popz.v
pushi.e -1
pop.v.i local.pos_space
pushi.e 1
pop.v.i local.pos_current
pushbltn.v builtin.argument0
pop.v.v local.text_current
pushbltn.v builtin.argument2
call.i is_real(argc=1)
conv.v.b
bf [3]

:[2]
push.s "#"@3571
pop.v.s builtin.argument2

:[3]
push.s ""@61
pop.v.s local.text_output

:[4]
pushloc.v local.text_current
call.i string_length(argc=1)
pushloc.v local.pos_current
cmp.v.v GTE
bf [13]

:[5]
pushloc.v local.pos_current
pushi.e 1
conv.i.v
pushloc.v local.text_current
call.i string_copy(argc=3)
call.i string_width(argc=1)
pushglb.v global.fontScaleOpenEnded
mul.v.v
pushbltn.v builtin.argument1
cmp.v.v GT
bf [10]

:[6]
pushloc.v local.pos_space
pushi.e -1
cmp.i.v NEQ
bf [8]

:[7]
push.v local.text_output
pushloc.v local.pos_space
pushi.e 1
conv.i.v
pushloc.v local.text_current
call.i string_copy(argc=3)
pushbltn.v builtin.argument2
call.i string(argc=1)
add.v.v
add.v.v
pop.v.v local.text_output
pushloc.v local.text_current
call.i string_length(argc=1)
pushloc.v local.pos_space
sub.v.v
pushloc.v local.pos_space
pushi.e 1
add.i.v
pushloc.v local.text_current
call.i string_copy(argc=3)
pop.v.v local.text_current
pushi.e 1
pop.v.i local.pos_current
pushi.e -1
pop.v.i local.pos_space
b [10]

:[8]
pushbltn.v builtin.argument3
conv.v.b
bf [10]

:[9]
push.v local.text_output
pushloc.v local.pos_current
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
pushloc.v local.text_current
call.i string_copy(argc=3)
pushbltn.v builtin.argument2
call.i string(argc=1)
add.v.v
add.v.v
pop.v.v local.text_output
pushloc.v local.text_current
call.i string_length(argc=1)
pushloc.v local.pos_current
pushi.e 1
sub.i.v
sub.v.v
pushloc.v local.pos_current
pushloc.v local.text_current
call.i string_copy(argc=3)
pop.v.v local.text_current
pushi.e 1
pop.v.i local.pos_current
pushi.e -1
pop.v.i local.pos_space

:[10]
push.v local.pos_current
pushi.e 1
add.i.v
pop.v.v local.pos_current
pushloc.v local.pos_current
pushloc.v local.text_current
call.i string_char_at(argc=2)
push.s " "@3157
cmp.s.v EQ
bf [12]

:[11]
pushloc.v local.pos_current
pop.v.v local.pos_space

:[12]
b [4]

:[13]
pushloc.v local.text_current
call.i string_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [15]

:[14]
push.v local.text_output
pushloc.v local.text_current
add.v.v
pop.v.v local.text_output

:[15]
pushloc.v local.text_output
ret.v

:[16]
exit.i

:[17]
push.i [function]gml_Script_string_wordwrap_width
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.string_wordwrap_width
popz.v

:[end]