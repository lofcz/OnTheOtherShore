///scrPlayerMove(x,y);
x_t = oPlayer.x
y_t = oPlayer.y
if (argument_count > 0)
   {
    x_t = argument[0];
   }
if (argument_count > 1)
   {
    y_t = argument[1];
   }
   
oPlayer.x = x_t;
oPlayer.y = y_t;
