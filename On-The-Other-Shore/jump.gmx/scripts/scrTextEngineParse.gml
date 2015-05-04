/// scrTextEngineParse(); 


all_alpha = 0;
for(a = 1 a<lenght a++)
{
str[a,m_text] = string_insert(" ",str[a,m_text],0)
}


lenght_temp = string_width(str[0,m_text]);

for (a=0 a<lenght a++)
    {
    
 

    str[a,m_x] = lenght_temp+xx;
    str[a,m_y] = yy;

   lenght_temp += string_width(str[a,m_text])


    width = string_length(str[a,m_text])
    
       if (string_pos("#",str[a,m_text]) != 0)
          {
          pos = string_pos("#",str[a,m_text]);
          string_delete(str[a,m_text],pos,1);
          yy+=(string_height(str[a,m_text]))
          lenght_temp = string_width(str[0,m_text]);
          str[a+1,m_text] = string_delete(str[a+1,m_text],1,1)

          }
          else 
               {
                if (lenght_temp > text_width)
                   {
                    show_message(lenght_temp);
                    yy+=(string_height(str[a,m_text]))
                    lenght_temp = string_width(str[0,m_text]);
                    str[a+1,m_text] = string_delete(str[a+1,m_text],1,1)

                   }
               
               }


    }


