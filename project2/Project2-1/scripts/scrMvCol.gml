stage = argument0;
horizMax = argument1;
fwdMax = argument2;
fwdFree = true;
backFree = true;
leftFree = true;
rightFree = true;
 
 if instance_exists(obstruct)
 {
//-----------------------W------------------------
   for (i = 0; i < instance_number(obstruct); i++)
   {
    obstruction[i] = instance_find(obstruct, i);
    if ((obstruction[i]).horiz == obj_tester.horiz )
    {
     if ((obstruction[i]).fwd == (obj_tester.fwd)+1 )
      obj_tester.fwdFree = false;
    }
   }
//----------------------A---------------------------------   
   for (i = 0; i < instance_number(obstruct); i++)
   {
    obstruction[i] = instance_find(obstruct, i);
    if ((obstruction[i]).horiz == (obj_tester.horiz)-1 )
    {
     if ((obstruction[i]).fwd == (obj_tester.fwd))
      obj_tester.leftFree = false;
    }
   }
//----------------------S------------------------------   
   for (i = 0; i < instance_number(obstruct); i++)
   {
    obstruction[i] = instance_find(obstruct, i);
    if ((obstruction[i]).horiz == obj_tester.horiz )
    {
     if ((obstruction[i]).fwd == (obj_tester.fwd)-1 )
      obj_tester.backFree = false;
    }
   }
//----------------------D----------------------------------   
   for (i = 0; i < instance_number(obstruct); i++)
   {
    obstruction[i] = instance_find(obstruct, i);
    if ((obstruction[i]).horiz == obj_tester.horiz )
    {
     if ((obstruction[i]).fwd == (obj_tester.fwd)+1 )
      obj_tester.fwdFree = false;
    }
   }
 }
 
 if (keyboard_check_pressed(ord('W')) == true and fwdMax > fwd and fwdFree == true)
 {  
    fwd++;
    x = path_get_point_x(stage.column[horiz], fwd);
    y = path_get_point_y(stage.column[horiz], fwd);
    image_xscale -= 0.15;
    image_yscale  -= 0.15;
    depth++;
    
 }
 
  if (keyboard_check_pressed(ord('S')) == true and fwd > 0 and backFree == true)
 {
    fwd--;
    x = path_get_point_x(stage.column[horiz], fwd);
    y = path_get_point_y(stage.column[horiz], fwd);
    image_xscale += 0.15;
    image_yscale  += 0.15;
    depth--;
    
 }
 
   if (keyboard_check_pressed(ord('A')) == true and horiz > 0 and leftFree == true)
 {
    horiz--;
    x = path_get_point_x(stage.column[horiz], fwd);
    y = path_get_point_y(stage.column[horiz], fwd);
    
 }
 
   if (keyboard_check_pressed(ord('D')) == true and horiz < horizMax and backFree == true)
 {
    horiz++;
    x = path_get_point_x(stage.column[horiz], fwd);
    y = path_get_point_y(stage.column[horiz], fwd);
    
 }
