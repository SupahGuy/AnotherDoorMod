:[0]
b [117]

> gml_Script___InputGamepadTransformQuirks (locals=5, argc=1)
:[1]
push.v arg.argument0
pushi.e -9
pushenv [116]

:[2]
push.v builtin.__description
call.i string_lower(argc=1)
pop.v.v local._description
push.v builtin.__gamepadIndex
call.i gamepad_button_count(argc=1)
pop.v.v local._buttonCount
push.v builtin.__gamepadIndex
call.i gamepad_axis_count(argc=1)
pop.v.v local._axisCount
push.v builtin.__gamepadIndex
call.i gamepad_hat_count(argc=1)
pop.v.v local._hatCount
push.v builtin.__vendor
push.v builtin.__product
add.v.v
pop.v.v local._vidPid
pushi.e 0
dup.i 0
pushi.e 0
cmp.i.i EQ
bt [9]

:[3]
dup.i 0
pushi.e 1
cmp.i.i EQ
bt [42]

:[4]
dup.i 0
pushi.e 6
cmp.i.i EQ
bt [57]

:[5]
dup.i 0
pushi.e 4
cmp.i.i EQ
bt [84]

:[6]
dup.i 0
pushi.e 3
cmp.i.i EQ
bt [93]

:[7]
dup.i 0
pushi.e 20
cmp.i.i EQ
bt [93]

:[8]
b [115]

:[9]
pushloc.v local._vidPid
push.s "63257505"@685
cmp.s.v EQ
bf [13]

:[10]
pushloc.v local._buttonCount
pushi.e 13
cmp.i.v EQ
bf [13]

:[11]
pushloc.v local._hatCount
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
push.s "switch co.,ltd. retro-bit controller"@1273
conv.s.v
pushloc.v local._description
call.i gml_Script___InputStringContains(argc=2)
conv.v.b
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
push.s "Overriding gamepad type: Switch (Saturn Wireless Pro)"@1274
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 5
pop.v.i builtin.__type
b [41]

:[16]
pushloc.v local._vidPid
push.s "7e050920"@781
cmp.s.v EQ
bf [22]

:[17]
pushloc.v local._buttonCount
pushi.e 21
cmp.i.v GT
bf [22]

:[18]
pushloc.v local._buttonCount
pushi.e 30
cmp.i.v EQ
bf [20]

:[19]
pushloc.v local._hatCount
pushi.e 0
cmp.i.v EQ
b [21]

:[20]
push.e 0

:[21]
not.b
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
push.s "Blocking gamepad: Switch USB Controller"@1275
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked
b [41]

:[25]
pushloc.v local._vidPid
push.s "4c056802"@642
cmp.s.v EQ
bf [28]

:[26]
pushloc.v local._buttonCount
pushi.e 19
cmp.i.v EQ
bf [28]

:[27]
pushloc.v local._axisCount
pushi.e 4
cmp.i.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
push.s "Blocking gamepad: PS3 Controller (bad driver)"@1276
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked
b [41]

:[31]
pushloc.v local._vidPid
push.s "4c056802"@642
cmp.s.v EQ
bf [34]

:[32]
pushloc.v local._buttonCount
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
pushloc.v local._axisCount
pushi.e 8
cmp.i.v EQ
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
push.s "Blocking gamepad: DSHidMini Gyro"@1277
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked
b [41]

:[37]
push.s "5e04200b"@1278
conv.s.v
push.s "5e04220b"@1279
conv.s.v
push.s "5e04130b"@1280
conv.s.v
push.s "5e04050b"@1281
conv.s.v
push.s "71011904"@1282
conv.s.v
pushloc.v local._vidPid
call.i gml_Script___InputStringMatches(argc=6)
conv.v.b
bf [39]

:[38]
push.s "Blocking gamepad: DInput duplicate"@1284
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked
b [41]

:[39]
pushloc.v local._vidPid
push.s "31730100"@934
cmp.s.v EQ
bf [41]

:[40]
push.s "Blocking gamepad: DSHIDMini DS4W mode"@1285
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked

:[41]
b [115]

:[42]
push.v builtin.__guid
push.s "none"@1286
cmp.s.v EQ
bf [44]

