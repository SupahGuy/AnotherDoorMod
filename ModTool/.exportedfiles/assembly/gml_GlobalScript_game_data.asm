:[0]
b [2]

> gml_Script____struct___78 (locals=0, argc=0)
:[1]
call.i @@SetStatic@@(argc=0)
call.i @@NewGMLObject@@(argc=0)
pop.v.v self.OneP
call.i @@NewGMLObject@@(argc=0)
pop.v.v self.TwoP
call.i @@NewGMLObject@@(argc=0)
pop.v.v self.ThreeP
call.i @@NewGMLObject@@(argc=0)
pop.v.v self.FourP
exit.i

:[2]
push.i [function]gml_Script____struct___78
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___78
call.i @@NewGMLObject@@(argc=1)
pop.v.v global.balancing

:[end]