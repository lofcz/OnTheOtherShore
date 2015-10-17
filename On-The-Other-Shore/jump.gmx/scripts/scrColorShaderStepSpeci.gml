/// scrColorShaderStep()
if (instance_number(oPlayer) > 0)
{
if (k_p = 1)
   {
    // Rozdíl shaderu a originálu (orig. větší cuz bílá)
    dif_r = abs(r_s - r);
    dif_g = abs(g_s - g);
    dif_b = abs(b_s - b);
    dif_alpha = abs(alpha_s - alpha);

    // Vyvážení červeného kanálu
    if (r>r_s)
       {
        r -= spd;
       }
       else {r += spd}
       
   // Vyvážení zeleného kanálu    
   if (g>g_s)
       {
        g -= spd;
       }
       else {g += spd}
   
   // Vyvážení modrého kanálu    
   if (b>b_s)
       {
        b -= spd;
       }
       else {b += spd}

// Vyvážení alpha kanálu    
   if (alpha>alpha_s)
       {
        alpha -= spd;
       }
       else {alpha += spd}

   }
else
       {
       
   if (r>r_o)
       {
        r -= spd;
       }
       else if (r<r_o) {r += spd}
       
   if (g>g_o)
       {
        g -= spd;
       }
       else if (g<g_o) {g += spd}
       
   if (b>b_o)
       {
        b -= spd;
       }
       else if (b<b_o) {b += spd}

    if (alpha>alpha_o)
       {
        alpha -= spd;
       }
       else if (alpha<alpha_o) {alpha += spd}

  
       
       
       
       }
}