:[43]
push.s "apple"@1287
conv.s.v
pushloc.v local._description
call.i gml_Script___InputStringContains(argc=2)
conv.v.b
b [45]

:[44]
push.e 0

:[45]
bf [47]

:[46]
push.s "Blocking gamepad: Apple virtual controller"@1288
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked
b [56]

:[47]
push.s "03000000050b00001c1a000000010000"@1289
conv.s.v
push.s "03000000050b00001a1a000000010000"@1290
conv.s.v
push.s "03000000050b0000181a000000010000"@1291
conv.s.v
push.s "03000000050b00005819000000010000"@1292
conv.s.v
push.s "03000000050b0000e518000000010000"@1293
conv.s.v
push.s "03000000050b0000e318000000010000"@1294
conv.s.v
push.s "03000000050b00000619000000010000"@1295
conv.s.v
push.v builtin.__guid
call.i gml_Script___InputStringMatches(argc=8)
conv.v.b
bf [49]

:[48]
push.s "Blocking gamepad: ROG Mouse"@1296
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked
b [56]

:[49]
push.v builtin.__type
pushi.e 6
cmp.i.v EQ
bt [51]

:[50]
push.v builtin.__type
pushi.e 7
cmp.i.v EQ
b [52]

:[51]
push.e 1

:[52]
bf [54]

:[53]
push.s "Blocking gamepad: Single Joy Con"@1297
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked
b [56]

:[54]
pushloc.v local._vidPid
push.s "7e050920"@781
cmp.s.v EQ
bf [56]

:[55]
push.s "Blocking gamepad: Switch Pro Controller"@1298
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked

:[56]
b [115]

:[57]
pushloc.v local._buttonCount
pushi.e 144
cmp.i.v EQ
bf [59]

:[58]
pushloc.v local._axisCount
pushi.e 0
cmp.i.v EQ
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
push.s "Blocking gamepad: Steam Deck virtual keyboard"@1299
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked
b [83]

:[62]
pushloc.v local._buttonCount
pushi.e 0
cmp.i.v EQ
bf [65]

:[63]
pushloc.v local._axisCount
pushi.e 6
cmp.i.v EQ
bf [65]

:[64]
pushloc.v local._hatCount
pushi.e 0
cmp.i.v EQ
b [66]

:[65]
push.e 0

:[66]
bf [68]

:[67]
push.s "Blocking gamepad: Joy-Con IMU"@1300
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked
b [83]

:[68]
pushloc.v local._vidPid
push.s "63257505"@685
cmp.s.v EQ
bf [72]

:[69]
pushloc.v local._buttonCount
pushi.e 13
cmp.i.v EQ
bf [72]

:[70]
pushloc.v local._hatCount
pushi.e 1
cmp.i.v EQ
bf [72]

:[71]
push.s "usb"@1301
conv.s.v
pushloc.v local._description
call.i gml_Script___InputStringContains(argc=2)
conv.v.b
b [73]

:[72]
push.e 0

:[73]
bf [75]

:[74]
push.s "Overriding gamepad type: Saturn Wireless Pro"@1302
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 5
pop.v.i builtin.__type
b [83]

:[75]
push.s "touchscreen"@1303
conv.s.v
push.s "touchpad"@554
conv.s.v
pushloc.v local._description
call.i gml_Script___InputStringContains(argc=3)
conv.v.b
bf [77]

:[76]
push.s "Blocking gamepad: Touchpad"@1304
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked
b [83]

:[77]
push.s "03000000050b00001c1a000011010000"@1305
conv.s.v
push.s "03000000050b00001a1a000011010000"@1306
conv.s.v
push.s "03000000050b0000181a000011010000"@1307
conv.s.v
push.s "03000000050b00005819000011010000"@1308
conv.s.v
push.s "03000000050b0000e518000011010000"@1309
conv.s.v
push.s "03000000050b0000e318000011010000"@1310
conv.s.v
push.s "03000000050b00000619000011010000"@1311
conv.s.v
push.v builtin.__guid
call.i gml_Script___InputStringMatches(argc=8)
conv.v.b
bf [79]

:[78]
push.s "Blocking gamepad: ROG Mouse"@1296
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked
b [83]

