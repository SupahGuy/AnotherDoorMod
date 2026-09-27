:[0]
b [34]

> gml_Script_aStar (locals=8, argc=6)
:[1]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [3]

:[2]
pushi.e 0
pop.v.b builtin.argument5

:[3]
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.v arg.argument1
push.v arg.argument0
push.i [function]gml_Script_Node
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pop.v.v local._startNode
push.v arg.argument5
pushbltn.v builtin.undefined
push.v arg.argument3
push.v arg.argument2
push.v arg.argument1
push.v arg.argument0
call.i gml_Script_findHeuristic(argc=6)
pop.v.v local._heuristic
pushloc.v local._heuristic
pushloc.v local._startNode
pushi.e -9
pop.v.v [stacktop]self.h
pushi.e 0
pushloc.v local._startNode
pushi.e -9
pop.v.i [stacktop]self.g
pushloc.v local._heuristic
pushloc.v local._startNode
pushi.e -9
pop.v.v [stacktop]self.f
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin._openList
pushi.e 0
pop.v.i builtin._openListLength
pushloc.v local._startNode
push.v builtin._openList
call.i array_push(argc=2)
popz.v
push.v builtin._openListLength
push.e 1
add.i.v
pop.v.v builtin._openListLength
call.i @@NewGMLArray@@(argc=0)
pop.v.v builtin._closeList
pushloc.v local._startNode
pop.v.v builtin._currentNode
push.v arg.argument5
pushi.e 1
cmp.b.v EQ
bf [5]

:[4]
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e -1
conv.i.v
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 0
conv.i.v
pushi.e 1
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
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=8)
pop.v.v local._direction
b [6]

:[5]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 0
conv.i.v
pushi.e -1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e -1
conv.i.v
pushi.e 0
conv.i.v
call.i @@NewGMLArray@@(argc=2)
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
call.i @@NewGMLArray@@(argc=2)
call.i @@NewGMLArray@@(argc=4)
pop.v.v local._direction

:[6]
pushloc.v local._direction
call.i array_length(argc=1)
pop.v.v local._directionLength

:[7]
push.v builtin._openListLength
conv.v.b
bf [32]

:[8]
pushi.e 0
pop.v.i local._currentNodeId
pushi.e -6
pushloc.v local._currentNodeId
conv.v.i
push.v [array]self._openList
pop.v.v builtin._currentNode
pushi.e 0
pop.v.i local.k

:[9]
pushloc.v local.k
push.v builtin._openListLength
cmp.v.v LT
bf [24]

:[10]
pushi.e -1
pushloc.v local.k
conv.v.i
push.v [array]self._openList
pushi.e -9
push.v [stacktop]self.f
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.f
cmp.v.v LT
bt [20]

:[11]
pushi.e -1
pushloc.v local.k
conv.v.i
push.v [array]self._openList
pushi.e -9
push.v [stacktop]self.f
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.f
cmp.v.v EQ
bf [13]

:[12]
pushi.e -1
pushloc.v local.k
conv.v.i
push.v [array]self._openList
pushi.e -9
push.v [stacktop]self.h
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.h
cmp.v.v LT
b [14]

:[13]
push.e 0

:[14]
bt [20]

:[15]
pushi.e -1
pushloc.v local.k
conv.v.i
push.v [array]self._openList
pushi.e -9
push.v [stacktop]self.f
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.f
cmp.v.v EQ
bf [18]

:[16]
pushi.e -1
pushloc.v local.k
conv.v.i
push.v [array]self._openList
pushi.e -9
push.v [stacktop]self.h
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.h
cmp.v.v EQ
bf [18]

:[17]
pushi.e -1
pushloc.v local.k
conv.v.i
push.v [array]self._openList
pushi.e -9
push.v [stacktop]self.g
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.g
cmp.v.v LT
b [19]

:[18]
push.e 0

:[19]
b [21]

:[20]
push.e 1

:[21]
bf [23]

:[22]
pushloc.v local.k
pop.v.v local._currentNodeId
pushi.e -6
pushloc.v local._currentNodeId
conv.v.i
push.v [array]self._openList
pop.v.v builtin._currentNode

