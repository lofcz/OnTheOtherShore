Sname = part_system_create()


particle1 = part_type_create();
part_type_shape(particle1,pt_shape_flare);
part_type_size(particle1,0.10,0.55,0,0.10);
part_type_scale(particle1,1.11,1);
part_type_color3(particle1,16744576,16776960,16744448);
part_type_alpha3(particle1,0.60,0.73,0.08);
part_type_speed(particle1,2.86,6.60,0,2);
part_type_direction(particle1,0,359,0,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,0,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,30,50);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle1,10);
