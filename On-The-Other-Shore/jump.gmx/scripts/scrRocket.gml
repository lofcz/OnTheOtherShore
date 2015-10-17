Sname = part_system_create();


particle1 = part_type_create();
part_type_shape(particle1,pt_shape_flare);
part_type_size(particle1,0.30,0.50,0,0);
part_type_scale(particle1,1.43,1.13);
part_type_color3(particle1,33023,255,65535);
part_type_alpha3(particle1,0.83,0.53,0.01);
part_type_speed(particle1,1,3,-0.09,0);
part_type_direction(particle1,0,359,0,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,0,0,0);
part_type_blend(particle1,1);
part_type_life(particle1,30,60);
emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,ps_shape_ellipse,1);
part_emitter_burst(Sname,emitter1,particle1,5);


