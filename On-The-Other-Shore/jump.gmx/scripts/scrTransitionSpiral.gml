var surfaces, s_width, s_height, fraction;
surfaces[0] = argument0; // Surface with the image of the previous room
surfaces[1] = argument1; // Surface with the image of the next room
s_width = argument2; // Width of the surface
s_height = argument3; // Height of the surface
fraction = argument4; // Fraction (between 0 and 1)

/******* Configuration variables ********/
var turns, angle_step;
turns = 3; // Number of turns to take to wipe out the image; should be >=2
angle_step = 5; // Precision used on drawing circles
/********/

var cx, cy, clip_radius, max_radius;
cx = s_width / 2; // Center of the drawing region
cy = s_height / 2;
clip_radius = sqrt(sqr(s_width/2) + sqr(s_height/2)); // This should be large enough to cover the entire drawing region.
max_radius = s_width / 2; // This is the radius of the first fan (at angle of 0.)

// Draw the previous/next room behind fans in advance
draw_surface(surfaces[fraction >= 0.5], 0, 0);

// Prepare to draw primitives in black, resetting other graphics settings
draw_set_color(c_black);
draw_set_alpha(1);
draw_set_blend_mode(bm_normal);

draw_primitive_begin(pr_trianglestrip);

var angle, max_angle, end_angle, radius, progress;
max_angle = 360 * turns;

if (fraction < 0.5) {
    // For the first half of the transition, we draw a series of black fans
    // to cover the first image.
    angle = max_angle;
    end_angle = max_angle * (0.5 - fraction) * 2;
}
else {
    // For the latter half, we remove pieces of fans one by one.
    // (In plactice, we draw a series of fans with increasing radius.)
    angle = max_angle * (1 - fraction) * 2;
    end_angle = 0;
}

while (true) {
    if (fraction < 0.5) {
        // For the first half of the transition, radius decreases as the transition goes.
        // Note that radius is fixed to 0 for the last 360 degrees, so that the entire image gets wiped out.
        // That is why two -360's comes in the expression below.
        progress = angle;
        }
    else {
        // For the latter half of the transition, radius increases as the transition goes.
        // This time, radius is fixed to 0 for the first 360 degrees.
        progress = max_angle - angle;
    }
    radius = max(0, max_radius * (progress - 360) / (max_angle - 360));

    draw_vertex(cx + lengthdir_x(radius, angle), cy + lengthdir_y(radius, angle));
    draw_vertex(cx + lengthdir_x(clip_radius, angle), cy + lengthdir_y(clip_radius, angle));

    if (angle <= end_angle) break;
    else {
        angle -= angle_step;
        if (angle < end_angle) {
            // Repeat once more, to add the last vertex at the end.
            angle = end_angle;
        }
    }
}
draw_primitive_end();
if (aa > 0) {aa -= 0.02}
if (aaa < 1) {aaa += 0.1}
if (xss < 1.3) {xss += 0.02 yss = xss}

draw_set_alpha(aa)
draw_sprite(sBackEffect,4,view_xview,view_yview[0])
draw_set_alpha(1)
draw_sprite_ext(sLoading,0,1024/2,768/2,xss,yss,0,c_white,aaa)   

