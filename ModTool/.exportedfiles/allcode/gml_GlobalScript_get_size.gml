function get_size(arg0)
{
    var _type = typeof(arg0);
    
    switch (_type)
    {
        case "array":
            return array_length(arg0);
        
        case "struct":
            return get_size(variable_struct_get_names(arg0));
        
        case "string":
            return string_length(arg0);
        
        case "number":
        case "int32":
        case "int64":
            return get_size(string(arg0));
        
        case "bool":
            return 1;
        
        default:
            return -1;
    }
}
