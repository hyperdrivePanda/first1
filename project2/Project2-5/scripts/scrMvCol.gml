stage = argument0;
horizMax = argument1;
fwdMax = argument2;
fwdTile = true;
 
 if instance_exists(obstruct)
 {
  /*var nearest1 = instance_nearest(obj_tester.x, obj_tester.y, obstruct);
   if (nearest1.horiz == obj_tester.horiz and nearest1.fwd == (obj_tester.fwd)+1)
   {
    fwdTile = false;
   }
   else
    fwdTile = true;*/
    q=0;
   for (i = 0; i < instance_number(obstruct); i += 1)
   {
    obstruction[i] = instance_find(obstruct, i);
    if ( (obstruction[i]).horiz == obj_tester.horiz )
    {
     columnBlock[q] = obstruction[i];
     q++; 
    }
   }
 }
 
 if (keyboard_check_pressed(ord('W')) == true and fwdMax > fwd and fwdTile == true)
 {  
    fwd++;
    x = path_get_point_x(stage.column[horiz], fwd);
    y = path_get_point_y(stage.column[horiz], fwd);
    image_xscale -= 0.15;
    image_yscale  -= 0.15;
    depth++;
    
 }
 
  if (keyboard_check_pressed(ord('S')) == true and fwd > 0)
 {
    fwd--;
    x = path_get_point_x(stage.column[horiz], fwd);
    y = path_get_point_y(stage.column[horiz], fwd);
    image_xscale += 0.15;
    image_yscale  += 0.15;
    depth--;
    
 }
 
   if (keyboard_check_pressed(ord('A')) == true and horiz > 0)
 {
    horiz--;
    x = path_get_point_x(stage.column[horiz], fwd);
    y = path_get_point_y(stage.column[horiz], fwd);
    
 }
 
   if (keyboard_check_pressed(ord('D')) == true and horiz < horizMax)
 {
    horiz++;
    x = path_get_point_x(stage.column[horiz], fwd);
    y = path_get_point_y(stage.column[horiz], fwd);
    
 }
