:[0]
b [22]

> gml_Script_cTooltip (locals=0, argc=10)
:[1]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e -1
pop.v.i builtin.argument0

:[3]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
pushi.e -1
pop.v.i builtin.argument1

:[5]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[6]
pushi.e -1
pop.v.i builtin.argument2

:[7]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [9]

:[8]
push.l 1
pop.v.l builtin.argument3

:[9]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [11]

:[10]
push.l 1
pop.v.l builtin.argument4

:[11]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [13]

:[12]
pushi.e -1
pop.v.i builtin.argument5

:[13]
pushbltn.v builtin.argument6
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [15]

:[14]
pushi.e -1
pop.v.i builtin.argument6

:[15]
pushbltn.v builtin.argument7
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [17]

:[16]
pushi.e 0
pop.v.b builtin.argument7

:[17]
pushbltn.v builtin.argument8
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [19]

:[18]
pushi.e 0
pop.v.b builtin.argument8

:[19]
pushbltn.v builtin.argument9
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [21]

:[20]
pushi.e -4
pop.v.i builtin.argument9

:[21]
call.i @@SetStatic@@(argc=0)
push.v arg.argument0
pop.v.v builtin.belongTo
push.v arg.argument1
pop.v.v builtin.title
push.v arg.argument2
pop.v.v builtin.body
push.v arg.argument3
pop.v.v builtin.alignX
push.v arg.argument4
pop.v.v builtin.alignY
push.v arg.argument5
pop.v.v builtin.img
push.v arg.argument6
pop.v.v builtin.effect
push.v arg.argument7
pop.v.v builtin.effectIsLinked
push.v arg.argument8
pop.v.v builtin.isDialbox
push.v arg.argument9
pop.v.v builtin.idParent
exit.i

:[22]
push.i [function]gml_Script_cTooltip
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.cTooltip
popz.v
b [48]

> gml_Script_cDialogue (locals=0, argc=12)
:[23]
pushbltn.v builtin.argument0
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [25]

:[24]
pushi.e -1
pop.v.i builtin.argument0

:[25]
pushbltn.v builtin.argument1
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [27]

:[26]
push.l 1
pop.v.l builtin.argument1

:[27]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [29]

:[28]
push.l 1
pop.v.l builtin.argument2

:[29]
pushbltn.v builtin.argument3
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [31]

:[30]
push.l 5
pop.v.l builtin.argument3

:[31]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [33]

:[32]
push.l 1
pop.v.l builtin.argument4

:[33]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [35]

:[34]
pushi.e -1
pop.v.i builtin.argument5

:[35]
pushbltn.v builtin.argument6
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [37]

:[36]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument6

:[37]
pushbltn.v builtin.argument7
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [39]

:[38]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument7

:[39]
pushbltn.v builtin.argument8
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [41]

:[40]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument8

:[41]
pushbltn.v builtin.argument9
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [43]

:[42]
pushi.e -1
pop.v.i builtin.argument9

:[43]
pushbltn.v builtin.argument10
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [45]

:[44]
pushi.e 0
pop.v.i builtin.argument10

:[45]
pushbltn.v builtin.argument11
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [47]

:[46]
pushi.e 1
pop.v.i builtin.argument11

:[47]
call.i @@SetStatic@@(argc=0)
push.v arg.argument0
pop.v.v builtin.body
push.v arg.argument1
pop.v.v builtin.alignX
push.v arg.argument2
pop.v.v builtin.alignY
push.v arg.argument3
pop.v.v builtin.whoIsSpeaking
push.v arg.argument4
pop.v.v builtin.closeType
push.v arg.argument5
pop.v.v builtin.closeTimer
push.v arg.argument6
pop.v.v builtin.callBackStart
push.v arg.argument7
pop.v.v builtin.callBackTextEnd
push.v arg.argument8
pop.v.v builtin.callBackDestroy
push.v arg.argument9
pop.v.v builtin.tooltipList
push.v arg.argument10
pop.v.v builtin.numberInList
push.v arg.argument11
pop.v.v builtin.totalListLength
exit.i

:[48]
push.i [function]gml_Script_cDialogue
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.cDialogue
popz.v
b [53]

> gml_Script_set_list_of_tooltip (locals=1, argc=1)
:[49]
pushi.e 0
pop.v.i local._i

:[50]
pushloc.v local._i
push.v arg.argument0
call.i array_length(argc=1)
cmp.v.v LT
bf [52]

:[51]
push.v arg.argument0
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument0
pushi.e -9
pop.v.v [stacktop]self.tooltipList
pushloc.v local._i
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument0
pushi.e -9
pop.v.v [stacktop]self.numberInList
push.v arg.argument0
call.i array_length(argc=1)
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument0
pushi.e -9
pop.v.v [stacktop]self.totalListLength
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [50]

:[52]
exit.i

:[53]
push.i [function]gml_Script_set_list_of_tooltip
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.set_list_of_tooltip
popz.v

:[end]