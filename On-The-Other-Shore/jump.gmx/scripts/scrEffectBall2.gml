Sname = part_system_create();


particle1 = part_type_create();
part_type_shape(particle1,pt_shape_sphere);
part_type_size(particle1,0.10,0.10,0,0);
part_type_scale(particle1,1.08,1.34);
part_type_color3(particle1,4608599,8388863,7220788);
part_type_alpha3(particle1,0.92,0.44,0.03);
part_type_speed(particle1,4.82,6.24,-0.09,0);
part_type_direction(particle1,0,359,-1,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,0,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,30,38);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle1,5);

particle2 = part_type_create();
part_type_shape(particle2,pt_shape_cloud);
part_type_size(particle2,0.10,0.22,0,0);
part_type_scale(particle2,2.19,1);
part_type_color3(particle2,862015,255,9816929);
part_type_alpha3(particle2,0.95,0.32,0.06);
part_type_speed(particle2,3.68,5.47,-0.10,0);
part_type_direction(particle2,0,359,1,0);
part_type_gravity(particle2,0,270);
part_type_orientation(particle2,0,0,0,0,1);
part_type_blend(particle2,1);
part_type_life(particle2,40,5);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle2,5);

particle3 = part_type_create();
part_type_shape(particle3,pt_shape_spark);
part_type_size(particle3,0.12,0.22,0,0);
part_type_scale(particle3,1.54,1);
part_type_color3(particle3,16744703,33023,4227327);
part_type_alpha3(particle3,0.89,0.33,0.05);
part_type_speed(particle3,1.30,2.66,-0.01,0);
part_type_direction(particle3,0,359,1,0);
part_type_gravity(particle3,0,270);
part_type_orientation(particle3,0,0,0,0,1);
part_type_blend(particle3,1);
part_type_life(particle3,33,56);


emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle3,5);
