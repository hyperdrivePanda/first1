c = argument0;
r = argument1;

blockX = path_get_point_x(stage.row[r], c);
blockY  = path_get_point_y(stage.row[r], c);
var block = instance_create(blockX, blockY, obstruct);
block.horiz = c;
block.fwd = r;