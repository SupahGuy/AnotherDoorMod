:[0]
pushref.i 11
pushi.e -9
pushenv [5]

:[1]
push.v builtin.y
push.v builtin.sprite_height
add.v.v
push.v builtin.x
push.v builtin.sprite_width
add.v.v
push.v builtin.y
push.v builtin.x
push.v other.y
push.v other.sprite_index
call.i sprite_get_yoffset(argc=1)
sub.v.v
push.v other.sprite_height
add.v.v
push.v other.x
push.v other.sprite_index
call.i sprite_get_xoffset(argc=1)
sub.v.v
push.v other.sprite_width
add.v.v
push.v other.y
push.v other.sprite_index
call.i sprite_get_yoffset(argc=1)
sub.v.v
push.v other.x
push.v other.sprite_index
call.i sprite_get_xoffset(argc=1)
sub.v.v
call.i rectangle_in_rectangle(argc=8)
conv.v.b
bf [4]

:[2]
pushi.e 1
pop.v.b other.cursorColliding
b [6]

:[3]
b [5]

:[4]
pushi.e 0
pop.v.b other.cursorColliding

:[5]
popenv [1]
b [end]

:[6]
popenv <drop>

:[end]