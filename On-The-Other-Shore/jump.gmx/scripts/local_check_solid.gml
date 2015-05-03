///local_check_solid(xoffset,yoffset);
var _x = lengthdir_x(argument0,g_dir+90)+lengthdir_x(argument1,g_dir);
var _y = lengthdir_y(argument0,g_dir+90)+lengthdir_y(argument1,g_dir);

if place_meeting(x+_x,y+_y,par_solid) {
 return true;
}

return false;

