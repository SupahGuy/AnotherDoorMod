:[0]
b [10]

> gml_Script_load_json_file_to_string (locals=4, argc=1)
:[1]
push.v arg.argument0
call.i file_text_open_read(argc=1)
pop.v.v local._jsonFile
push.s ""@61
pop.v.s local._jsonStr
push.s ""@61
pop.v.s local._stringLine
pushi.e 0
pop.v.i local._commentPosition
pushloc.v local._jsonFile
pushi.e -1
cmp.i.v NEQ
bf [8]

:[2]
pushloc.v local._jsonFile
call.i file_text_eof(argc=1)
conv.v.b
not.b
bf [6]

:[3]
pushloc.v local._jsonFile
call.i file_text_readln(argc=1)
pop.v.v local._stringLine
pushloc.v local._stringLine
call.i string_trim(argc=1)
pop.v.v local._stringLine
pushloc.v local._stringLine
push.s "//"@6820
conv.s.v
call.i string_pos(argc=2)
pop.v.v local._commentPosition
pushloc.v local._commentPosition
pushi.e 0
cmp.i.v GT
bf [5]

:[4]
pushloc.v local._commentPosition
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
pushloc.v local._stringLine
call.i string_copy(argc=3)
pop.v.v local._stringLine

:[5]
push.v local._jsonStr
pushloc.v local._stringLine
add.v.v
pop.v.v local._jsonStr
b [2]

:[6]
pushloc.v local._jsonFile
call.i file_text_close(argc=1)
popz.v
pushloc.v local._jsonStr
ret.v

:[7]
b [9]

:[8]
push.s "File "@6822
push.v arg.argument0
add.v.s
push.s " not found!"@6823
add.s.v
call.i @@throw@@(argc=1)

:[9]
exit.i

:[10]
push.i [function]gml_Script_load_json_file_to_string
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.load_json_file_to_string
popz.v
b [22]

> gml_Script_set_language (locals=11, argc=0)
:[11]
push.s "localization/"@6827
pushref.i 42
pushi.e -9
push.v [stacktop]self.availableLangsStruct
pushi.e -9
pushi.e 0
push.v [array]self.langs
pushi.e -9
push.v [stacktop]self.stringsFile
add.v.s
call.i gml_Script_load_json_file_to_string(argc=1)
pop.v.v local._defaultJsonStr
pushloc.v local._defaultJsonStr
call.i json_parse(argc=1)
pushref.i 42
pushi.e -9
pop.v.v [stacktop]self.localizedStrings
pushglb.v global.currentLanguage
pushi.e 0
cmp.i.v GT
bf [13]

:[12]
pushglb.v global.currentLanguage
pushref.i 42
pushi.e -9
push.v [stacktop]self.availableLangsStruct
pushi.e -9
push.v [stacktop]self.langs
call.i array_length(argc=1)
pushi.e 1
sub.i.v
cmp.v.v LTE
b [14]

:[13]
push.e 0

:[14]
bf [21]

:[15]
push.s "localization/"@6827
pushref.i 42
pushi.e -9
push.v [stacktop]self.availableLangsStruct
pushi.e -9
pushglb.v global.currentLanguage
conv.v.i
push.v [array]self.langs
pushi.e -9
push.v [stacktop]self.stringsFile
add.v.s
call.i gml_Script_load_json_file_to_string(argc=1)
pop.v.v local._localizationJsonStr
pushloc.v local._localizationJsonStr
call.i json_parse(argc=1)
pop.v.v local._replacementStrings
pushloc.v local._replacementStrings
call.i variable_struct_get_names(argc=1)
pop.v.v local._sectionNames
pushloc.v local._sectionNames
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pop.v.v local._j

:[16]
pushloc.v local._j
pushi.e 0
cmp.i.v GTE
bf [21]

:[17]
pushi.e -7
pushloc.v local._j
conv.v.i
push.v [array]self._sectionNames
pop.v.v local._sectionName
pushloc.v local._sectionName
pushloc.v local._replacementStrings
call.i variable_struct_get(argc=2)
pop.v.v local._sectionData
pushloc.v local._sectionData
call.i variable_struct_get_names(argc=1)
pop.v.v local._sectionDataArr
pushloc.v local._sectionDataArr
call.i array_length(argc=1)
pushi.e 1
sub.i.v
pop.v.v local._k

:[18]
pushloc.v local._k
pushi.e 0
cmp.i.v GTE
bf [20]

