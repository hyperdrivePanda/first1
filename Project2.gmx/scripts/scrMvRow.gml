stage = argument0;

 if (keyboard_check_pressed(ord('W')) = true and stage.fwdMax > fwd)
 {  
    fwd++;
    x = path_get_point_x(stage.row[fwd], horiz);
    y = path_get_point_y(stage.row[fwd], horiz);
    image_xscale -= 0.15;
    image_yscale  -= 0.15;
    depth++;
    
 }
 
  if (keyboard_check_pressed(ord('S')) = true and fwd > 0)
 {
    fwd--;
    x = path_get_point_x(stage.row[fwd], horiz);
    y = path_get_point_y(stage.row[fwd], horiz);
    image_xscale += 0.15;
    image_yscale  += 0.15;
    depth--;
    
 }
 
   if (keyboard_check_pressed(ord('A')) = true and horiz > 0)
 {
    horiz--;
    x = path_get_point_x(stage.row[fwd], horiz);
    y = path_get_point_y(stage.row[fwd], horiz);
    
 }
 
   if (keyboard_check_pressed(ord('D')) = true and horiz < stage.horizMax)
 {
    horiz++;
    x = path_get_point_x(stage.row[fwd], horiz);
    y = path_get_point_y(stage.row[fwd], horiz);
    
 }