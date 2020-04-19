#property library
#property copyright "Copyright 2019, Dara Samii darasamii@outlook.com."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict

/*
this function accepts to aruments, two integers and return  an random integer betmween this to numbers
Example:
int a;
a = randint(0,10);
Print(a); >> 2
Print(a); >> 7
Print(a); >> 9
*/
int rand_int( int  min, int max )
{   
    if ( min >= max )
        return ( 0 );
    else
    {       
        int  magh = max - min + 1; 
        int result = ( (rand() % magh) + min );
        return ( result );
    }
}