c = argument0;
r = argument1;

blockX = path_get_point_x(stage.column[c], r);
blockY  = path_get_point_y(stage.column[c], r);
var block = instance_create(blockX, blockY, obstruct);
block.horiz = c;
block.fwd = r;