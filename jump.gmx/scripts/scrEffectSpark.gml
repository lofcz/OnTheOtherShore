


particle1 = part_type_create();
part_type_shape(particle1,pt_shape_flare);
part_type_size(particle1,0.21,0.31,0,0.01);
part_type_scale(particle1,1,0.29);
part_type_color3(particle1,8388863,16711808,4227327);
part_type_alpha3(particle1,1,0.50,0);
part_type_speed(particle1,3.47,3.68,0.02,1);
part_type_direction(particle1,0,359,0,20);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,0,20,1);
part_type_blend(particle1,1);
part_type_life(particle1,47,77);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle1,irandom_range(7,15));