:[23]
push.v local.k
push.e 1
add.i.v
pop.v.v local.k
b [9]

:[24]
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.x
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.y
add.v.v
pushi.e 1
mod.i.v
pushi.e 0
cmp.i.v EQ
bf [26]

:[25]
pushloc.v local._direction
call.i array_reverse(argc=1)
pop.v.v local._direction

:[26]
pushi.e 1
conv.i.v
pushloc.v local._currentNodeId
push.v builtin._openList
call.i array_delete(argc=3)
popz.v
push.v builtin._openListLength
push.e 1
sub.i.v
pop.v.v builtin._openListLength
push.v builtin._currentNode
push.v builtin._closeList
call.i array_push(argc=2)
popz.v
pushi.e 0
pop.v.i local.l

:[27]
pushloc.v local.l
pushloc.v local._directionLength
cmp.v.v LT
bf [31]

:[28]
push.v arg.argument5
push.v arg.argument4
push.v arg.argument3
push.v arg.argument2
pushi.e -7
pushloc.v local.l
conv.v.i
push.v [arraypushaf]self._direction
pushi.e 1
pushaf.e
pushi.e -7
pushloc.v local.l
conv.v.i
push.v [arraypushaf]self._direction
pushi.e 0
pushaf.e
call.i gml_Script_checkNeighbor(argc=6)
pop.v.v local._isFinished
pushloc.v local._isFinished
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
push.v arg.argument3
push.v arg.argument2
call.i gml_Script_retrievePath(argc=2)
ret.v

:[30]
push.v local.l
push.e 1
add.i.v
pop.v.v local.l
b [27]

:[31]
b [7]

:[32]
pushi.e -1
conv.i.v
ret.v

:[33]
exit.i

:[34]
push.i [function]gml_Script_aStar
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.aStar
popz.v
b [48]

> gml_Script_retrievePath (locals=4, argc=2)
:[35]
pushi.e 0
pop.v.b local._finished
push.v arg.argument1
push.v arg.argument0
b [37]

> gml_Script____struct___60@retrievePath@aStar (locals=0, argc=0)
:[36]
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

:[37]
push.i [function]gml_Script____struct___60@retrievePath@aStar
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___60
call.i @@NewGMLObject@@(argc=3)
pop.v.v local._lastPath
call.i @@NewGMLArray@@(argc=0)
pop.v.v local._arrayToReturn
push.v arg.argument1
push.v arg.argument0
call.i @@NewGMLArray@@(argc=2)
pushloc.v local._arrayToReturn
call.i array_push(argc=2)
popz.v

:[38]
pushloc.v local._finished
pushi.e 0
cmp.b.v EQ
bf [46]

:[39]
pushloc.v local._lastPath
push.v builtin._closeList
call.i gml_Script_findIndexStruct(argc=2)
pop.v.v local._counter
pushi.e -1
pushloc.v local._counter
conv.v.i
push.v [array]self._closeList
pushi.e -9
push.v [stacktop]self.theParent
pushi.e 0
cmp.i.v EQ
bf [42]

:[40]
pushi.e 1
pop.v.b local._finished
pushloc.v local._arrayToReturn
ret.v

:[41]
b [43]

:[42]
pushi.e -1
pushloc.v local._counter
conv.v.i
push.v [array]self._closeList
pushi.e -9
push.v [stacktop]self.theParent
pushloc.v local._arrayToReturn
call.i array_push(argc=2)
popz.v

:[43]
pushi.e -1
pushloc.v local._counter
conv.v.i
push.v [array]self._closeList
pushi.e -9
pushi.e 1
push.v [array]self.theParent
pushi.e -1
pushloc.v local._counter
conv.v.i
push.v [array]self._closeList
pushi.e -9
pushi.e 0
push.v [array]self.theParent
b [45]

> gml_Script____struct___61@retrievePath@aStar (locals=0, argc=0)
:[44]
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

:[45]
push.i [function]gml_Script____struct___61@retrievePath@aStar
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___61
call.i @@NewGMLObject@@(argc=3)
pop.v.v local._lastPath
b [38]

