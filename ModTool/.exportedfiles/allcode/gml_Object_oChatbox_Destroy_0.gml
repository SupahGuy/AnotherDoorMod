instance_destroy(theInput);
instance_destroy(theButton);

for (var _i = 0; _i < array_length(buttonsPlayer); _i++)
    instance_destroy(buttonsPlayer[_i]);

pause_chatbox(false);
