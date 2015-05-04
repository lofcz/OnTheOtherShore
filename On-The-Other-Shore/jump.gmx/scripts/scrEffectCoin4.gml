Sname = part_system_create()

particle1 = part_type_create();
part_type_shape(particle1,pt_shape_flare);
part_type_size(particle1,0.10,0.20,0,0.20);
part_type_scale(particle1,1,1);
part_type_color3(particle1,16777088,16711935,8388736);
part_type_alpha3(particle1,0.97,0.57,0);
part_type_speed(particle1,1.54,8,0,0);
part_type_direction(particle1,0,359,0,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,359,0,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,62,76);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_stream(Sname,emitter1,particle1,15);


