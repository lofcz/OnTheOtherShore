Sname = part_system_create();


particle1 = part_type_create();
part_type_shape(particle1,pt_shape_flare);
part_type_size(particle1,0.10,0.19,0,0);
part_type_scale(particle1,1.64,2.01);
part_type_color3(particle1,12615808,8388863,8388736);
part_type_alpha3(particle1,0.78,0.63,0.03);
part_type_speed(particle1,1.06,1.57,0,0);
part_type_direction(particle1,0,359,5,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,0,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,80,100);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle1,20);