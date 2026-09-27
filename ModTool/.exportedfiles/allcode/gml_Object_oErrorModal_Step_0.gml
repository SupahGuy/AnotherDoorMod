if (instance_exists(btnClose))
{
    if (btnClose.is_released())
    {
        instance_destroy(btnClose);
        instance_destroy();
        callbackOnceDestroy();
    }
}
