:[0]
b [12]

> gml_Script_scribble_font_set_halign_offset (locals=0, argc=3)
:[1]
push.v arg.argument1
push.s "pin_left"@2098
cmp.s.v EQ
bf [3]

:[2]
pushi.e 3
pop.v.i arg.argument1

:[3]
push.v arg.argument1
push.s "pin_centre"@2099
cmp.s.v EQ
bf [5]

:[4]
pushi.e 4
pop.v.i arg.argument1

:[5]
push.v arg.argument1
push.s "pin_center"@2100
cmp.s.v EQ
bf [7]

:[6]
pushi.e 4
pop.v.i arg.argument1

:[7]
push.v arg.argument1
push.s "pin_right"@2101
cmp.s.v EQ
bf [9]

:[8]
pushi.e 5
pop.v.i arg.argument1

:[9]
push.v arg.argument1
push.s "fa_justify"@2105
cmp.s.v EQ
bf [11]

:[10]
pushi.e 6
pop.v.i arg.argument1

:[11]
push.v arg.argument2
push.v arg.argument0
call.i gml_Script___scribble_get_font_data(argc=1)
pushi.e -9
push.v arg.argument1
conv.v.i
pop.v.v [array]self.__halign_offset_array
exit.i

:[12]
push.i [function]gml_Script_scribble_font_set_halign_offset
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_font_set_halign_offset
popz.v

:[end]