:[46]
pushi.e -1
conv.i.v
ret.v

:[47]
exit.i

:[48]
push.i [function]gml_Script_retrievePath
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.retrievePath
popz.v
b [57]

> gml_Script_findIndexStruct (locals=5, argc=2)
:[49]
push.v arg.argument0
pop.v.v local._array
pushloc.v local._array
call.i array_length(argc=1)
pop.v.v local._arrayLength
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.x
pop.v.v local._x
push.v arg.argument1
pushi.e -9
push.v [stacktop]self.y
pop.v.v local._y
pushi.e 0
pop.v.i local._i

:[50]
pushloc.v local._i
pushloc.v local._arrayLength
cmp.v.v LT
bf [55]

:[51]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._array
pushi.e -9
push.v [stacktop]self.x
pushloc.v local._x
cmp.v.v EQ
bf [54]

:[52]
pushi.e -7
pushloc.v local._i
conv.v.i
push.v [array]self._array
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._y
cmp.v.v EQ
bf [54]

:[53]
pushloc.v local._i
ret.v

:[54]
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
b [50]

:[55]
pushi.e -1
conv.i.v
ret.v

:[56]
exit.i

:[57]
push.i [function]gml_Script_findIndexStruct
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.findIndexStruct
popz.v
b [108]

> gml_Script_checkNeighbor (locals=7, argc=6)
:[58]
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.x
push.v arg.argument0
add.v.v
pushi.e 0
cmp.i.v GTE
bf [60]

:[59]
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.x
push.v arg.argument0
add.v.v
pushglb.v global.gridWidth
cmp.v.v LT
b [61]

:[60]
push.e 0

:[61]
bf [66]

:[62]
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument1
add.v.v
pushi.e 0
cmp.i.v GTE
bf [64]

:[63]
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument1
add.v.v
pushglb.v global.gridHeight
cmp.v.v LT
b [65]

:[64]
push.e 0

:[65]
b [67]

:[66]
push.e 0

:[67]
bf [106]

:[68]
push.v arg.argument4
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument1
add.v.v
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.x
push.v arg.argument0
add.v.v
call.i gml_Script_getWeight(argc=3)
pop.v.v local._weight
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.y
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.x
call.i @@NewGMLArray@@(argc=2)
pushloc.v local._weight
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushbltn.v builtin.infinity
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument1
add.v.v
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.x
push.v arg.argument0
add.v.v
push.i [function]gml_Script_Node
conv.i.v
call.i @@NewGMLObject@@(argc=8)
pop.v.v local._neighbor
push.v arg.argument2
pushloc.v local._neighbor
pushi.e -9
push.v [stacktop]self.x
cmp.v.v EQ
bf [70]

:[69]
push.v arg.argument3
pushloc.v local._neighbor
pushi.e -9
push.v [stacktop]self.y
cmp.v.v EQ
b [71]

:[70]
push.e 0

:[71]
bf [73]

:[72]
pushloc.v local._neighbor
push.v builtin._closeList
call.i array_push(argc=2)
popz.v
pushi.e 1
conv.i.v
ret.v

:[73]
pushloc.v local._neighbor
pushi.e -9
push.v [stacktop]self.weight
pushi.e 0
cmp.i.v NEQ
bf [106]

:[74]
pushi.e 1
pop.v.b local._diagReachable
push.v arg.argument0
pushi.e 1
cmp.i.v EQ
bt [76]

:[75]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
b [77]

:[76]
push.e 1

:[77]
bf [82]

:[78]
push.v arg.argument1
pushi.e 1
cmp.i.v EQ
bt [80]

:[79]
push.v arg.argument1
pushi.e -1
cmp.i.v EQ
b [81]

:[80]
push.e 1

:[81]
b [83]

:[82]
push.e 0

:[83]
bf [89]

:[84]
push.v arg.argument4
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.y
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.x
push.v arg.argument0
add.v.v
call.i gml_Script_getWeight(argc=3)
pop.v.v local._diagAWeight
push.v arg.argument4
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.y
push.v arg.argument1
add.v.v
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_getWeight(argc=3)
pop.v.v local._diagBWeight
pushloc.v local._diagAWeight
pushi.e -1
cmp.i.v EQ
bf [86]

