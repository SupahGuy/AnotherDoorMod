:[0]
b [13]

> gml_Script_draw_text_scribble (locals=2, argc=4)
:[1]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[3]
isstaticok.e
bt [5]

:[4]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__state
pop.v.v static._scribble_state

:[5]
call.i draw_get_font(argc=0)
pop.v.v local._font
pushloc.v local._font
call.i font_exists(argc=1)
conv.v.b
bf [9]

:[6]
pushloc.v local._font
call.i font_get_name(argc=1)
pop.v.v local._font
pushloc.v local._font
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
not.b
bf [8]

:[7]
push.s "\" does not exist in Scribble\n(Fonts added with font_add() are not supported)"@5034
conv.s.v
pushloc.v local._font
push.s "Font \""@3182
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v

:[8]
b [10]

:[9]
push.v static._scribble_state
pushi.e -9
push.v [stacktop]self.__default_font
pop.v.v local._font

:[10]
push.s "__draw_text_scribble__"@5035
conv.s.v
push.v arg.argument2
call.i gml_Script_scribble(argc=2)
dup.v 0
pushi.e -9
push.v [stacktop]self.align
call.i draw_get_valign(argc=0)
call.i draw_get_halign(argc=0)
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.starting_format
push.i 16777215
conv.i.v
pushloc.v local._font
dup.e 2 16
callv.v 2
dup.v 0
pushi.e -9
push.v [stacktop]self.blend
call.i draw_get_alpha(argc=0)
call.i draw_get_color(argc=0)
dup.e 2 16
callv.v 2
pop.v.v local._element
push.v arg.argument3
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [12]

:[11]
pushloc.v local._element
push.v arg.argument3
dup.v 1 8
dup.v 0
push.v stacktop.reveal
callv.v 1
popz.v

:[12]
pushloc.v local._element
push.v arg.argument1
push.v arg.argument0
dup.v 2 8
dup.v 0
push.v stacktop.draw
callv.v 2
popz.v
exit.i

:[13]
push.i [function]gml_Script_draw_text_scribble
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.draw_text_scribble
popz.v

:[end]