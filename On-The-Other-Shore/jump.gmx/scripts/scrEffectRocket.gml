particle1 = part_type_create();
part_type_shape(particle1,pt_shape_pixel);
part_type_size(particle1,0.70,2,-0.01,0);
part_type_scale(particle1,2,2);
part_type_color3(particle1,128,65535,8421504);
part_type_alpha3(particle1,0.84,0.39,0.08);
part_type_speed(particle1,2.73,4.23,0,0);
part_type_direction(particle1,0,359,0,0);
part_type_gravity(particle1,0.20,270);
part_type_orientation(particle1,0,0,0,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,48,73);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x-10,x+10,y-10,y+10,ps_shape_diamond,ps_distr_gaussian);
part_emitter_burst(Sname,emitter1,particle1,min(-7,irandom(-20)));
