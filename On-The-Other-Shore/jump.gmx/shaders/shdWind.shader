attribute vec3 in_Position;                  // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)
varying vec2 v_texCoord;
varying vec4 v_vColour;
void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;    
    v_vColour = in_Colour;
    v_texCoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_texCoord;
uniform float move_dir;
const float speed = 3.0;
const float bendFactor = 0.05;
void main()
{
  float height = abs(1.0 - v_texCoord.y);
  float offset = pow(height, 1.5);
  offset *= clamp((sin(move_dir * speed) * bendFactor),-1.0,1.0);
  vec2 new=vec2(v_texCoord.x + offset, v_texCoord.y);
  vec4 normalColor = texture2D(gm_BaseTexture,new).rgba;
  gl_FragColor = normalColor;  
}
