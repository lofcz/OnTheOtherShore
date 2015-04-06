///global_to_local_x(x,y);
var _len, _dir;
_len = point_distance(0,0,argument0,argument1);
_dir = point_direction(0,0,argument0,argument1)-(g_dir+90);

return lengthdir_x(_len,_dir);

