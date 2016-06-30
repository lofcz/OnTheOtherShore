///unstick(dirs,[max repeats]);
var _dir, _len, _x, _y, _max_r;
_dir = 0;
_len = 1;
_x = x;
_y = y;
_max_r = 9999;

if argument_count > 1 {
 _max_r = argument[1];
}

while(local_check_solid(0,0) && _max_r > 0) {
 x = _x;
 y = _y;
 
 x += lengthdir_x(_len,_dir);
 y += lengthdir_y(_len,_dir);
 
 _max_r--;
 _dir += 360/argument[0];
 if (_dir >= 360) {
  _dir -= 360;
  _len++;
 }
}

if _max_r <= 0 {
 x = _x;
 y = _y;
}

return _len;
