Sname = part_system_create()

particle1 = part_type_create();
part_type_shape(particle1,pt_shape_flare);
part_type_size(particle1,0.11,0.50,0,0);
part_type_scale(particle1,1,1);
part_type_color3(particle1,4194368,16711808,8388863);
part_type_alpha3(particle1,0.91,0.32,0);
part_type_speed(particle1,1,6.71,0,0);
part_type_direction(particle1,0,359,0,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,359,0,20,1);
part_type_blend(particle1,1);
part_type_life(particle1,66,69);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle1,10);

particle2 = part_type_create();
part_type_shape(particle2,pt_shape_star);
part_type_size(particle2,0.10,0.40,0,0);
part_type_scale(particle2,1,1);
part_type_color3(particle2,8388863,4194432,8798053);
part_type_alpha3(particle2,0.70,0.62,0);
part_type_speed(particle2,1.83,3.34,0.02,0);
part_type_direction(particle2,0,359,1,0);
part_type_gravity(particle2,0,270);
part_type_orientation(particle2,0,359,1,0,1);
part_type_blend(particle2,1);
part_type_life(particle2,37,77);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle2,10);