:[85]
pushloc.v local._diagBWeight
pushi.e -1
cmp.i.v EQ
b [87]

:[86]
push.e 0

:[87]
bf [89]

:[88]
pushi.e 0
pop.v.b local._diagReachable

:[89]
pushloc.v local._diagReachable
pushi.e 1
cmp.b.v EQ
bf [106]

:[90]
pushloc.v local._neighbor
push.v builtin._closeList
call.i gml_Script_findIndexStruct(argc=2)
pop.v.v local._isClose
pushloc.v local._isClose
pushi.e -1
cmp.i.v EQ
bf [106]

:[91]
push.v arg.argument5
pushbltn.v builtin.undefined
push.v arg.argument3
push.v arg.argument2
pushloc.v local._neighbor
pushi.e -9
push.v [stacktop]self.y
pushloc.v local._neighbor
pushi.e -9
push.v [stacktop]self.x
call.i gml_Script_findHeuristic(argc=6)
pushloc.v local._neighbor
pushi.e -9
pop.v.v [stacktop]self.h
push.v arg.argument0
pushi.e 1
cmp.i.v EQ
bt [93]

:[92]
push.v arg.argument0
pushi.e -1
cmp.i.v EQ
b [94]

:[93]
push.e 1

:[94]
bf [99]

:[95]
push.v arg.argument1
pushi.e 1
cmp.i.v EQ
bt [97]

:[96]
push.v arg.argument1
pushi.e -1
cmp.i.v EQ
b [98]

:[97]
push.e 1

:[98]
b [100]

:[99]
push.e 0

:[100]
bf [102]

:[101]
pushloc.v local._neighbor
pushi.e -9
dup.i 4
push.v [stacktop]self.weight
push.d 1.414
mul.d.v
pop.i.v [stacktop]self.weight

:[102]
push.v builtin._currentNode
pushi.e -9
push.v [stacktop]self.g
pushloc.v local._neighbor
pushi.e -9
push.v [stacktop]self.weight
add.v.v
pushloc.v local._neighbor
pushi.e -9
pop.v.v [stacktop]self.g
pushloc.v local._neighbor
pushi.e -9
push.v [stacktop]self.h
pushloc.v local._neighbor
pushi.e -9
push.v [stacktop]self.g
add.v.v
pushloc.v local._neighbor
pushi.e -9
pop.v.v [stacktop]self.f
pushloc.v local._neighbor
push.v builtin._openList
call.i gml_Script_findIndexStruct(argc=2)
pop.v.v local.isOpen
pushloc.v local.isOpen
pushi.e -1
cmp.i.v EQ
bf [104]

:[103]
pushloc.v local._neighbor
push.v builtin._openList
call.i array_push(argc=2)
popz.v
push.v builtin._openListLength
push.e 1
add.i.v
pop.v.v builtin._openListLength
b [106]

:[104]
pushloc.v local._neighbor
pushi.e -9
push.v [stacktop]self.g
pushi.e -1
pushloc.v local.isOpen
conv.v.i
push.v [array]self._openList
pushi.e -9
push.v [stacktop]self.g
cmp.v.v LT
bf [106]

:[105]
pushloc.v local._neighbor
pushi.e -9
push.v [stacktop]self.g
pushi.e -1
pushloc.v local.isOpen
conv.v.i
push.v [array]self._openList
pushi.e -9
pop.v.v [stacktop]self.g
pushloc.v local._neighbor
pushi.e -9
push.v [stacktop]self.theParent
pushi.e -1
pushloc.v local.isOpen
conv.v.i
push.v [array]self._openList
pushi.e -9
pop.v.v [stacktop]self.theParent

:[106]
pushi.e 0
conv.i.v
ret.v

:[107]
exit.i

:[108]
push.i [function]gml_Script_checkNeighbor
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.checkNeighbor
popz.v
b [118]

> gml_Script_findHeuristic (locals=7, argc=6)
:[109]
pushbltn.v builtin.argument4
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [111]

