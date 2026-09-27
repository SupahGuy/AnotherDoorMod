vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_texcoord();
vertex_format_add_color();
global.vFormat = vertex_format_end();

function vertex_create_face(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
{
    static _texSize = 32;
    
    var _texW = arg7 / _texSize;
    var _texH = arg8 / _texSize;
    vertex_position_3d(arg0, arg1.x, arg1.y, arg1.z);
    vertex_texcoord(arg0, 0, 0);
    vertex_color(arg0, arg5, arg6);
    vertex_position_3d(arg0, arg2.x, arg2.y, arg2.z);
    vertex_texcoord(arg0, 1, 0);
    vertex_color(arg0, arg5, arg6);
    vertex_position_3d(arg0, arg3.x, arg3.y, arg3.z);
    vertex_texcoord(arg0, 1, 1);
    vertex_color(arg0, arg5, arg6);
    vertex_position_3d(arg0, arg1.x, arg1.y, arg1.z);
    vertex_texcoord(arg0, 0, 0);
    vertex_color(arg0, arg5, arg6);
    vertex_position_3d(arg0, arg3.x, arg3.y, arg3.z);
    vertex_texcoord(arg0, 1, 1);
    vertex_color(arg0, arg5, arg6);
    vertex_position_3d(arg0, arg4.x, arg4.y, arg4.z);
    vertex_texcoord(arg0, 0, 1);
    vertex_color(arg0, arg5, arg6);
}
