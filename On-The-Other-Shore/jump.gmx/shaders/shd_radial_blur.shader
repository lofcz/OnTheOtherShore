//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;
uniform vec2 mouse_pos;
uniform vec2 resolution;
uniform float radial_blur_offset;
uniform float radial_brightness;

void main()
{ 
    vec2 uv = vec2(v_vTexcoord);
//    uv.x *= (resolution.x/resolution.y);
    vec2 radial_size = vec2(1.0/resolution);
    radial_size.x *= (resolution.x/resolution.y);
    vec2 radial_origin = vec2(mouse_pos/resolution);
    vec4 colour = vec4(0.0);
    
    float blur_amount = 30.0;
    
    uv += radial_size * 0.5 - radial_origin;
 
    for (float i = 0.0; i < blur_amount; i++)
    {
        float offset = 1.0 - radial_blur_offset * (i / (blur_amount - 1.0));
        colour += texture2D(gm_BaseTexture, uv * offset + radial_origin);  
    }
 
  gl_FragColor = colour / (blur_amount - 1.0) * radial_brightness;
}