:[110]
pushi.e 1
pop.v.i builtin.argument4

:[111]
pushbltn.v builtin.argument5
pushbltn.v builtin.undefined
cmp.v.v EQ
bf [113]

:[112]
pushi.e 0
pop.v.b builtin.argument5

:[113]
push.v arg.argument5
pushi.e 1
cmp.b.v EQ
bf [116]

:[114]
push.v arg.argument1
push.v arg.argument3
sub.v.v
call.i abs(argc=1)
push.v arg.argument0
push.v arg.argument2
sub.v.v
call.i abs(argc=1)
call.i max(argc=2)
pop.v.v local._dMax
push.v arg.argument1
push.v arg.argument3
sub.v.v
call.i abs(argc=1)
push.v arg.argument0
push.v arg.argument2
sub.v.v
call.i abs(argc=1)
call.i min(argc=2)
pop.v.v local._dMin
push.v arg.argument4
pop.v.v local._weight
push.d 1.414
pushloc.v local._weight
mul.v.d
pop.v.v local._diagWeigt
pushloc.v local._diagWeigt
pushloc.v local._dMin
mul.v.v
pushloc.v local._weight
pushloc.v local._dMax
pushloc.v local._dMin
sub.v.v
mul.v.v
add.v.v
pop.v.v local._heuristic
pushloc.v local._heuristic
ret.v

:[115]
b [117]

:[116]
push.v arg.argument0
push.v arg.argument2
sub.v.v
call.i abs(argc=1)
pop.v.v local._dx
push.v arg.argument1
push.v arg.argument3
sub.v.v
call.i abs(argc=1)
pop.v.v local._dy
pushi.e 1
pushloc.v local._dx
pushloc.v local._dy
add.v.v
mul.v.i
ret.v

:[117]
exit.i

:[118]
push.i [function]gml_Script_findHeuristic
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.findHeuristic
popz.v
b [120]

> gml_Script_Node (locals=0, argc=7)
:[119]
call.i @@SetStatic@@(argc=0)
push.v arg.argument0
pop.v.v builtin.x
push.v arg.argument1
pop.v.v builtin.y
push.v arg.argument2
pop.v.v builtin.f
push.v arg.argument3
pop.v.v builtin.g
push.v arg.argument4
pop.v.v builtin.h
push.v arg.argument5
pop.v.v builtin.weight
push.v arg.argument6
pop.v.v builtin.theParent
exit.i

:[120]
push.i [function]gml_Script_Node
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v self.Node
popz.v
b [138]

> gml_Script_getWeight (locals=2, argc=3)
:[121]
pushi.e 1
pop.v.i local._weight
push.v arg.argument0
pushi.e 0
cmp.i.v GTE
bf [123]

:[122]
push.v arg.argument0
pushglb.v global.gridWidth
cmp.v.v LT
b [124]

:[123]
push.e 0

:[124]
bf [129]

:[125]
push.v arg.argument1
pushi.e 0
cmp.i.v GTE
bf [127]

:[126]
push.v arg.argument1
pushglb.v global.gridHeight
cmp.v.v LT
b [128]

:[127]
push.e 0

:[128]
b [130]

:[129]
push.e 0

:[130]
bf [136]

:[131]
pushi.e -15
push.v arg.argument0
conv.v.i
push.v [arraypushaf]self.argument2
push.v arg.argument1
conv.v.i
pushaf.e
pop.v.v local._box
pushloc.v local._box
call.i is_struct(argc=1)
conv.v.b
bf [134]

:[132]
push.s "weight"@4501
conv.s.v
pushloc.v local._box
call.i variable_struct_exists(argc=2)
conv.v.b
bf [134]

:[133]
pushloc.v local._box
pushi.e -9
push.v [stacktop]self.weight
pop.v.v local._weight

:[134]
pushloc.v local._weight
ret.v

:[135]
b [137]

:[136]
pushi.e -1
conv.i.v
ret.v

:[137]
exit.i

:[138]
push.i [function]gml_Script_getWeight
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.getWeight
popz.v

:[end]