:[0]
b [22]

> gml_Script_get_coordinates_around_point (locals=4, argc=6)
:[1]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.i builtin.argument4

:[3]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [5]

:[4]
push.s "uniform-circle"@6039
pop.v.s builtin.argument5

:[5]
push.v arg.argument5
dup.v 0
push.s "section-equal-circle"@6040
cmp.s.v EQ
bt [12]

:[6]
dup.v 0
push.s "uniform-circle"@6039
cmp.s.v EQ
bt [13]

:[7]
dup.v 0
push.s "uniform-square"@6041
cmp.s.v EQ
bt [14]

:[8]
dup.v 0
push.s "edge-1-circle"@6042
cmp.s.v EQ
bt [15]

:[9]
dup.v 0
push.s "edge-2-circle"@6043
cmp.s.v EQ
bt [16]

:[10]
dup.v 0
push.s "edge-3-circle"@6044
cmp.s.v EQ
bt [17]

:[11]
b [18]

:[12]
push.v arg.argument4
call.i degtorad(argc=1)
pop.v.v local._angle
push.v arg.argument0
pushloc.v local._angle
call.i cos(argc=1)
push.v arg.argument2
mul.v.v
add.v.v
pop.v.v local._x
push.v arg.argument1
pushloc.v local._angle
call.i sin(argc=1)
push.v arg.argument3
mul.v.v
add.v.v
pop.v.v local._y
b [18]

:[13]
push.d 6.283185307179586
conv.d.v
call.i random(argc=1)
pop.v.v local._angle
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i sqrt(argc=1)
pop.v.v local._randomize
push.v arg.argument0
pushloc.v local._angle
call.i cos(argc=1)
pushloc.v local._randomize
push.v arg.argument2
mul.v.v
mul.v.v
add.v.v
pop.v.v local._x
push.v arg.argument1
pushloc.v local._angle
call.i sin(argc=1)
pushloc.v local._randomize
push.v arg.argument3
mul.v.v
mul.v.v
add.v.v
pop.v.v local._y
b [18]

:[14]
push.v arg.argument0
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i random_range(argc=2)
push.v arg.argument2
mul.v.v
add.v.v
pop.v.v local._x
push.v arg.argument1
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i random_range(argc=2)
push.v arg.argument3
mul.v.v
add.v.v
pop.v.v local._y
b [18]

:[15]
push.d 6.283185307179586
conv.d.v
call.i random(argc=1)
pop.v.v local._angle
pushi.e 1
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i random(argc=1)
sub.v.i
pop.v.v local._randomize
push.v arg.argument0
pushloc.v local._angle
call.i cos(argc=1)
pushloc.v local._randomize
push.v arg.argument2
mul.v.v
mul.v.v
add.v.v
pop.v.v local._x
push.v arg.argument1
pushloc.v local._angle
call.i sin(argc=1)
pushloc.v local._randomize
push.v arg.argument3
mul.v.v
mul.v.v
add.v.v
pop.v.v local._y
b [18]

:[16]
push.d 6.283185307179586
conv.d.v
call.i random(argc=1)
pop.v.v local._angle
pushi.e 1
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i random(argc=1)
call.i random(argc=1)
sub.v.i
pop.v.v local._randomize
push.v arg.argument0
pushloc.v local._angle
call.i cos(argc=1)
pushloc.v local._randomize
push.v arg.argument2
mul.v.v
mul.v.v
add.v.v
pop.v.v local._x
push.v arg.argument1
pushloc.v local._angle
call.i sin(argc=1)
pushloc.v local._randomize
push.v arg.argument3
mul.v.v
mul.v.v
add.v.v
pop.v.v local._y
b [18]

:[17]
push.d 6.283185307179586
conv.d.v
call.i random(argc=1)
pop.v.v local._angle
pushi.e 1
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i random(argc=1)
call.i random(argc=1)
call.i random(argc=1)
sub.v.i
pop.v.v local._randomize
push.v arg.argument0
pushloc.v local._angle
call.i cos(argc=1)
pushloc.v local._randomize
push.v arg.argument2
mul.v.v
mul.v.v
add.v.v
pop.v.v local._x
push.v arg.argument1
pushloc.v local._angle
call.i sin(argc=1)
pushloc.v local._randomize
push.v arg.argument3
mul.v.v
mul.v.v
add.v.v
pop.v.v local._y
b [18]

:[18]
popz.v
pushloc.v local._y
pushloc.v local._x
b [20]

> gml_Script____struct___87@get_coordinates_around_point@getCoordinatesAroundPoint (locals=0, argc=0)
:[19]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
exit.i

:[20]
push.i [function]gml_Script____struct___87@get_coordinates_around_point@getCoordinatesAroundPoint
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___87
call.i @@NewGMLObject@@(argc=3)
ret.v

:[21]
exit.i

:[22]
push.i [function]gml_Script_get_coordinates_around_point
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.get_coordinates_around_point
popz.v

:[end]