:[0]
b [3]

> gml_Script_matrix_infinite_perspective (locals=5, argc=3)
:[1]
push.v arg.argument0
call.i degtorad(argc=1)
pop.v.v local._fov_rad
push.v arg.argument1
pop.v.v local._aspect
push.v arg.argument2
pop.v.v local._near
pushi.e 1
conv.i.d
pushloc.v local._fov_rad
push.d 0.5
mul.d.v
call.i tan(argc=1)
div.v.d
pop.v.v local.f
call.i matrix_build_identity(argc=0)
pop.v.v local.mat
pushloc.v local.f
pushloc.v local._aspect
div.v.v
pushi.e -7
pushi.e 0
pop.v.v [array]self.mat
pushloc.v local.f
pushi.e -7
pushi.e 5
pop.v.v [array]self.mat
pushi.e -1
conv.i.v
pushi.e -7
pushi.e 10
pop.v.v [array]self.mat
pushi.e -1
conv.i.v
pushi.e -7
pushi.e 11
pop.v.v [array]self.mat
pushi.e -2
pushloc.v local._near
mul.v.i
pushi.e -7
pushi.e 14
pop.v.v [array]self.mat
pushi.e 0
conv.i.v
pushi.e -7
pushi.e 15
pop.v.v [array]self.mat
pushloc.v local.mat
ret.v

:[2]
exit.i

:[3]
push.i [function]gml_Script_matrix_infinite_perspective
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.matrix_infinite_perspective
popz.v

:[end]