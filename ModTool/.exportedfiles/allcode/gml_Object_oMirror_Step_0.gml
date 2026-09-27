with (oCursor)
{
    if (rectangle_in_rectangle(other.x - sprite_get_xoffset(other.sprite_index), other.y - sprite_get_yoffset(other.sprite_index), (other.x - sprite_get_xoffset(other.sprite_index)) + other.sprite_width, (other.y - sprite_get_yoffset(other.sprite_index)) + other.sprite_height, x, y, x + sprite_width, y + sprite_height))
    {
        other.cursorColliding = true;
        break;
    }
    else
    {
        other.cursorColliding = false;
    }
}
