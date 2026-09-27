:[0]
b [9]

> gml_Script___InputOnOperaGXMobile (locals=0, argc=0)
:[1]
isstaticok.e
bt [7]

:[2]
setstatic.e
call.i @@This@@(argc=0)
b [6]

> gml_Script__onOperaGXMobile@anon@93@__InputOnOperaGXMobile@__InputOnOperaGXMobile (locals=2, argc=0)
:[3]
pushi.e 0
conv.b.v
ret.v

:[4]
call.i os_get_info(argc=0)
pop.v.v local._map
push.s "mobile"@1658
conv.s.v
pushloc.v local._map
call.i ds_map_find_value(argc=2)
pop.v.v local._onMobile
pushloc.v local._map
call.i ds_map_destroy(argc=1)
popz.v
pushloc.v local._onMobile
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script__onOperaGXMobile@anon@93@__InputOnOperaGXMobile@__InputOnOperaGXMobile
conv.i.v
pushi.e -16
conv.i.v
call.i method(argc=2)
callv.v 0
pop.v.v static._onOperaGXMobile

:[7]
push.v static._onOperaGXMobile
ret.v

:[8]
exit.i

:[9]
push.i [function]gml_Script___InputOnOperaGXMobile
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputOnOperaGXMobile
popz.v

:[end]