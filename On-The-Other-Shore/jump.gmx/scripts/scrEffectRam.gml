part_system_depth(Sname,-100);


particle1 = part_type_create();
part_type_shape(particle1,pt_shape_pixel);
part_type_size(particle1,0.41,0.61,0,0);
part_type_scale(particle1,3.17,1.20);
part_type_color3(particle1,8388863,16711935,8388672);
part_type_alpha3(particle1,0.79,0.56,0.01);
part_type_speed(particle1,3.46,5,-0.03,0);
part_type_direction(particle1,0,359,0,20);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,0,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,63,84);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,argument0,argument0,argument1,argument1,0,0);
part_emitter_burst(Sname,emitter1,particle1,15);

particle2 = part_type_create();
part_type_shape(particle2,pt_shape_flare);
part_type_size(particle2,0.10,0.25,0,0);
part_type_scale(particle2,1,1);
part_type_color3(particle2,16744703,8388863,8388736);
part_type_alpha3(particle2,0.88,0.46,0.08);
part_type_speed(particle2,3.81,4,0.01,0);
part_type_direction(particle2,0,359,0,20);
part_type_gravity(particle2,0,270);
part_type_orientation(particle2,0,0,0,0,1);
part_type_blend(particle2,1);
part_type_life(particle2,65,89);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,argument0,argument0,argument1,argument1,0,0);
part_emitter_burst(Sname,emitter1,particle2,10);