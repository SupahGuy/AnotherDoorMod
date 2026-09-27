:[0]
b [11]

> gml_Script_jeton_sort (locals=4, argc=1)
:[1]
push.v arg.argument0
call.i array_length(argc=1)
pop.v.v local._length
pushi.e 1
pop.v.i local._i

:[2]
pushloc.v local._i
pushloc.v local._length
cmp.v.v LT
bf [10]

:[3]
pushi.e -15
pushloc.v local._i
conv.v.i
push.v [array]self.argument0
pop.v.v local._key
pushloc.v local._i
pushi.e 1
sub.i.v
pop.v.v local._j

:[4]
pushloc.v local._j
pushi.e 0
cmp.i.v GTE
bf [6]

:[5]
pushi.e -15
pushloc.v local._j
conv.v.i
push.v [array]self.argument0
pushi.e -9
push.v [stacktop]self.val
pushi.e 1000
mul.i.v
pushi.e -15
pushloc.v local._j
conv.v.i
push.v [array]self.argument0
pushi.e -9
push.v [stacktop]self.jetonEqual
add.v.v
pushloc.v local._key
pushi.e -9
push.v [stacktop]self.val
pushi.e 1000
mul.i.v
pushloc.v local._key
pushi.e -9
push.v [stacktop]self.jetonEqual
add.v.v
cmp.v.v LT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e -15
pushloc.v local._j
conv.v.i
push.v [array]self.argument0
pushi.e -15
pushloc.v local._j
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]self.argument0
pushloc.v local._j
pushi.e 1
sub.i.v
pop.v.v local._j
b [4]

:[9]
pushloc.v local._key
pushi.e -15
pushloc.v local._j
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]self.argument0
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [2]

:[10]
exit.i

:[11]
push.i [function]gml_Script_jeton_sort
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.jeton_sort
popz.v
b [28]

> gml_Script_jeton_equality_swap (locals=5, argc=1)
:[12]
pushi.e 0
pop.v.i local._j
push.v arg.argument0
call.i array_length(argc=1)
pop.v.v local._length
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._indexSwap
pushi.e 0
pop.v.i local._i

:[13]
pushloc.v local._i
pushloc.v local._length
pushi.e 1
sub.i.v
cmp.v.v LT
bf [26]

:[14]
pushi.e 0
pop.v.i local._j

:[15]
pushloc.v local._i
pushloc.v local._j
add.v.v
pushi.e 1
add.i.v
pushloc.v local._length
cmp.v.v LT
bf [17]

:[16]
pushi.e -15
pushloc.v local._i
pushloc.v local._j
add.v.v
conv.v.i
push.v [array]self.argument0
pushi.e -9
push.v [stacktop]self.val
pushi.e -15
pushloc.v local._i
pushloc.v local._j
add.v.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]self.argument0
pushi.e -9
push.v [stacktop]self.val
cmp.v.v EQ
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.v local._j
push.e 1
add.i.v
pop.v.v local._j
b [15]

:[20]
pushloc.v local._j
pushi.e 0
cmp.i.v GT
bf [25]

:[21]
pushi.e 0
pop.v.i local._k

:[22]
pushloc.v local._k
pushloc.v local._j
pushi.e 2
conv.i.d
div.d.v
cmp.v.v LT
bf [24]

:[23]
pushi.e -15
pushloc.v local._i
pushloc.v local._j
add.v.v
pushloc.v local._k
sub.v.v
conv.v.i
push.v [array]self.argument0
pushi.e -9
push.v [stacktop]self.playerId
pushi.e -15
pushloc.v local._i
pushloc.v local._k
add.v.v
conv.v.i
push.v [array]self.argument0
pushi.e -9
push.v [stacktop]self.playerId
pushloc.v local._indexSwap
call.i array_push(argc=3)
popz.v
push.v local._k
push.e 1
add.i.v
pop.v.v local._k
b [22]

:[24]
push.v local._i
pushloc.v local._j
add.v.v
pop.v.v local._i

:[25]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [13]

:[26]
pushloc.v local._indexSwap
ret.v

:[27]
exit.i

:[28]
push.i [function]gml_Script_jeton_equality_swap
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.jeton_equality_swap
popz.v

:[end]