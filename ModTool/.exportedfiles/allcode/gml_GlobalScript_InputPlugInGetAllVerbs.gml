function InputPlugInGetAllVerbs()
{
    static _verbDefIndexArray = __InputSystem().__verbDefIndexArray;
    
    return variable_clone(_verbDefIndexArray);
}
