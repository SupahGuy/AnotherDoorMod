function InputPlugInWarning()
{
    var _argumentArray = ["Plug-In Warning: "];
    
    repeat (argument_count)
        array_push(_argumentArray, argument[array_length(_argumentArray) - 1]);
    
    method_call(__InputTrace, _argumentArray);
}
