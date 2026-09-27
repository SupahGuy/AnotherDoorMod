function matrix_infinite_perspective(arg0, arg1, arg2)
{
    var _fov_rad = degtorad(arg0);
    var _aspect = arg1;
    var _near = arg2;
    var f = 1 / tan(_fov_rad * 0.5);
    var mat = matrix_build_identity();
    mat[0] = f / _aspect;
    mat[5] = f;
    mat[10] = -1;
    mat[11] = -1;
    mat[14] = -2 * _near;
    mat[15] = 0;
    return mat;
}
