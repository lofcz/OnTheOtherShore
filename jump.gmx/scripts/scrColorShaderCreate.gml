/// scrColorShaderCreate(r,g,b,r_s,g_s,b_s,alpha,alpha_s,n) 
event_inherited();

// Rychlost transformace
n = argument8;
spd = (n/255);

// Kanály shaderu:
channel_mask = shader_get_uniform(shdColor, "f_ChannelMask");

// Základ
r_o = argument3;
g_o = argument4;
b_o = argument5;
alpha_o = argument6;

// Komplet shader
r_s = argument0;
g_s = argument1;
b_s = argument2;
alpha_s = argument7;

// Finální hodnoty
r = r_o;
g = g_o;
b = b_o;
alpha = alpha_o;

