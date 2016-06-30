///Move
entity_collision = false;
xprevious = x;
yprevious = y;

//Check for intances on top
while local_check_meeting(0,min(-1,vspd),oLogic) {
 with local_check_instance(0,min(-1,vspd),oLogic) {
  if !local_check_meeting(0,-1,other) {
   xprevious = x;
   yprevious = y;
   ds_list_add(other.onMeList,id);
   local_translate(0,-9999);
  } else {
   ds_list_add(other.notOnMeList,id);
   local_translate(0,-9999);
  }
 }
}
//Check for intances on below
while local_check_meeting(0,max(1,vspd),oLogic) {
 with local_check_instance(0,max(1,vspd),oLogic) {
  if !local_check_meeting(0,-1,other) {
   ds_list_add(other.onMeList,id);
   local_translate(0,-9999);
  } else {
   ds_list_add(other.notOnMeList,id);
   local_translate(0,-9999);
  }
 }
}
//Check for intances to the right
while local_check_meeting(max(1,hspd),0,oLogic) {
 with local_check_instance(max(1,hspd),0,oLogic) {
  if !local_check_meeting(0,-1,other) {
   ds_list_add(other.onMeList,id);
   local_translate(0,-9999);
  } else {
   ds_list_add(other.notOnMeList,id);
   local_translate(0,-9999);
  }
 }
}
//Check for intances to the left
while local_check_meeting(min(-1,hspd),0,oLogic) {
 with local_check_instance(min(-1,hspd),0,oLogic) {
  if !local_check_meeting(0,-1,other) {
   ds_list_add(other.onMeList,id);
   local_translate(0,-9999);
  } else {
   ds_list_add(other.notOnMeList,id);
   local_translate(0,-9999);
  }
 }
}

//Move non-lifted back
for (i=0;i<ds_list_size(notOnMeList);i++) {
 with ds_list_find_value(notOnMeList,i) {
  local_translate(0,9999);
 }
}
ds_list_clear(notOnMeList);

//Move horizontally
for (i=0;i<abs(hspd);i++) {
 if !local_check_solid(sign(hspd),0) && !local_check_meeting(sign(hspd),0,oLogic) {
  local_translate(sign(hspd),0);
 } else {
  hspd *= -1;
  break;
 }
}

//Move vertically
for (i=0;i<abs(vspd);i++) {
 if !local_check_solid(0,sign(vspd)) && !local_check_meeting(0,sign(vspd),oLogic) {
  local_translate(0,sign(vspd));
 } else {
  vspd *= -1;
  break;
 }
}

//Move carried instances
for (i=0;i<ds_list_size(onMeList);i++) {
 with ds_list_find_value(onMeList,i) {
  local_translate(0,9999);
  
  var __x = other.x-other.xprevious;
  var __y = other.y-other.yprevious;
  local_translate(global_to_local_x(__x,__y),global_to_local_y(__x,__y));
  
  if local_check_solid(0,0) {
   other.entity_collision = true;
  }
 }
}

//Cancel movement
if entity_collision == true {
 x = xprevious;
 y = yprevious;
 hspd *= -1;
 vspd *= -1;
 for (i=0;i<ds_list_size(onMeList);i++) {
  with ds_list_find_value(onMeList,i) {
   x = xprevious;
   y = yprevious;
  }
 }
}

//Clean up
ds_list_clear(onMeList);
