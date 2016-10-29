c = argument0;
r = argument1;

blockX = path_get_point_x(g4_2.column[c], r);
blockY  = path_get_point_y(g4_2.column[c], r);
var block = instance_create(blockX, blockY, obstruct);
block.horiz = c;
block.fwd = r;
