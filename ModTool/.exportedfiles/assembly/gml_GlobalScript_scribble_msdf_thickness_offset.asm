:[0]
b [2]

> gml_Script_scribble_msdf_thickness_offset (locals=0, argc=1)
:[1]
push.s "scribble_msdf_thickness_offset(), and MSDF fonts as a whole, have been removed from Scribble\nInstead, please use GameMaker's native SDF fonts"@8063
conv.s.v
call.i gml_Script___scribble_error(argc=1)
popz.v
exit.i

:[2]
push.i [function]gml_Script_scribble_msdf_thickness_offset
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.scribble_msdf_thickness_offset
popz.v

:[end]