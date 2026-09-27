:[0]
b [87]

> gml_Script_scribble_markdown_set_styles (locals=10, argc=2)
:[1]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.b builtin.argument1

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
push.v arg.argument1
conv.v.b
not.b
bf [85]

:[6]
push.v arg.argument0
call.i is_struct(argc=1)
conv.v.b
not.b
bf [8]

:[7]
push.s ")"@372
conv.s.v
push.v arg.argument0
call.i typeof(argc=1)
push.s "Input was not a struct (datatype="@8034
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v

:[8]
push.v arg.argument0
call.i variable_struct_get_names(argc=1)
pop.v.v local._root_names_array
pushi.e 0
pop.v.i local._i
pushloc.v local._root_names_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [84]

:[9]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._root_names_array
pop.v.v local._root_name
pushloc.v local._root_name
push.s "body"@4901
cmp.s.v NEQ
bf [19]

:[10]
pushloc.v local._root_name
push.s "header1"@7957
cmp.s.v NEQ
bf [19]

:[11]
pushloc.v local._root_name
push.s "header2"@7960
cmp.s.v NEQ
bf [19]

:[12]
pushloc.v local._root_name
push.s "header3"@7963
cmp.s.v NEQ
bf [19]

:[13]
pushloc.v local._root_name
push.s "bold"@7953
cmp.s.v NEQ
bf [19]

:[14]
pushloc.v local._root_name
push.s "italic"@7954
cmp.s.v NEQ
bf [19]

:[15]
pushloc.v local._root_name
push.s "bold_italic"@7974
cmp.s.v NEQ
bf [19]

:[16]
pushloc.v local._root_name
push.s "quote"@7967
cmp.s.v NEQ
bf [19]

:[17]
pushloc.v local._root_name
push.s "bullet_sprite"@7975
cmp.s.v NEQ
bf [19]

:[18]
pushloc.v local._root_name
push.s "link"@7978
cmp.s.v NEQ
b [20]

:[19]
push.e 0

:[20]
bf [22]

:[21]
push.s "\" not permitted"@8037
conv.s.v
pushloc.v local._root_name
push.s "Root struct name \""@8038
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
b [83]

:[22]
pushloc.v local._root_name
push.v arg.argument0
call.i variable_struct_get(argc=2)
pop.v.v local._value
pushloc.v local._root_name
push.s "bullet_sprite"@7975
cmp.s.v EQ
bf [35]

:[23]
pushloc.v local._value
call.i is_undefined(argc=1)
conv.v.b
bf [25]

:[24]
b [34]

:[25]
pushloc.v local._value
call.i is_numeric(argc=1)
conv.v.b
bf [29]

:[26]
pushloc.v local._value
call.i sprite_exists(argc=1)
conv.v.b
not.b
bf [28]

:[27]
push.s " does not exist"@8039
conv.s.v
pushloc.v local._value
push.s "<bullet_sprite> sprite"@8040
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
push.v local.$$$$temp$$$$
ret.v

:[28]
b [34]

:[29]
pushloc.v local._value
call.i is_string(argc=1)
conv.v.b
bf [33]

:[30]
pushloc.v local._value
call.i asset_get_type(argc=1)
pushi.e 1
cmp.i.v NEQ
bf [32]

:[31]
push.s "\" is not a sprite"@8041
conv.s.v
pushloc.v local._value
push.s "<bullet_sprite> sprite \""@8042
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
push.v local.$$$$temp$$$$
ret.v

:[32]
b [34]

:[33]
push.s ")"@372
conv.s.v
pushloc.v local._value
call.i typeof(argc=1)
push.s "<bullet_sprite> is the wrong datatype. It must be a sprite index or the name of a sprite (datatype="@8043
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
push.v local.$$$$temp$$$$
ret.v

:[34]
b [83]

:[35]
pushloc.v local._value
pop.v.v local._child_struct
pushloc.v local._child_struct
call.i is_undefined(argc=1)
conv.v.b
bf [37]

:[36]
b [83]

:[37]
pushloc.v local._child_struct
call.i is_struct(argc=1)
conv.v.b
not.b
bf [40]

:[38]
push.s ")"@372
conv.s.v
pushloc.v local._value
call.i typeof(argc=1)
push.s "> must be a struct (datatype="@8045
conv.s.v
pushloc.v local._root_name
push.s "Child struct <"@8046
conv.s.v
call.i gml_Script___scribble_error(argc=5)
popz.v
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
push.v local.$$$$temp$$$$
ret.v

:[39]
b [83]

:[40]
pushloc.v local._child_struct
call.i variable_struct_get_names(argc=1)
pop.v.v local._child_names_array
pushi.e 0
pop.v.i local._j
pushloc.v local._child_names_array
call.i array_length(argc=1)
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [82]

:[41]
pushi.e -7
pushloc.v local._j
conv.v.i
push.v [array]self._child_names_array
pop.v.v local._child_name
pushloc.v local._child_name
pushloc.v local._child_struct
call.i variable_struct_get(argc=2)
pop.v.v local._child_value
pushloc.v local._child_name
push.s "font"@5411
cmp.s.v EQ
bf [50]

:[42]
pushloc.v local._child_value
call.i is_undefined(argc=1)
conv.v.b
bf [44]

