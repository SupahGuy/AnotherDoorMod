:[0]
b [56]

> gml_Script_cCards (locals=1, argc=15)
:[1]
pushbltn.v builtin.argument2
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushbltn.v builtin.undefined
pop.v.v builtin.argument2

:[3]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin.argument4

:[5]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [7]

:[6]
push.l 0
conv.l.v
call.i @@NewGMLArray@@(argc=1)
pop.v.v builtin.argument5

:[7]
pushbltn.v builtin.argument6
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [9]

:[8]
pushbltn.v builtin.undefined
pop.v.v builtin.argument6

:[9]
pushbltn.v builtin.argument7
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [11]

:[10]
pushbltn.v builtin.undefined
pop.v.v builtin.argument7

:[11]
pushbltn.v builtin.argument8
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [13]

:[12]
pushbltn.v builtin.undefined
pop.v.v builtin.argument8

:[13]
pushbltn.v builtin.argument9
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [15]

:[14]
pushbltn.v builtin.undefined
pop.v.v builtin.argument9

:[15]
pushbltn.v builtin.argument10
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [17]

:[16]
pushbltn.v builtin.undefined
pop.v.v builtin.argument10

:[17]
pushbltn.v builtin.argument11
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [19]

:[18]
pushbltn.v builtin.undefined
pop.v.v builtin.argument11

:[19]
pushbltn.v builtin.argument12
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [21]

:[20]
pushbltn.v builtin.undefined
pop.v.v builtin.argument12

:[21]
pushbltn.v builtin.argument13
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [23]

:[22]
pushbltn.v builtin.undefined
pop.v.v builtin.argument13

:[23]
pushbltn.v builtin.argument14
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [25]

:[24]
pushbltn.v builtin.undefined
pop.v.v builtin.argument14

:[25]
call.i @@SetStatic@@(argc=0)
push.v arg.argument4
call.i array_length(argc=1)
pop.v.v local._nbrOfEffect
push.v arg.argument3
pop.v.v builtin.typeOfCard
push.s ""@61
pop.v.s builtin.structName
push.v arg.argument2
pop.v.v builtin.sprite
push.v arg.argument0
pop.v.v builtin.name
push.v arg.argument1
pop.v.v builtin.desc
push.v arg.argument4
pop.v.v builtin.actionType
push.v arg.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [27]

:[26]
push.l 0
conv.l.v
pushloc.v local._nbrOfEffect
call.i array_create(argc=2)
b [28]

:[27]
push.v arg.argument5

:[28]
pop.v.v builtin.targetType
push.v arg.argument6
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [30]

:[29]
pushi.e -1
conv.i.v
pushloc.v local._nbrOfEffect
call.i array_create(argc=2)
b [31]

:[30]
push.v arg.argument6

:[31]
pop.v.v builtin.amount
push.v arg.argument7
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [33]

:[32]
pushi.e -1
conv.i.v
pushloc.v local._nbrOfEffect
call.i array_create(argc=2)
b [34]

:[33]
push.v arg.argument7

:[34]
pop.v.v builtin.stack
push.v arg.argument8
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [36]

:[35]
push.l 0
conv.l.v
pushloc.v local._nbrOfEffect
call.i array_create(argc=2)
b [37]

:[36]
push.v arg.argument8

:[37]
pop.v.v builtin.damageBased
push.v arg.argument9
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [39]

:[38]
push.l 0
conv.l.v
pushloc.v local._nbrOfEffect
call.i array_create(argc=2)
b [40]

:[39]
push.v arg.argument9

:[40]
pop.v.v builtin.stackBased
push.v arg.argument10
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [42]

:[41]
pushi.e 100
conv.i.v
pushloc.v local._nbrOfEffect
call.i array_create(argc=2)
b [43]

:[42]
push.v arg.argument10

:[43]
pop.v.v builtin.chance
push.v arg.argument11
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [45]

:[44]
push.l 0
conv.l.v
pushloc.v local._nbrOfEffect
call.i array_create(argc=2)
b [46]

:[45]
push.v arg.argument11

:[46]
pop.v.v builtin.chanceClusivity
push.v arg.argument12
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [48]

:[47]
pushbltn.v builtin.undefined
pushloc.v local._nbrOfEffect
call.i array_create(argc=2)
b [49]

:[48]
push.v arg.argument12

:[49]
pop.v.v builtin.effectRequiredToActivate
push.v arg.argument13
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [51]

:[50]
pushbltn.v builtin.undefined
pushloc.v local._nbrOfEffect
call.i array_create(argc=2)
b [52]

:[51]
push.v arg.argument13

:[52]
pop.v.v builtin.effectRequiredToSkip
push.v arg.argument14
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [54]

:[53]
pushi.e -1
conv.i.v
pushloc.v local._nbrOfEffect
call.i array_create(argc=2)
b [55]

:[54]
push.v arg.argument14

:[55]
pop.v.v builtin.damageTimes
exit.i

:[56]
push.i [function]gml_Script_cCards
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.cCards
popz.v
b [67]

> gml_Script_init_cards_action_variables (locals=4, argc=0)
:[57]
pushglb.v global.cards
call.i variable_struct_get_names(argc=1)
pop.v.v local._cards
pushi.e 1
conv.b.v
pushloc.v local._cards
call.i array_sort(argc=2)
popz.v
pushi.e 0
pop.v.i local._i

:[58]
pushloc.v local._i
pushglb.v global.cards
call.i gml_Script_get_size(argc=1)
cmp.v.v LT
bf [66]

:[59]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._cards
pop.v.v local._k
pushloc.v local._k
pushglb.v global.cards
call.i variable_struct_get(argc=2)
pop.v.v local._v
pushloc.v local._k
pushloc.v local._v
pushi.e -9
pop.v.v [stacktop]self.structName
pushloc.v local._v
pushi.e -9
push.v [stacktop]self.typeOfCard
push.l 4
cmp.l.v EQ
bf [61]

:[60]
pushloc.v local._v
pushi.e -9
push.v [stacktop]self.structName
pushglb.v global.cardsMushroom
call.i array_push(argc=2)
popz.v
b [65]

:[61]
pushloc.v local._v
pushi.e -9
push.v [stacktop]self.typeOfCard
push.l 1
cmp.l.v EQ
bf [63]

:[62]
pushloc.v local._v
pushi.e -9
push.v [stacktop]self.structName
pushglb.v global.cardsForest
call.i array_push(argc=2)
popz.v
b [65]

:[63]
pushloc.v local._v
pushi.e -9
push.v [stacktop]self.typeOfCard
push.l 2
cmp.l.v EQ
bf [65]

:[64]
pushloc.v local._v
pushi.e -9
push.v [stacktop]self.structName
pushglb.v global.cardsCity
call.i array_push(argc=2)
popz.v

:[65]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [58]

:[66]
exit.i

:[67]
push.i [function]gml_Script_init_cards_action_variables
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.init_cards_action_variables
popz.v
call.i @@NewGMLObject@@(argc=0)
pop.v.v global.cards
call.i @@NewGMLArray@@(argc=0)
pop.v.v global.cardsForest
call.i @@NewGMLArray@@(argc=0)
pop.v.v global.cardsMushroom
call.i @@NewGMLArray@@(argc=0)
pop.v.v global.cardsCity

:[end]