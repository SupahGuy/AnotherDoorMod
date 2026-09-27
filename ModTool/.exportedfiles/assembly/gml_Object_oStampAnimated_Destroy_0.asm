:[0]
pushref.i 40
pushi.e -9
pushenv [5]

:[1]
push.v other.sprite_index
push.v other.yInit
push.v other.x
b [3]

> gml_Script____struct___593@gml_Object_oStampAnimated_Destroy_0 (locals=0, argc=0)
:[2]
call.i @@SetStatic@@(argc=0)
pushi.e -15
pushi.e 0
push.v [array]self.argument
pop.v.v self.x
pushi.e -15
pushi.e 1
push.v [array]self.argument
pop.v.v self.y
pushi.e -15
pushi.e 2
push.v [array]self.argument
pop.v.v self.sprite
exit.i

:[3]
push.i [function]gml_Script____struct___593@gml_Object_oStampAnimated_Destroy_0
conv.i.v
call.i @@NullObject@@(argc=0)
call.i method(argc=2)
dup.v 0
pop.v.v global.___struct___593
call.i @@NewGMLObject@@(argc=4)
push.v builtin.stampToDraw
call.i array_push(argc=2)
popz.v
push.v builtin.stampToDraw
call.i array_length(argc=1)
pushi.e 400
cmp.i.v GT
bf [5]

:[4]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.v builtin.stampToDraw
call.i array_delete(argc=3)
popz.v

:[5]
popenv [1]
pushref.i 57
pushi.e -9
pushenv [8]

:[6]
push.v builtin.number
push.v other.number
cmp.v.v EQ
bf [8]

:[7]
push.v builtin.depth
push.e 1
add.i.v
pop.v.v builtin.depth

:[8]
popenv [6]

:[end]