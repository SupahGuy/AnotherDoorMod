xInit = x;
yInit = y;
zInit = z;
vertex_begin(vBuffFace, global.vFormat);
vertex_create_face(vBuffFace, new Vec3(x, y, z), new Vec3(x + objWidth, y, z), new Vec3(x + objWidth, y + objHeight, z), new Vec3(x, y + objHeight, z), -1, 1, objWidth, objHeight);
vertex_end(vBuffFace);
