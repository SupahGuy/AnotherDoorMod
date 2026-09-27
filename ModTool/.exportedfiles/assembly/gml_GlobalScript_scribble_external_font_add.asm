:[0]
b [13]

> gml_Script_scribble_external_font_add (locals=15, argc=5)
:[1]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument3

:[3]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e 0
pop.v.b builtin.argument4

:[5]
push.v arg.argument0
call.i sprite_get_info(argc=1)
pop.v.v local._source_font_info
pushloc.v local._source_font_info
pushi.e -9
push.v arg.argument1
conv.v.i
push.v [array]self.frames
pop.v.v local._frame_info
pushloc.v local._frame_info
pushi.e -9
push.v [stacktop]self.texture
pop.v.v local._texture_index
pushloc.v local._texture_index
call.i texture_prefetch(argc=1)
popz.v
pushloc.v local._texture_index
call.i texture_get_width(argc=1)
pop.v.v local._texture_width
pushloc.v local._texture_index
call.i texture_get_height(argc=1)
pop.v.v local._texture_height
pushloc.v local._frame_info
pushi.e -9
push.v [stacktop]self.h
pushloc.v local._texture_height
div.v.v
pushloc.v local._frame_info
pushi.e -9
push.v [stacktop]self.w
pushloc.v local._texture_width
div.v.v
pushloc.v local._frame_info
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._texture_height
div.v.v
pushloc.v local._frame_info
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._texture_width
div.v.v
call.i @@NewGMLArray@@(argc=4)
pop.v.v local._texture_uvs
push.v arg.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[6]
push.v arg.argument2
pushi.e -9
push.v [stacktop]self.name
pop.v.v arg.argument3

:[7]
push.v arg.argument2
pushi.e -9
push.v [stacktop]self.size
push.v arg.argument2
pushi.e -9
push.v [stacktop]self.sdfSpread
push.v arg.argument2
pushi.e -9
push.v [stacktop]self.usesSDF
push.v arg.argument2
pushi.e -9
push.v [stacktop]self.ascenderOffset
push.v arg.argument2
pushi.e -9
push.v [stacktop]self.ascender
pushloc.v local._texture_index
b [9]

> gml_Script____struct___306@scribble_external_font_add@scribble_external_font_add (locals=0, argc=0)
:[8]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.texture
call.i @@NewGMLObject@@(argc=0)
pop.v.v self.glyphs
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.ascender
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.ascenderOffset
pushi.e -15
pushi.e 3
push.v [array]self.argument
pop.v.v self.sdfEnabled
pushi.e -15
pushi.e 4
push.v [array]self.argument
pop.v.v self.sdfSpread
pushi.e -15
pushi.e 5
push.v [array]self.argument
pop.v.v self.size
exit.i

:[9]
push.i [function]gml_Script____struct___306@scribble_external_font_add@scribble_external_font_add
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___306
call.i @@NewGMLObject@@(argc=7)
pop.v.v local._font_info
push.v arg.argument2
pushi.e -9
push.v [stacktop]self.glyphs
pop.v.v local._json_glyphs_dict
pushloc.v local._font_info
pushi.e -9
push.v [stacktop]self.glyphs
pop.v.v local._output_glyphs_dict
pushloc.v local._json_glyphs_dict
call.i variable_struct_get_names(argc=1)
pop.v.v local._key_array
pushi.e 0
pop.v.i local._i
pushloc.v local._key_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [11]

:[10]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._key_array
pop.v.v local._key
pushloc.v local._key
pushloc.v local._json_glyphs_dict
call.i variable_struct_get(argc=2)
pop.v.v local._json_glyph
pushloc.v local._json_glyph
call.i variable_clone(argc=1)
pop.v.v local._output_glyph
pushloc.v local._output_glyph
pushi.e -9
push.v [stacktop]self.character
pop.v.v local._character
push.s "character"@7651
conv.s.v
pushloc.v local._output_glyph
call.i variable_struct_remove(argc=2)
popz.v
pushloc.v local._character
pushloc.v local._output_glyph
pushi.e -9
pop.v.v [stacktop]self.char
pushloc.v local._output_glyph
pushloc.v local._character
call.i chr(argc=1)
pushloc.v local._output_glyphs_dict
call.i variable_struct_set(argc=3)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [10]

:[11]
popz.i
pushi.e 0
conv.b.v
push.v arg.argument4
push.v arg.argument2
pushi.e -9
push.v [stacktop]self.lineHeight
pushloc.v local._font_info
pushloc.v local._texture_uvs
pushbltn.v builtin.undefined
push.v arg.argument3
call.i gml_Script___scribble_font_add_from_info(argc=7)
popz.v
push.v arg.argument3
ret.v

:[12]
exit.i

:[13]
push.i [function]gml_Script_scribble_external_font_add
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_external_font_add
popz.v

:[end]