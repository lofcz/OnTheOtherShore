///local_inclination()
var _y1, _y2;
_y1 = 0;
_y2 = 0;

for(_i=0;_i<32;_i++){
 if local_check_solid(sign(image_xscale)*4,_y1) {
  _y1 -= 1;
 } else if !local_check_solid(sign(image_xscale)*4,_y1+1) {
  _y1 += 1;
 }
 if local_check_solid(sign(-image_xscale)*4,_y2) {
  _y2 -= 1;
 } else if !local_check_solid(sign(-image_xscale)*4,_y2+1) {
  _y2 += 1;
 }
}

if abs(abs(_y1)-abs(_y2))/8 > 3 {
 return 3000;
}

return (_y1-_y2)/8*sign(image_xscale);