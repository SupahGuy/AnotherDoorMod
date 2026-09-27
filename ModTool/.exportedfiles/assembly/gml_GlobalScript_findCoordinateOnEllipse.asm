:[0]
b [19]

> gml_Script_findCoordinateOnEllipse (locals=3, argc=5)
:[1]
push.v arg.argument4
call.i degtorad(argc=1)
call.i tan(argc=1)
pop.v.v local._tan
push.v arg.argument2
push.v arg.argument3
mul.v.v
push.v arg.argument3
call.i sqr(argc=1)
push.v arg.argument2
call.i sqr(argc=1)
pushloc.v local._tan
call.i sqr(argc=1)
mul.v.v
add.v.v
call.i sqrt(argc=1)
div.v.v
pop.v.v local._thePointX
push.v arg.argument2
push.v arg.argument3
mul.v.v
push.v arg.argument2
call.i sqr(argc=1)
push.v arg.argument3
call.i sqr(argc=1)
pushloc.v local._tan
call.i sqr(argc=1)
div.v.v
add.v.v
call.i sqrt(argc=1)
div.v.v
pop.v.v local._thePointY
pushi.e 0
push.v arg.argument4
cmp.v.i LTE
bf [3]

:[2]
push.v arg.argument4
pushi.e 90
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
pushloc.v local._thePointX
call.i abs(argc=1)
pop.v.v local._thePointX
pushloc.v local._thePointY
call.i abs(argc=1)
neg.v
pop.v.v local._thePointY
b [17]

:[6]
pushi.e 90
push.v arg.argument4
cmp.v.i LTE
bf [8]

:[7]
push.v arg.argument4
pushi.e 180
cmp.i.v LT
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushloc.v local._thePointX
call.i abs(argc=1)
neg.v
pop.v.v local._thePointX
pushloc.v local._thePointY
call.i abs(argc=1)
neg.v
pop.v.v local._thePointY
b [17]

:[11]
pushi.e 180
push.v arg.argument4
cmp.v.i LTE
bf [13]

:[12]
push.v arg.argument4
pushi.e 270
cmp.i.v LT
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushloc.v local._thePointX
call.i abs(argc=1)
neg.v
pop.v.v local._thePointX
pushloc.v local._thePointY
call.i abs(argc=1)
pop.v.v local._thePointY
b [17]

:[16]
pushloc.v local._thePointX
call.i abs(argc=1)
pop.v.v local._thePointX
pushloc.v local._thePointY
call.i abs(argc=1)
pop.v.v local._thePointY

:[17]
pushloc.v local._thePointY
push.v arg.argument1
add.v.v
pushloc.v local._thePointX
push.v arg.argument0
add.v.v
call.i @@NewGMLArray@@(argc=2)
ret.v

:[18]
exit.i

:[19]
push.i [function]gml_Script_findCoordinateOnEllipse
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.findCoordinateOnEllipse
popz.v

:[end]