
particle1 = part_type_create();
part_type_shape(particle1,pt_shape_line);
part_type_size(particle1,0.10,0.28,0,0);
part_type_scale(particle1,1.77,2.65);
part_type_color3(particle1,4227327,4262214,2980529);
part_type_alpha3(particle1,1.00,0.42,0);
part_type_speed(particle1,3.12,10,0,0);
part_type_direction(particle1,0,359,5,0);
part_type_gravity(particle1,0,270);
part_type_orientation(particle1,0,0,0,0,1);
part_type_blend(particle1,1);
part_type_life(particle1,30,40);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,oPlayer.x,oPlayer.x,oPlayer.y,oPlayer.y,0,0);
part_emitter_burst(Sname,emitter1,particle1,5);