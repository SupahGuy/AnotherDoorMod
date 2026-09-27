:[0]
b [3]

> gml_Script_getCoordinatesRotatedPoint (locals=6, argc=5)
:[1]
push.v arg.argument2
push.v arg.argument0
sub.v.v
pop.v.v local._xO
push.v arg.argument3
push.v arg.argument1
sub.v.v
pop.v.v local._yO
push.v arg.argument4
call.i dcos(argc=1)
pop.v.v local._cosTheta
push.v arg.argument4
call.i dsin(argc=1)
pop.v.v local._sinTheta
pushloc.v local._xO
pushloc.v local._cosTheta
mul.v.v
pushloc.v local._yO
pushloc.v local._sinTheta
mul.v.v
sub.v.v
pop.v.v local._x
pushloc.v local._xO
pushloc.v local._sinTheta
mul.v.v
pushloc.v local._yO
pushloc.v local._cosTheta
mul.v.v
add.v.v
pop.v.v local._y
push.v local._x
push.v arg.argument2
add.v.v
pop.v.v local._x
push.v local._y
push.v arg.argument3
add.v.v
pop.v.v local._y
pushloc.v local._y
pushloc.v local._x
call.i @@NewGMLArray@@(argc=2)
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_getCoordinatesRotatedPoint
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.getCoordinatesRotatedPoint
popz.v

:[end]