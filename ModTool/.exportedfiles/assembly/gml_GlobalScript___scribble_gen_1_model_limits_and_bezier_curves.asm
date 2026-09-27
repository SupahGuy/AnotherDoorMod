:[0]
b [35]

> gml_Script___scribble_gen_1_model_limits_and_bezier_curves (locals=31, argc=0)
:[1]
isstaticok.e
bt [3]

:[2]
setstatic.e
call.i gml_Script___scribble_system(argc=0)
pushi.e -9
push.v [stacktop]self.__generator_state
pop.v.v static._generator_state

:[3]
push.v static._generator_state
pushi.e -9
push.v [stacktop]self.__element
pop.v.v local._element
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__wrap_max_width
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__padding_l
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__padding_r
add.v.v
sub.v.v
pop.v.v local._model_max_width
pushloc.v local._model_max_width
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
pushbltn.v builtin.infinity
pop.v.v local._model_max_width

:[5]
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__wrap_max_height
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__padding_t
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__padding_b
add.v.v
sub.v.v
pop.v.v local._model_max_height
pushloc.v local._model_max_height
pushi.e 0
cmp.i.v LT
bf [7]

:[6]
pushbltn.v builtin.infinity
pop.v.v local._model_max_height

:[7]
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__bezier_array
pop.v.v local._element_bezier_array
pushi.e -7
pushi.e 0
push.v [array]self._element_bezier_array
pushi.e -7
pushi.e 4
push.v [array]self._element_bezier_array
cmp.v.v NEQ
bt [9]

:[8]
pushi.e -7
pushi.e 1
push.v [array]self._element_bezier_array
pushi.e -7
pushi.e 5
push.v [array]self._element_bezier_array
cmp.v.v NEQ
b [10]

:[9]
push.e 1

:[10]
pop.v.b local._bezier_do
pushloc.v local._bezier_do
conv.v.b
bf [19]

:[11]
pushi.e 6
conv.i.v
call.i array_create(argc=1)
pop.v.v local._bezier_array
pushi.e 6
conv.i.v
pushi.e 0
conv.i.v
pushloc.v local._element_bezier_array
pushi.e 0
conv.i.v
pushloc.v local._bezier_array
call.i array_copy(argc=5)
popz.v
pushi.e -7
pushi.e 0
push.v [array]self._bezier_array
pop.v.v local._bx2
pushi.e -7
pushi.e 1
push.v [array]self._bezier_array
pop.v.v local._by2
pushi.e -7
pushi.e 2
push.v [array]self._bezier_array
pop.v.v local._bx3
pushi.e -7
pushi.e 3
push.v [array]self._bezier_array
pop.v.v local._by3
pushi.e -7
pushi.e 4
push.v [array]self._bezier_array
pop.v.v local._bx4
pushi.e -7
pushi.e 5
push.v [array]self._bezier_array
pop.v.v local._by4
pushi.e 0
conv.i.v
pushi.e 20
conv.i.v
call.i array_create(argc=2)
pop.v.v local._bezier_lengths
pushbltn.v builtin.undefined
pop.v.v local._x1
pushbltn.v builtin.undefined
pop.v.v local._y1
pushi.e 0
pop.v.i local._x2
pushi.e 0
pop.v.i local._y2
pushi.e 0
pop.v.i local._dist
push.d 0.05263157894736842
pop.v.d local._bezier_param_increment
pushloc.v local._bezier_param_increment
pop.v.v local._t
pushi.e 1
pop.v.i local._i
pushi.e 19
dup.i 0
push.i 0
cmp.i.i LTE
bt [13]

:[12]
pushi.e 1
pushloc.v local._t
sub.v.i
pop.v.v local._inv_t
pushloc.v local._x2
pop.v.v local._x1
pushloc.v local._y2
pop.v.v local._y1
pushi.e 3
pushloc.v local._inv_t
mul.v.i
pushloc.v local._inv_t
mul.v.v
pushloc.v local._t
mul.v.v
pushloc.v local._bx2
mul.v.v
pushi.e 3
pushloc.v local._inv_t
mul.v.i
pushloc.v local._t
mul.v.v
pushloc.v local._t
mul.v.v
pushloc.v local._bx3
mul.v.v
add.v.v
pushloc.v local._t
pushloc.v local._t
mul.v.v
pushloc.v local._t
mul.v.v
pushloc.v local._bx4
mul.v.v
add.v.v
pop.v.v local._x2
pushi.e 3
pushloc.v local._inv_t
mul.v.i
pushloc.v local._inv_t
mul.v.v
pushloc.v local._t
mul.v.v
pushloc.v local._by2
mul.v.v
pushi.e 3
pushloc.v local._inv_t
mul.v.i
pushloc.v local._t
mul.v.v
pushloc.v local._t
mul.v.v
pushloc.v local._by3
mul.v.v
add.v.v
pushloc.v local._t
pushloc.v local._t
mul.v.v
pushloc.v local._t
mul.v.v
pushloc.v local._by4
mul.v.v
add.v.v
pop.v.v local._y2
pushloc.v local._x2
pushloc.v local._x1
sub.v.v
pop.v.v local._dx
pushloc.v local._y2
pushloc.v local._y1
sub.v.v
pop.v.v local._dy
push.v local._dist
pushloc.v local._dx
pushloc.v local._dx
mul.v.v
pushloc.v local._dy
pushloc.v local._dy
mul.v.v
add.v.v
call.i sqrt(argc=1)
add.v.v
pop.v.v local._dist
pushloc.v local._dist
pushi.e -7
pushloc.v local._i
conv.v.i
pop.v.v [array]self._bezier_lengths
push.v local._t
pushloc.v local._bezier_param_increment
add.v.v
pop.v.v local._t
push.v local._i
push.e 1
add.i.v
pop.v.v local._i
pushi.e 1
sub.i.i
dup.i 0
bt [12]

