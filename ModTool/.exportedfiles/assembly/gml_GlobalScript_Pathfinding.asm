:[0]
b [19]

> gml_Script_set_path_to_objectives (locals=8, argc=2)
:[1]
push.v arg.argument1
call.i variable_clone(argc=1)
pop.v.v local._objectives
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.x
pop.v.v local._xStart
push.v arg.argument0
pushi.e -9
push.v [stacktop]self.y
pop.v.v local._yStart
call.i @@NewGMLArray@@(argc=0)
pushglb.v global.grid
pushi.e -9
pop.v.v [stacktop]self.thePath
pushbltn.v builtin.undefined
pop.v.v local._neareastPathIndex

:[2]
pushloc.v local._objectives
call.i array_length(argc=1)
pushi.e 0
cmp.i.v GT
bf [18]

:[3]
pushi.e 10000
pop.v.i local._neareastPathLength
pushbltn.v builtin.undefined
pop.v.v local._neareastPath
pushi.e 0
pop.v.i local._neareastPathIndex
pushi.e 0
pop.v.i local._i

:[4]
pushloc.v local._i
pushloc.v local._objectives
call.i array_length(argc=1)
cmp.v.v LT
bf [11]

:[5]
pushglb.v global.grid
pushi.e -9
push.v [stacktop]self.aStarGrid
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._objectives
pushi.e -9
push.v [stacktop]self.y
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._objectives
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._yStart
pushloc.v local._xStart
call.i gml_Script_aStar(argc=5)
pop.v.v local._currentPath
pushloc.v local._currentPath
call.i is_array(argc=1)
conv.v.b
bf [7]

:[6]
pushloc.v local._currentPath
call.i array_length(argc=1)
pushloc.v local._neareastPathLength
cmp.v.v LT
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushloc.v local._currentPath
pop.v.v local._neareastPath
pushloc.v local._i
pop.v.v local._neareastPathIndex
pushloc.v local._neareastPath
call.i array_length(argc=1)
pop.v.v local._neareastPathLength

:[10]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [4]

:[11]
pushloc.v local._neareastPath
pushbltn.v builtin.undefined
cmp.v.v NEQ
bf [16]

:[12]
pushi.e 1
conv.i.v
pushloc.v local._neareastPathIndex
pushloc.v local._objectives
call.i array_delete(argc=3)
popz.v
pushi.e -7
pushi.e 0
push.v [arraypushaf]self._neareastPath
pushi.e 0
pushaf.e
pop.v.v local._xStart
pushi.e -7
pushi.e 0
push.v [arraypushaf]self._neareastPath
pushi.e 1
pushaf.e
pop.v.v local._yStart
pushi.e 0
pop.v.i local._i

:[13]
pushloc.v local._i
pushloc.v local._neareastPath
call.i array_length(argc=1)
cmp.v.v LT
bf [15]

:[14]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._neareastPath
pushglb.v global.grid
pushi.e -9
push.v [stacktop]self.thePath
call.i array_push(argc=2)
popz.v
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [13]

:[15]
b [17]

:[16]
pushloc.v local._objectives
call.i array_length(argc=1)
pushi.e 0
conv.i.v
pushloc.v local._objectives
call.i array_delete(argc=3)
popz.v

:[17]
b [2]

:[18]
pushglb.v global.grid
pushi.e -9
push.v [stacktop]self.thePath
call.i array_reverse(argc=1)
pushglb.v global.grid
pushi.e -9
pop.v.v [stacktop]self.thePath
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.grid
pushi.e -9
push.v [stacktop]self.thePath
call.i array_delete(argc=3)
popz.v
exit.i

:[19]
push.i [function]gml_Script_set_path_to_objectives
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.set_path_to_objectives
popz.v
b [33]

> gml_Script_set_objectives_reached (locals=7, argc=3)
:[20]
push.v arg.argument1
call.i variable_clone(argc=1)
pop.v.v local._theGrid
push.v arg.argument0
pop.v.v local._startingPoint
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e -1
conv.i.v
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=4)
pop.v.v local._direction
pushi.e -1
pop.v.i local._reached
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._objectivesReach
push.v arg.argument2
pop.v.v local._objectives
push.v arg.argument2
call.i array_length(argc=1)
pushi.e 0
cmp.i.v NEQ
bf [31]

:[21]
pushloc.v local._theGrid
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
pushloc.v local._startingPoint
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._startingPoint
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_flood_fill(argc=5)
popz.v
pushi.e 0
pop.v.i local._i

:[22]
pushloc.v local._i
pushloc.v local._objectives
call.i array_length(argc=1)
cmp.v.v LT
bf [26]

:[23]
pushi.e -7
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._objectives
pushi.e -9
push.v [stacktop]self.x
conv.v.i
push.v [arraypushaf]self._theGrid
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._objectives
pushi.e -9
push.v [stacktop]self.y
conv.v.i
pushaf.e
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._objectives
pushloc.v local._objectivesReach
call.i array_push(argc=2)
popz.v
pushi.e 1
pop.v.b local._reached

:[25]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [22]

:[26]
pushloc.v local._reached
conv.v.b
bf [29]

:[27]
pushloc.v local._objectivesReach
ret.v

:[28]
b [30]

:[29]
pushloc.v local._reached
ret.v

:[30]
b [32]

:[31]
pushi.e -1
conv.i.v
ret.v

:[32]
exit.i

:[33]
push.i [function]gml_Script_set_objectives_reached
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.set_objectives_reached
popz.v

:[end]