:[19]
pushi.e -7
pushloc.v local._k
conv.v.i
push.v [array]self._sectionDataArr
pop.v.v local._locReference
pushloc.v local._locReference
pushloc.v local._sectionName
pushloc.v local._replacementStrings
call.i variable_struct_get(argc=2)
call.i variable_struct_get(argc=2)
pop.v.v local._locText
pushloc.v local._locText
pushloc.v local._locReference
pushloc.v local._sectionName
pushref.i 42
pushi.e -9
push.v [stacktop]self.localizedStrings
call.i variable_struct_get(argc=2)
call.i variable_struct_set(argc=3)
popz.v
push.v local._k
push.e 1
sub.i.v
pop.v.v local._k
b [18]

:[20]
push.v local._j
push.e 1
sub.i.v
pop.v.v local._j
b [16]

:[21]
exit.i

:[22]
push.i [function]gml_Script_set_language
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.set_language
popz.v
b [49]

> gml_Script_LocPreprocessor (locals=17, argc=1)
:[23]
push.s "#"@3571
pop.v.s local._argsChar
push.v arg.argument0
call.i gml_Script_strip_color_tags(argc=1)
pop.v.v local._splitTag
pushloc.v local._splitTag
pushi.e -9
push.v [stacktop]self.text
pop.v.v local._argument
pushloc.v local._argument
push.s "."@492
conv.s.v
call.i string_count(argc=2)
pop.v.v local._numberOfLocKey
pushloc.v local._numberOfLocKey
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
push.v arg.argument0
ret.v

:[25]
pushloc.v local._argument
pushloc.v local._argsChar
call.i string_count(argc=2)
pop.v.v local._numberOfArgs
pushloc.v local._numberOfArgs
pushi.e 0
cmp.i.v GT
bf [38]

:[26]
pushi.e 1
conv.i.v
pushi.e 0
conv.b.v
pushloc.v local._argsChar
pushloc.v local._argument
call.i string_split(argc=4)
pop.v.v local._argumentSplit
pushi.e -7
pushi.e 0
push.v [array]self._argumentSplit
pop.v.v local._mainString
pushloc.v local._argsChar
pushi.e -7
pushi.e 1
push.v [array]self._argumentSplit
call.i string_split(argc=2)
pop.v.v local._args
pushi.e 0
pop.v.i local._i

:[27]
pushloc.v local._i
pushloc.v local._args
call.i array_length(argc=1)
cmp.v.v LT
bf [37]

:[28]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._args
push.s "."@492
conv.s.v
call.i string_count(argc=2)
pushi.e 0
cmp.i.v EQ
bf [31]

:[29]
b [36]

:[30]
b [36]

:[31]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._args
call.i gml_Script_strip_color_tags(argc=1)
pop.v.v local._splitArgs
push.s "."@492
conv.s.v
pushloc.v local._splitArgs
pushi.e -9
push.v [stacktop]self.text
call.i string_split(argc=2)
pop.v.v local._argSplit
pushi.e -7
pushi.e 0
push.v [array]self._argSplit
pop.v.v local._argCat
pushi.e -7
pushi.e 1
push.v [array]self._argSplit
pop.v.v local._argKey
pushloc.v local._argCat
pushref.i 42
pushi.e -9
push.v [stacktop]self.localizedStrings
call.i struct_exists(argc=2)
conv.v.b
bf [33]

:[32]
pushloc.v local._argKey
pushloc.v local._argCat
pushref.i 42
pushi.e -9
push.v [stacktop]self.localizedStrings
call.i variable_struct_get(argc=2)
call.i struct_exists(argc=2)
conv.v.b
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
pushloc.v local._argKey
pushloc.v local._argCat
pushref.i 42
pushi.e -9
push.v [stacktop]self.localizedStrings
call.i variable_struct_get(argc=2)
call.i variable_struct_get(argc=2)
pushi.e -7
pushloc.v local._i
conv.v.i
pop.v.v [array]self._args
pushloc.v local._splitArgs
pushi.e -9
push.v [stacktop]self.endTag
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._args
pushloc.v local._splitArgs
pushi.e -9
push.v [stacktop]self.startTag
call.i string_concat(argc=3)
pushi.e -7
pushloc.v local._i
conv.v.i
pop.v.v [array]self._args

:[36]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [27]

:[37]
b [39]

:[38]
pushloc.v local._argument
pop.v.v local._mainString

