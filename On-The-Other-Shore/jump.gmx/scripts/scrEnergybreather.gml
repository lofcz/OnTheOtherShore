/// scrEnergybreather(reload,first_shot,direction,start_speed,max_speed,friction,accuray,lock_on_player)


hex_id = DecToHex(id);

show_warning = 1;

start_speed = 3;
max_speed = 15;
dir = 90;
reload = 30;
spd = 1;
accuray = 0;
lock = 0;

alarm[0] = 20;
if (argument_count = 0)
{
if (argument_count < 7 && show_warning = 1) {show_message("WARNING!##Energy breather: "+string(id)+string(" (")+string(hex_id)+string(")")+string("#Uses wrong number of arguments, setting to default values. ## Use scrEnergybreather('') for default values. ")); show_warning = 0;}
}

if (argument_count > 0)
{
if (string(argument[0]) != "")
   {
   if (argument_count > 0) { reload = argument[0];  }
   if (argument_count > 1) { alarm[0] = real(argument[1]);  }
   if (argument_count > 2) { dir = argument[2];  }
   if (argument_count > 3) { start_speed = argument[3];  }
   if (argument_count > 4) { max_speed = argument[4];  }
   if (argument_count > 5) { spd = argument[5];  }
   if (argument_count > 6) { accuray = argument[6];  }
   if (argument_count > 7) { lock = argument[7];  }
   
   if (argument_count < 7 && show_warning = 1 ) {show_message("WARNING!##Energy breather: "+string(id)+string(" (")+string(hex_id)+string(")")+string("#Uses wrong number of arguments, setting to default values. ## Use scrEnergybreather('') for default values. ##- LordOfFlies"))}
   }
else 
     {
     
     
     }
}
image_angle = (dir-90);
