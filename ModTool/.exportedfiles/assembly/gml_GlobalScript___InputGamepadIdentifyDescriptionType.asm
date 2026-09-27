:[0]
b [20]

> gml_Script___InputGamepadIdentifyDescriptionType (locals=0, argc=1)
:[1]
push.v arg.argument0
call.i string_lower(argc=1)
pop.v.v arg.argument0
push.s "left joy-con"@1220
conv.s.v
push.s "joy-con (l)"@1221
conv.s.v
push.v arg.argument0
call.i gml_Script___InputStringContains(argc=3)
conv.v.b
bf [4]

:[2]
pushi.e 6
conv.i.v
ret.v

:[3]
b [18]

:[4]
push.s "right joy-con"@1222
conv.s.v
push.s "joy-con (r)"@1223
conv.s.v
push.v arg.argument0
call.i gml_Script___InputStringContains(argc=3)
conv.v.b
bf [7]

:[5]
pushi.e 7
conv.i.v
ret.v

:[6]
b [18]

:[7]
push.s "backbone one playstation"@1224
conv.s.v
push.s "dualsense"@1225
conv.s.v
push.s "ps5"@1226
conv.s.v
push.v arg.argument0
call.i gml_Script___InputStringContains(argc=4)
conv.v.b
bf [10]

:[8]
pushi.e 4
conv.i.v
ret.v

:[9]
b [18]

:[10]
push.s "8bitdo p30"@1227
conv.s.v
push.s "sony"@1228
conv.s.v
push.s "dualshock"@1229
conv.s.v
push.s "playstation"@1230
conv.s.v
push.s "psx"@1231
conv.s.v
push.s "ps1"@1232
conv.s.v
push.s "ps2"@1233
conv.s.v
push.s "ps3"@1234
conv.s.v
push.s "ps4"@1235
conv.s.v
push.v arg.argument0
call.i gml_Script___InputStringContains(argc=10)
conv.v.b
bf [13]

:[11]
pushi.e 3
conv.i.v
ret.v

:[12]
b [18]

:[13]
push.s "mfi"@1236
conv.s.v
push.s "horipad ultimate"@1237
conv.s.v
push.s "nimbus"@1238
conv.s.v
push.s "steam"@1239
conv.s.v
push.s "amazon game"@1240
conv.s.v
push.s "luna"@1241
conv.s.v
push.s "stadia"@1242
conv.s.v
push.s "xbox"@1243
conv.s.v
push.s "xinput"@1244
conv.s.v
push.v arg.argument0
call.i gml_Script___InputStringContains(argc=10)
conv.v.b
bf [16]

:[14]
pushi.e 2
conv.i.v
ret.v

:[15]
b [18]

:[16]
push.s "sfc"@1245
conv.s.v
push.s "snes"@1246
conv.s.v
push.s "wii"@1247
conv.s.v
push.s "odin"@1248
conv.s.v
push.s "retroid"@1249
conv.s.v
push.s "8bitdo"@1250
conv.s.v
push.s "mobapad"@1251
conv.s.v
push.s "lic pro"@1252
conv.s.v
push.s "switch pro"@1253
conv.s.v
push.s "switch controller"@1254
conv.s.v
push.s "for nintendo switch"@1255
conv.s.v
push.s "for switch"@1256
conv.s.v
push.s "joy-con (l/r)"@1257
conv.s.v
push.v arg.argument0
call.i gml_Script___InputStringContains(argc=14)
conv.v.b
bf [18]

:[17]
pushi.e 5
conv.i.v
ret.v

:[18]
pushbltn.v builtin.undefined
ret.v

:[19]
exit.i

:[20]
push.i [function]gml_Script___InputGamepadIdentifyDescriptionType
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputGamepadIdentifyDescriptionType
popz.v

:[end]