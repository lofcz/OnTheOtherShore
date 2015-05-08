var ViewCenterX = view_xview[0] + (view_wview[0]/2);
var ViewCenterY = view_yview[0] + (view_hview[0]/2);
var Zoom = view_wport[0] / view_wview[0];
var MyDistanceFromCenter = point_distance(ViewCenterX,ViewCenterY,x,y) * Zoom;
var MyDirectionFromCenter = point_direction(ViewCenterX,ViewCenterY,x,y);
var NewDirectionFromCenter = MyDirectionFromCenter + view_angle[0];
realX = (view_wport[0]/2) + lengthdir_x(MyDistanceFromCenter,NewDirectionFromCenter)
realY = (view_hport[0]/2) + lengthdir_y(MyDistanceFromCenter,NewDirectionFromCenter)