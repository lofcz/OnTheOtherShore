Sname = part_system_create()

particle1 = part_type_create();
part_type_shape(particle1,pt_shape_sphere);
part_type_size(particle1,0.10,0.42,0,0);
part_type_scale(particle1,1,1);
part_type_color3(particle1,12615935,8388863,16711808);
part_type_alpha3(particle1,0.62,0.77,0.04);
part_type_speed(particle1,1.26,4.37,0.12,0);
part_type_direction(particle1,0,359,1,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,359,0,20,0);
part_type_blend(particle1,1);
part_type_life(particle1,44,79);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle1,20);

particle2 = part_type_create();
part_type_shape(particle2,pt_shape_smoke);
part_type_size(particle2,0.20,0.80,0,0);
part_type_scale(particle2,1,1);
part_type_color3(particle2,4194432,8388863,16711935);
part_type_alpha3(particle2,0.74,0.56,0.03);
part_type_speed(particle2,3.69,4.35,0.14,0);
part_type_direction(particle2,0,359,0,0);
part_type_gravity(particle2,0,270);
part_type_orientation(particle2,0,359,1,0,1);
part_type_blend(particle2,1);
part_type_life(particle2,54,90);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle2,20);