:[79]
push.s "1c1b"@1312
conv.s.v
push.s "ef17"@1313
conv.s.v
push.s "6a05"@1314
conv.s.v
push.s "3105"@1315
conv.s.v
push.s "da09"@1316
conv.s.v
push.s "cb06"@1317
conv.s.v
push.s "3004"@1318
conv.s.v
push.s "5704"@1319
conv.s.v
push.s "0804"@1320
conv.s.v
push.s "d21f"@1321
conv.s.v
push.s "e704"@1322
conv.s.v
push.s "f304"@1323
conv.s.v
push.s "ef0e"@1324
conv.s.v
push.s "3328"@1325
conv.s.v
push.s "8eb5"@1326
conv.s.v
push.s "4e04"@1327
conv.s.v
push.v builtin.__vendor
call.i gml_Script___InputStringMatches(argc=17)
conv.v.b
bf [81]

:[80]
push.s "Blocking gamepad: Blocklisted vendor ID"@1328
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked
b [83]

:[81]
push.s "5e04c009"@1329
conv.s.v
push.s "5e042209"@1330
conv.s.v
push.s "5e04cd07"@1331
conv.s.v
push.s "d90492a2"@1332
conv.s.v
push.s "d9040880"@1333
conv.s.v
push.s "620d1a9a"@1334
conv.s.v
push.s "b404f3fe"@1335
conv.s.v
push.s "3c1b3c1b"@1336
conv.s.v
push.s "12042171"@1337
conv.s.v
push.s "eb0302ff"@1338
conv.s.v
push.s "eb0301ff"@1339
conv.s.v
push.s "ac053232"@1340
conv.s.v
push.s "ce26a201"@1341
conv.s.v
push.s "16252800"@1342
conv.s.v
push.s "16251f00"@1343
conv.s.v
push.s "a0202d42"@1344
conv.s.v
push.s "7d1e4a2e"@1345
conv.s.v
push.s "7d1ecb2d"@1346
conv.s.v
push.s "571d03ad"@1347
conv.s.v
push.s "c016d004"@1348
conv.s.v
push.s "17100320"@1349
conv.s.v
push.s "450c0a80"@1350
conv.s.v
push.s "d904dfa0"@1351
conv.s.v
push.s "d9040980"@1352
conv.s.v
push.s "6d040ac3"@1353
conv.s.v
push.s "6b0410ff"@1354
conv.s.v
push.s "5e040008"@1355
conv.s.v
push.s "5e04b207"@1356
conv.s.v
push.s "5e04a507"@1357
conv.s.v
push.s "5e047307"@1358
conv.s.v
push.s "5e046807"@1359
conv.s.v
push.s "5e045007"@1360
conv.s.v
push.s "5e044807"@1361
conv.s.v
push.s "5e044507"@1362
conv.s.v
push.s "5e043007"@1363
conv.s.v
push.s "5e04b400"@1364
conv.s.v
push.s "5e04b000"@1365
conv.s.v
push.s "5e049d00"@1366
conv.s.v
pushloc.v local._vidPid
call.i gml_Script___InputStringMatches(argc=39)
conv.v.b
bf [83]

:[82]
push.s "Blocking gamepad: Blocklisted device ID"@1367
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked

:[83]
b [115]

:[84]
pushloc.v local._description
push.s "joy-con charging grip"@1368
cmp.s.v EQ
bf [86]

:[85]
push.s "Blocking gamepad: Switch charging grip"@1369
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked
b [92]

:[86]
push.v builtin.__guid
push.s "39666538356630396233636633333330"@1370
cmp.s.v EQ
bf [88]

:[87]
push.s "Blocking gamepad: Xbox Elite Series 2"@1371
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked
b [92]

:[88]
push.s "39373064396565646338333134303131"@1372
conv.s.v
push.s "31613237643563656561633964393335"@1373
conv.s.v
push.s "65366131663736363061313736656431"@1374
conv.s.v
push.s "31343431323332663936386663646631"@1375
conv.s.v
push.s "61393962646434393836356631636132"@1376
conv.s.v
push.s "4e696e74656e646f20436f2e2c204c74"@1377
conv.s.v
push.s "31613237643563656561633964393335"@1373
conv.s.v
push.v builtin.__guid
call.i gml_Script___InputStringMatches(argc=8)
conv.v.b
bf [90]