:[13]
popz.i
pushloc.v local._model_max_width
pushi.e 0
cmp.i.v GTE
bf [15]

:[14]
pushloc.v local._model_max_width
call.i is_infinity(argc=1)
conv.v.b
not.b
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.s "Warning! Maximum width ("@3290
pushloc.v local._model_max_width
call.i string(argc=1)
add.v.s
push.s ") has been replaced with Bezier curve length ("@3291
add.s.v
pushloc.v local._dist
call.i string(argc=1)
add.v.v
push.s "). Use -1 as the maximum width to turn off this warning"@3292
add.s.v
call.i gml_Script___scribble_trace(argc=1)
popz.v

:[18]
pushloc.v local._dist
pop.v.v local._model_max_width
pushloc.v local._bezier_lengths
push.v static._generator_state
pushi.e -9
pop.v.v [stacktop]self.__bezier_lengths_array

:[19]
push.v static._generator_state
pushi.e -9
push.v [stacktop]self.__element
pop.v.v local._element
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__line_height_min
pop.v.v local._line_height_min
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__line_height_max
pop.v.v local._line_height_max
pushloc.v local._line_height_min
pushi.e 0
cmp.i.v LT
bf [21]

:[20]
pushi.e 1
pop.v.i local._line_height_min

:[21]
pushloc.v local._line_height_max
pushi.e 0
cmp.i.v LT
bf [23]

:[22]
pushbltn.v builtin.infinity
pop.v.v local._line_height_max

:[23]
pushloc.v local._element
pushi.e -9
push.v [stacktop]self.__line_spacing
pop.v.v local._line_spacing_raw
pushloc.v local._line_spacing_raw
call.i is_string(argc=1)
conv.v.b
bf [31]

:[24]
pushloc.v local._line_spacing_raw
call.i string_length(argc=1)
pop.v.v local._length
pushloc.v local._length
pushloc.v local._line_spacing_raw
call.i string_char_at(argc=2)
push.s "%"@3296
cmp.s.v EQ
bf [29]

:[25]
push.i 2112
conv.i.v
push.i 2012
conv.i.v
call.i @@try_hook@@(argc=2)
popz.v
pushi.e 0
pop.v.i local._line_spacing_add
pushloc.v local._length
pushi.e 1
sub.i.v
pushi.e 1
conv.i.v
pushloc.v local._line_spacing_raw
call.i string_copy(argc=3)
call.i real(argc=1)
pushi.e 100
conv.i.d
div.d.v
pop.v.v local._line_spacing_multiply
b [27]

:[26]
pop.v.v local._error
call.i @@try_unhook@@(argc=0)
popz.v
pushloc.v local._error
call.i gml_Script___scribble_trace(argc=1)
popz.v
push.s "\"\nLine spacing must be number or percentage strings e.g. \"200%\""@3299
conv.s.v
pushloc.v local._line_spacing_raw
push.s "Could not parse line spacing \""@3300
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v
call.i @@finish_catch@@(argc=0)
popz.v
b [28]

:[27]
call.i @@try_unhook@@(argc=0)
popz.v

:[28]
b [30]

:[29]
push.s "\"\nLine spacing must be number or percentage strings e.g. \"200%\""@3299
conv.s.v
pushloc.v local._line_spacing_raw
push.s "Could not parse line spacing \""@3300
conv.s.v
call.i gml_Script___scribble_error(argc=3)
popz.v

:[30]
b [32]

:[31]
pushloc.v local._line_spacing_raw
pop.v.v local._line_spacing_add
pushi.e 0
pop.v.i local._line_spacing_multiply

:[32]
push.v static._generator_state
pushi.e -9
pushenv [34]

:[33]
pushloc.v local._model_max_width
pop.v.v builtin.__model_max_width
pushloc.v local._model_max_height
pop.v.v builtin.__model_max_height
pushloc.v local._line_height_min
pop.v.v builtin.__line_height_min
pushloc.v local._line_height_max
pop.v.v builtin.__line_height_max
pushloc.v local._line_spacing_add
pop.v.v builtin.__line_spacing_add
pushloc.v local._line_spacing_multiply
pop.v.v builtin.__line_spacing_multiply

:[34]
popenv [33]
exit.i

:[35]
push.i [function]gml_Script___scribble_gen_1_model_limits_and_bezier_curves
conv.i.v
pushi.e -1
conv.i.v
call.i method(argc=2)
dup.v 0
pop.v.v self.__scribble_gen_1_model_limits_and_bezier_curves
popz.v

:[end]