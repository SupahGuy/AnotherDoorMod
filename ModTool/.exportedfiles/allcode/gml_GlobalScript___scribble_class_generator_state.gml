function __scribble_class_generator_state() constructor
{
    static __Reset = function()
    {
        __element = undefined;
        __glyph_count = 0;
        __control_count = 0;
        __word_count = 0;
        __line_count = 0;
        __line_height_min = 0;
        __line_height_max = 0;
        __model_max_width = 0;
        __model_max_height = 0;
        __overall_bidi = undefined;
        __uses_halign_left = false;
        __uses_halign_center = false;
        __uses_halign_right = false;
        __bezier_lengths_array = undefined;
        __model_max_width = 0;
        __model_max_height = 0;
        __line_height_min = 0;
        __line_height_max = 0;
        __line_spacing_add = 0;
        __line_spacing_multiply = 0;
        __overall_bidi = UnknownEnum.Value_4;
        __glyph_count = 0;
        __control_count = 0;
    };
    
    __glyph_grid = ds_grid_create(1000, UnknownEnum.Value_20);
    __control_grid = ds_grid_create(1000, UnknownEnum.Value_2);
    __word_grid = ds_grid_create(1000, UnknownEnum.Value_6);
    __line_grid = ds_grid_create(1000, UnknownEnum.Value_10);
    __stretch_grid = ds_grid_create(1000, UnknownEnum.Value_3);
    __temp_grid = ds_grid_create(1000, UnknownEnum.Value_6);
    __temp2_grid = ds_grid_create(1000, UnknownEnum.Value_20);
    __vbuff_pos_grid = ds_grid_create(1000, UnknownEnum.Value_4);
    __Reset();
}

enum UnknownEnum
{
    Value_2 = 2,
    Value_3,
    Value_4,
    Value_6 = 6,
    Value_10 = 10,
    Value_20 = 20
}
