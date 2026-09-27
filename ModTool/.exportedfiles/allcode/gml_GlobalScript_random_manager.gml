function random_manager() constructor
{
    seed = irandom(1000);
    percentage = 0;
    
    generate_percentage = function()
    {
        percentage = random_range(0, 100);
    };
    
    get_percentage = function()
    {
        return percentage;
    };
}

global.randomManager = new random_manager();
