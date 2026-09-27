:[0]
b [10]

> gml_Script_collision_line_point (locals=19, argc=0)
:[1]
pushbltn.v builtin.argument0
pop.v.v local.x1
pushbltn.v builtin.argument1
pop.v.v local.y1
pushbltn.v builtin.argument2
pop.v.v local.x2
pushbltn.v builtin.argument3
pop.v.v local.y2
pushbltn.v builtin.argument4
pop.v.v local.qi
pushbltn.v builtin.argument5
pop.v.v local.qp
pushbltn.v builtin.argument6
pop.v.v local.qn
pushloc.v local.qn
pushloc.v local.qp
pushloc.v local.qi
pushloc.v local.y2
pushloc.v local.x2
pushloc.v local.y1
pushloc.v local.x1
call.i collision_line(argc=7)
pop.v.v local.rr
pushloc.v local.x2
pop.v.v local.rx
pushloc.v local.y2
pop.v.v local.ry
pushloc.v local.rr
pushi.e -4
cmp.i.v NEQ
bf [8]

:[2]
pushi.e 0
pop.v.i local.p0
pushi.e 1
pop.v.i local.p1
pushloc.v local.y2
pushloc.v local.x2
pushloc.v local.y1
pushloc.v local.x1
call.i point_distance(argc=4)
call.i log2(argc=1)
call.i ceil(argc=1)
pushi.e 1
add.i.v
conv.v.i
dup.i 0
push.i 0
cmp.i.i LTE
bt [7]

:[3]
pushloc.v local.p0
pushloc.v local.p1
pushloc.v local.p0
sub.v.v
push.d 0.5
mul.d.v
add.v.v
pop.v.v local.np
pushloc.v local.x1
pushloc.v local.x2
pushloc.v local.x1
sub.v.v
pushloc.v local.np
mul.v.v
add.v.v
pop.v.v local.nx
pushloc.v local.y1
pushloc.v local.y2
pushloc.v local.y1
sub.v.v
pushloc.v local.np
mul.v.v
add.v.v
pop.v.v local.ny
pushloc.v local.x1
pushloc.v local.x2
pushloc.v local.x1
sub.v.v
pushloc.v local.p0
mul.v.v
add.v.v
pop.v.v local.px
pushloc.v local.y1
pushloc.v local.y2
pushloc.v local.y1
sub.v.v
pushloc.v local.p0
mul.v.v
add.v.v
pop.v.v local.py
pushloc.v local.qn
pushloc.v local.qp
pushloc.v local.qi
pushloc.v local.ny
pushloc.v local.nx
pushloc.v local.py
pushloc.v local.px
call.i collision_line(argc=7)
pop.v.v local.nr
pushloc.v local.nr
pushi.e -4
cmp.i.v NEQ
bf [5]

:[4]
pushloc.v local.nr
pop.v.v local.rr
pushloc.v local.nx
pop.v.v local.rx
pushloc.v local.ny
pop.v.v local.ry
pushloc.v local.np
pop.v.v local.p1
b [6]

:[5]
pushloc.v local.np
pop.v.v local.p0

:[6]
pushi.e 1
sub.i.i
dup.i 0
bt [3]

:[7]
popz.i

:[8]
pushloc.v local.rr
pushi.e -7
pushi.e 0
pop.v.v [array]self.r
pushloc.v local.rx
pushi.e -7
pushi.e 1
pop.v.v [array]self.r
pushloc.v local.ry
pushi.e -7
pushi.e 2
pop.v.v [array]self.r
pushloc.v local.r
ret.v

:[9]
exit.i

:[10]
push.i [function]gml_Script_collision_line_point
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.collision_line_point
popz.v

:[end]