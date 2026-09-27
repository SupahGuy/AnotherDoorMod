function scribble_default_preprocessor_set(arg0)
{
    static _system = __scribble_system();
    
    _system.__defaultPreprocessorFunc = arg0;
}
