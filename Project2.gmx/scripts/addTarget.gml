r = argument0;
c = argument1;

tarX = path_get_point_x(stage.column[c], r);
tarY  = path_get_point_y(stage.column[c], r);
var target = instance_create(tarX, tarY, objTarget);
target.horiz = c;
target.fwd = r;