:[39]
push.s "."@492
conv.s.v
pushloc.v local._mainString
call.i string_split(argc=2)
pop.v.v local._mainStringSplit
pushi.e -7
pushi.e 0
push.v [array]self._mainStringSplit
pop.v.v local._mainCat
pushi.e -7
pushi.e 1
push.v [array]self._mainStringSplit
pop.v.v local._mainKey
pushloc.v local._mainCat
pushref.i 42
pushi.e -9
push.v [stacktop]self.localizedStrings
call.i struct_exists(argc=2)
conv.v.b
bf [41]

:[40]
pushloc.v local._mainKey
pushloc.v local._mainCat
pushref.i 42
pushi.e -9
push.v [stacktop]self.localizedStrings
call.i variable_struct_get(argc=2)
call.i struct_exists(argc=2)
conv.v.b
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
pushloc.v local._mainKey
pushloc.v local._mainCat
pushref.i 42
pushi.e -9
push.v [stacktop]self.localizedStrings
call.i variable_struct_get(argc=2)
call.i variable_struct_get(argc=2)
pop.v.v local._string
pushloc.v local._splitTag
pushi.e -9
push.v [stacktop]self.endTag
pushloc.v local._string
pushloc.v local._splitTag
pushi.e -9
push.v [stacktop]self.startTag
call.i string_concat(argc=3)
pop.v.v local._string
b [45]

:[44]
pushloc.v local._splitTag
pushi.e -9
push.v [stacktop]self.endTag
pushloc.v local._argument
pushloc.v local._splitTag
pushi.e -9
push.v [stacktop]self.startTag
call.i string_concat(argc=3)
ret.v

:[45]
pushloc.v local._numberOfArgs
pushi.e 0
cmp.i.v GT
bf [47]

:[46]
pushloc.v local._args
pushloc.v local._string
call.i string_ext(argc=2)
pop.v.v local._string

:[47]
pushloc.v local._string
ret.v

:[48]
exit.i

:[49]
push.i [function]gml_Script_LocPreprocessor
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.LocPreprocessor
popz.v
b [59]

> gml_Script_strip_color_tags (locals=5, argc=1)
:[50]
push.s ""@61
pop.v.s local._startTag
push.s ""@61
pop.v.s local._endTag
push.v arg.argument0
pop.v.v local.result
pushloc.v local.result
push.s "["@572
conv.s.v
call.i string_pos(argc=2)
pop.v.v local.start_bracket
pushloc.v local.result
push.s "]"@571
conv.s.v
call.i string_pos(argc=2)
pop.v.v local.end_bracket
pushloc.v local.start_bracket
pushi.e 1
cmp.i.v EQ
bf [52]

:[51]
pushloc.v local.end_bracket
pushloc.v local.start_bracket
cmp.v.v GT
b [53]

:[52]
push.e 0

:[53]
bf [55]

:[54]
pushloc.v local.end_bracket
pushloc.v local.start_bracket
sub.v.v
pushi.e 1
add.i.v
pushloc.v local.start_bracket
pushloc.v local.result
call.i string_copy(argc=3)
pop.v.v local._startTag
pushloc.v local.end_bracket
pushloc.v local.start_bracket
sub.v.v
pushi.e 1
add.i.v
pushloc.v local.start_bracket
pushloc.v local.result
call.i string_delete(argc=3)
pop.v.v local.result
pushloc.v local.result
push.s "["@572
conv.s.v
call.i string_pos(argc=2)
pop.v.v local.start_bracket
pushloc.v local.result
push.s "]"@571
conv.s.v
call.i string_pos(argc=2)
pop.v.v local.end_bracket
pushloc.v local.end_bracket
pushloc.v local.start_bracket
sub.v.v
pushi.e 1
add.i.v
pushloc.v local.start_bracket
pushloc.v local.result
call.i string_copy(argc=3)
pop.v.v local._endTag
pushloc.v local.end_bracket
pushloc.v local.start_bracket
sub.v.v
pushi.e 1
add.i.v
pushloc.v local.start_bracket
pushloc.v local.result
call.i string_delete(argc=3)
pop.v.v local.result

:[55]
pushloc.v local._endTag
pushloc.v local._startTag
pushloc.v local.result
b [57]

> gml_Script____struct___216@strip_color_tags@localization (locals=0, argc=0)
:[56]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.text
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.startTag
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.endTag
exit.i

:[57]
push.i [function]gml_Script____struct___216@strip_color_tags@localization
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___216
call.i @@NewGMLObject@@(argc=4)
ret.v

:[58]
exit.i

:[59]
push.i [function]gml_Script_strip_color_tags
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.strip_color_tags
popz.v
pushref.i gml_Script_LocPreprocessor
call.i gml_Script_scribble_default_preprocessor_set(argc=1)
popz.v

:[end]