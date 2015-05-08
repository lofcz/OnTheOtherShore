///local_check_instance(xoffset,yoffset,object);
var _x = lengthdir_x(argument0,g_dir+90)+lengthdir_x(argument1,g_dir);
var _y = lengthdir_y(argument0,g_dir+90)+lengthdir_y(argument1,g_dir);

return instance_place(x+_x,y+_y,argument2);