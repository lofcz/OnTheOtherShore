Sname = part_system_create()

particle1 = part_type_create();
part_type_shape(particle1,pt_shape_flare);
part_type_size(particle1,0.30,0.30,0,0);
part_type_scale(particle1,1,1);
part_type_color3(particle1,255,8388863,16711935);
part_type_alpha3(particle1,0.83,0.64,0.05);
part_type_speed(particle1,2.92,4.58,-0.05,0);
part_type_direction(particle1,0,359,0,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,0,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,44,80);
emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,ps_shape_ellipse,1);
part_emitter_burst(Sname,emitter1,particle1,50);