:[89]
push.s "Blocking gamepad: Incompatible Switch Gamepad"@1378
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked
b [92]

:[90]
push.s "66626636666361303930383433646337"@1379
conv.s.v
push.s "38346462303632636161363531303766"@1380
conv.s.v
push.s "30653530626463313864336165306236"@1381
conv.s.v
push.s "37306138633665393031353462623835"@1382
conv.s.v
push.v builtin.__guid
call.i gml_Script___InputStringMatches(argc=5)
conv.v.b
bf [92]

:[91]
push.s "Blocking gamepad: TV Remote"@1383
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked

:[92]
b [115]

:[93]
push.v builtin.__type
pushi.e 5
cmp.i.v EQ
bf [107]

:[94]
push.s "Remapping face buttons: Nintendo Switch"@1384
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
b [97]

> gml_Script_anon@8193@__InputGamepadTransformQuirks@__InputGamepadTransformQuirks (locals=0, argc=1)
:[95]
push.i 32770
conv.i.v
push.v builtin.__gamepadIndex
call.i gamepad_button_value(argc=2)
ret.v

:[96]
exit.i

:[97]
push.i [function]gml_Script_anon@8193@__InputGamepadTransformQuirks@__InputGamepadTransformQuirks
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.i 32769
conv.i.v
push.v builtin.__gamepadIndex
call.i gml_Script_InputPlugInGamepadSetMapping(argc=3)
popz.v
b [100]

> gml_Script_anon@8348@__InputGamepadTransformQuirks@__InputGamepadTransformQuirks (locals=0, argc=1)
:[98]
push.i 32769
conv.i.v
push.v builtin.__gamepadIndex
call.i gamepad_button_value(argc=2)
ret.v

:[99]
exit.i

:[100]
push.i [function]gml_Script_anon@8348@__InputGamepadTransformQuirks@__InputGamepadTransformQuirks
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.i 32770
conv.i.v
push.v builtin.__gamepadIndex
call.i gml_Script_InputPlugInGamepadSetMapping(argc=3)
popz.v
b [103]

> gml_Script_anon@8503@__InputGamepadTransformQuirks@__InputGamepadTransformQuirks (locals=0, argc=1)
:[101]
push.i 32772
conv.i.v
push.v builtin.__gamepadIndex
call.i gamepad_button_value(argc=2)
ret.v

:[102]
exit.i

:[103]
push.i [function]gml_Script_anon@8503@__InputGamepadTransformQuirks@__InputGamepadTransformQuirks
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.i 32771
conv.i.v
push.v builtin.__gamepadIndex
call.i gml_Script_InputPlugInGamepadSetMapping(argc=3)
popz.v
b [106]

> gml_Script_anon@8658@__InputGamepadTransformQuirks@__InputGamepadTransformQuirks (locals=0, argc=1)
:[104]
push.i 32771
conv.i.v
push.v builtin.__gamepadIndex
call.i gamepad_button_value(argc=2)
ret.v

:[105]
exit.i

:[106]
push.i [function]gml_Script_anon@8658@__InputGamepadTransformQuirks@__InputGamepadTransformQuirks
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
push.i 32772
conv.i.v
push.v builtin.__gamepadIndex
call.i gml_Script_InputPlugInGamepadSetMapping(argc=3)
popz.v
b [114]

:[107]
push.v builtin.__type
pushi.e 6
cmp.i.v EQ
bt [109]

:[108]
push.v builtin.__type
pushi.e 7
cmp.i.v EQ
b [110]

:[109]
push.e 1

:[110]
bf [112]

:[111]
push.s "Blocking gamepad: Single Joy Con"@1297
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked
b [114]

:[112]
push.s "snes"@1246
conv.s.v
pushloc.v local._description
call.i gml_Script___InputStringContains(argc=2)
conv.v.b
bf [114]

:[113]
push.s "Blocking gamepad: SNES NSO controller"@1391
conv.s.v
call.i gml_Script___InputTrace(argc=1)
popz.v
pushi.e 1
pop.v.b builtin.__blocked

:[114]
b [115]

:[115]
popz.i

:[116]
popenv [2]
exit.i

:[117]
push.i [function]gml_Script___InputGamepadTransformQuirks
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputGamepadTransformQuirks
popz.v

:[end]