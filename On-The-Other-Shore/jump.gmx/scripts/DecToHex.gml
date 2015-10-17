hexlist = "0123456789ABCDEF";
sRevReturn = "";
sReturn = "";
num1 = argument0;
while( num1 > 0 )
{
decimal = (num1 / 16);
num1 = floor(decimal);
hexpos = (decimal - num1) * 16;
sRevReturn += string_char_at( hexlist, hexpos+1 );
}

for( i=string_length( sRevReturn ) + 1; i>0; i-=1 )
{
sReturn += string_char_at( sRevReturn, i );

}
hex_id = sReturn;
return (hex_id);
