:[0]
b [6]

> gml_Script___InputCreateKbmBindingNameMap (locals=2, argc=0)
:[1]
call.i ds_map_create(argc=0)
pop.v.v local._map
push.s "mouse button left"@557
conv.s.v
pushi.e 1
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "mouse button middle"@559
conv.s.v
pushi.e 3
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "mouse button right"@560
conv.s.v
pushi.e 2
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "mouse button forward"@561
conv.s.v
pushi.e 4
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "mouse button back"@562
conv.s.v
pushi.e 5
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "mouse wheel up"@563
conv.s.v
push.i 40964
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "mouse wheel down"@564
conv.s.v
push.i 40965
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "`"@565
conv.s.v
pushi.e 192
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "-"@566
conv.s.v
pushi.e 189
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "="@567
conv.s.v
pushi.e 187
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s ";"@568
conv.s.v
pushi.e 186
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "'"@569
conv.s.v
pushi.e 222
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s ","@570
conv.s.v
pushi.e 188
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "."@492
conv.s.v
pushi.e 190
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "]"@571
conv.s.v
pushi.e 221
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "["@572
conv.s.v
pushi.e 219
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "/"@573
conv.s.v
pushi.e 191
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "\\"@574
conv.s.v
pushi.e 220
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "scroll lock"@575
conv.s.v
pushi.e 145
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "caps lock"@576
conv.s.v
pushi.e 20
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "num lock"@577
conv.s.v
pushi.e 144
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "left meta"@578
conv.s.v
pushi.e 91
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "right meta"@579
conv.s.v
pushi.e 92
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "clear"@580
conv.s.v
pushi.e 12
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "menu"@581
conv.s.v
pushi.e 93
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "print screen"@582
conv.s.v
pushi.e 44
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "pause break"@583
conv.s.v
pushi.e 19
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "escape"@584
conv.s.v
pushi.e 27
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "backspace"@585
conv.s.v
pushi.e 8
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "space"@586
conv.s.v
pushi.e 32
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "enter"@510
conv.s.v
pushi.e 13
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "arrow up"@587
conv.s.v
pushi.e 38
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "arrow down"@588
conv.s.v
pushi.e 40
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "arrow left"@589
conv.s.v
pushi.e 37
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "arrow right"@590
conv.s.v
pushi.e 39
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "tab"@591
conv.s.v
pushi.e 9
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "right alt"@592
conv.s.v
pushi.e 165
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "left alt"@593
conv.s.v
pushi.e 164
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "alt"@594
conv.s.v
pushi.e 18
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "right shift"@595
conv.s.v
pushi.e 161
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "left shift"@596
conv.s.v
pushi.e 160
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "shift"@597
conv.s.v
pushi.e 16
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "right ctrl"@598
conv.s.v
pushi.e 163
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "left ctrl"@599
conv.s.v
pushi.e 162
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "ctrl"@600
conv.s.v
pushi.e 17
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "f1"@601
conv.s.v
pushi.e 112
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "f2"@602
conv.s.v
pushi.e 113
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "f3"@603
conv.s.v
pushi.e 114
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "f4"@604
conv.s.v
pushi.e 115
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "f5"@605
conv.s.v
pushi.e 116
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "f6"@606
conv.s.v
pushi.e 117
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "f7"@607
conv.s.v
pushi.e 118
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "f8"@608
conv.s.v
pushi.e 119
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "f9"@609
conv.s.v
pushi.e 120
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "f10"@610
conv.s.v
pushi.e 121
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "f11"@611
conv.s.v
pushi.e 122
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "f12"@612
conv.s.v
pushi.e 123
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "numpad /"@613
conv.s.v
pushi.e 111
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "numpad *"@614
conv.s.v
pushi.e 106
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "numpad -"@615
conv.s.v
pushi.e 109
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "numpad +"@616
conv.s.v
pushi.e 107
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "numpad ."@617
conv.s.v
pushi.e 110
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "numpad 0"@618
conv.s.v
pushi.e 96
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "numpad 1"@619
conv.s.v
pushi.e 97
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "numpad 2"@620
conv.s.v
pushi.e 98
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "numpad 3"@621
conv.s.v
pushi.e 99
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "numpad 4"@622
conv.s.v
pushi.e 100
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "numpad 5"@623
conv.s.v
pushi.e 101
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "numpad 6"@624
conv.s.v
pushi.e 102
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "numpad 7"@625
conv.s.v
pushi.e 103
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "numpad 8"@626
conv.s.v
pushi.e 104
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "numpad 9"@627
conv.s.v
pushi.e 105
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "delete"@628
conv.s.v
pushi.e 46
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "insert"@629
conv.s.v
pushi.e 45
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "home"@543
conv.s.v
pushi.e 36
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "page up"@630
conv.s.v
pushi.e 33
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "page down"@631
conv.s.v
pushi.e 34
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.s "end"@632
conv.s.v
pushi.e 35
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
pushi.e 13
conv.i.v
pushloc.v local._map
call.i ds_map_find_value(argc=2)
pushi.e 10
conv.i.v
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
pushi.e 124
pop.v.i local._i

:[2]
pushloc.v local._i
pushi.e 144
cmp.i.v LT
bf [4]

:[3]
push.s "f"@634
pushloc.v local._i
call.i string(argc=1)
add.v.s
pushloc.v local._i
pushloc.v local._map
call.i ds_map_add(argc=3)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [2]

:[4]
pushloc.v local._map
ret.v

:[5]
exit.i

:[6]
push.i [function]gml_Script___InputCreateKbmBindingNameMap
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__InputCreateKbmBindingNameMap
popz.v

:[end]