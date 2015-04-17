


particle1 = part_type_create();
part_type_shape(particle1,pt_shape_flare);
part_type_size(particle1,0.10,0.20,0,0.10);
part_type_scale(particle1,4,1);
part_type_color3(particle1,make_colour_rgb(64,0,128),make_colour_rgb(128,0,255),make_colour_rgb(255,0,128));
part_type_alpha3(particle1,0.50,1,0);
part_type_speed(particle1,1,2,0.05,0);
part_type_direction(particle1,60,120,0,4);
part_type_gravity(particle1,0.20,90);
part_type_orientation(particle1,0,0,0,10,1);
part_type_blend(particle1,1);
part_type_life(particle1,30,45);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,argument0,argument0,argument1,argument1,0,0);
part_emitter_burst(Sname,emitter1,particle1,5);

particle2 = part_type_create();
part_type_shape(particle2,pt_shape_flare);
part_type_size(particle2,0.10,0.40,0,0);
part_type_scale(particle2,1,1);
part_type_color3(particle2,make_colour_rgb(64,0,128),make_colour_rgb(128,0,255),make_colour_rgb(255,0,128));
part_type_alpha2(particle2,0.40,0);
part_type_speed(particle2,2.13,2,0,1);
part_type_direction(particle2,30,150,0,5);
part_type_gravity(particle2,0.10,90);
part_type_orientation(particle2,0,0,5,0,1);
part_type_blend(particle2,1);
part_type_life(particle2,20,77);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,argument0,argument0,argument1,argument1,0,0);
part_emitter_burst(Sname,emitter1,particle2,1);


