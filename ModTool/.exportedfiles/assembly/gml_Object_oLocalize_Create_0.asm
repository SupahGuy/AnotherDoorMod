; WARNING: Missing code locals, possibly due to unsupported bytecode version or a brand new code entry.

:[0]
push.s "localization/availableLanguages.json"@10193
conv.s.v
call.i gml_Script_load_json_file_to_string(argc=1)
pop.v.v local._availableLangsJsonStr
pushloc.v local._availableLangsJsonStr
call.i json_parse(argc=1)
pop.v.v builtin.availableLangsStruct
call.i @@NewGMLObject@@(argc=0)
pop.v.v builtin.localizedStrings
call.i gml_Script_set_language(argc=0)
popz.v

:[end]