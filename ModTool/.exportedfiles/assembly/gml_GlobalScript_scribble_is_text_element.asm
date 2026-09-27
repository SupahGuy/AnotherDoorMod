:[0]
b [3]

> gml_Script_scribble_is_text_element (locals=0, argc=1)
:[1]
pushref.i gml_Script___scribble_class_element
push.v arg.argument0
call.i is_instanceof(argc=2)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_scribble_is_text_element
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_is_text_element
popz.v

:[end]