:[43]
b [49]

:[44]
pushloc.v local._child_value
call.i is_string(argc=1)
conv.v.b
bf [48]

:[45]
pushloc.v local._child_value
call.i gml_Script_scribble_font_exists(argc=1)
conv.v.b
not.b
bf [47]

:[46]
push.s "\")"@194
conv.s.v
pushloc.v local._root_name
push.s "\" is not a font (style=\""@8050
conv.s.v
pushloc.v local._child_value
push.s "\"font\" property \""@8051
conv.s.v
call.i gml_Script___scribble_error(argc=5)
popz.v
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
popz.i
push.v local.$$$$temp$$$$
ret.v

:[47]
b [49]

:[48]
push.s "\")"@194
conv.s.v
pushloc.v local._root_name
push.s ", style=\""@8052
conv.s.v
pushloc.v local._child_value
call.i typeof(argc=1)
push.s "Child struct property \"font\" must be the name of a font as a string (datatype="@8053
conv.s.v
call.i gml_Script___scribble_error(argc=5)
popz.v
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
popz.i
push.v local.$$$$temp$$$$
ret.v

:[49]
b [81]

:[50]
pushloc.v local._child_name
push.s "color"@5383
cmp.s.v EQ
bt [52]

:[51]
pushloc.v local._child_name
push.s "scale"@2140
cmp.s.v EQ
b [53]

:[52]
push.e 1

:[53]
bf [60]

:[54]
pushloc.v local._child_value
call.i is_numeric(argc=1)
conv.v.b
not.b
bf [56]

:[55]
pushloc.v local._child_value
call.i is_undefined(argc=1)
conv.v.b
not.b
b [57]

:[56]
push.e 0

:[57]
bf [59]

:[58]
push.s "\")"@194
conv.s.v
pushloc.v local._root_name
push.s ", style=\""@8052
conv.s.v
pushloc.v local._child_value
call.i typeof(argc=1)
push.s "\" must be a number (datatype="@8054
conv.s.v
pushloc.v local._child_name
push.s "Child struct property \""@8055
conv.s.v
call.i gml_Script___scribble_error(argc=7)
popz.v
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
popz.i
push.v local.$$$$temp$$$$
ret.v

:[59]
b [81]

:[60]
pushloc.v local._child_name
push.s "bold"@7953
cmp.s.v EQ
bt [62]

:[61]
pushloc.v local._child_name
push.s "italic"@7954
cmp.s.v EQ
b [63]

:[62]
push.e 1

:[63]
bf [70]

:[64]
pushloc.v local._child_value
call.i is_bool(argc=1)
conv.v.b
not.b
bf [66]

:[65]
pushloc.v local._child_value
call.i is_undefined(argc=1)
conv.v.b
not.b
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
push.s "\")"@194
conv.s.v
pushloc.v local._root_name
push.s ", style=\""@8052
conv.s.v
pushloc.v local._child_value
call.i typeof(argc=1)
push.s "Child struct property \"bold\" must be <true> or <false> (datatype="@8057
conv.s.v
call.i gml_Script___scribble_error(argc=5)
popz.v
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
popz.i
push.v local.$$$$temp$$$$
ret.v

:[69]
b [81]

:[70]
pushloc.v local._child_name
push.s "prefix"@6178
cmp.s.v EQ
bt [72]

:[71]
pushloc.v local._child_name
push.s "suffix"@7995
cmp.s.v EQ
b [73]

:[72]
push.e 1

:[73]
bf [80]

:[74]
pushloc.v local._child_value
call.i is_string(argc=1)
conv.v.b
not.b
bf [76]

:[75]
pushloc.v local._child_value
call.i is_undefined(argc=1)
conv.v.b
not.b
b [77]

:[76]
push.e 0

:[77]
bf [79]

:[78]
push.s "\")"@194
conv.s.v
pushloc.v local._root_name
push.s ", style=\""@8052
conv.s.v
pushloc.v local._child_value
call.i typeof(argc=1)
push.s "\" must be a string (datatype="@8058
conv.s.v
pushloc.v local._child_name
push.s "Child struct property \""@8055
conv.s.v
call.i gml_Script___scribble_error(argc=7)
popz.v
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
popz.i
push.v local.$$$$temp$$$$
ret.v

:[79]
b [81]

:[80]
push.s ")"@372
conv.s.v
pushloc.v local._root_name
push.s "> not permitted (style="@8059
conv.s.v
pushloc.v local._root_name
push.s "Child struct property <"@8060
conv.s.v
call.i gml_Script___scribble_error(argc=5)
popz.v
pushi.e 0
conv.b.v
pop.v.v local.$$$$temp$$$$
popz.i
popz.i
push.v local.$$$$temp$$$$
ret.v

:[81]
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
pushi.e 1
sub.i.i
dup.i 0
bt [41]

:[82]
popz.i

:[83]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [9]

:[84]
popz.i

:[85]
push.v arg.argument0
push.v static._scribble_state
pushi.e -9
pop.v.v [stacktop]self.__markdown_styles_struct
pushi.e 1
conv.b.v
ret.v

:[86]
exit.i

:[87]
push.i [function]gml_Script_scribble_markdown_set_styles
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_markdown_set_styles
popz.v

:[end]