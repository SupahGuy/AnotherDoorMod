function depth_manager() constructor
{
    depthArray = ["mainScene", "choice", "player", "charSelection", "charDesc", "buttonCharDesc", "award", "button", "intro", "fightWindows", "fighters", "cards", "cardActive", "ui", "uiParticles", "clover", "effect", "dayNight", "floatText", "token", "gemAdd", "pouch", "tooltip", "dialogue", "chatbox", "roomTransition", "playerDisconnected", "settings", "settingsLang", "controllerDisconnected", "cursor"];
    depthMultiplier = -1;
    depthOffset = 1000;
    depthRange = 10;
    
    get_depth = function(arg0)
    {
        return (1000 + (array_get_index(depthArray, arg0) * depthRange)) * depthMultiplier;
    };
}
