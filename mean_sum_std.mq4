#property library
#property copyright "Copyright 2019, Dara Samii darasamii@outlook.com."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict




/*
This functions get an array and return the sumation, mean and Standard diviation of the array


*/
//=========================================================================================================================
double sumation(double& array[])
{
    double sum = 0;
    for(int i = ArraySize(array) - 1 ; i >= 0 ; i--)
    {
        sum = sum + array[i];
    }
    return sum;
}
//=========================================================================================================================
double mean(double& array[])
{
    if (ArraySize(array) == 0)
        return 0;
    else
    { 
        double sum = sumation(array);
        return sum/ArraySize(array);
    }
}
//=========================================================================================================================
double std(double& array[])
{
    double Mean = mean(array);
    int N = ArraySize(array);
    if(N == 0)
        return 0;
    
    double diff[];
    ArrayResize(diff, N);
    for(int i = N-1;i >=0; i--)
    {
        diff[i] = MathPow(array[i]-Mean, 2);
    }
    double sumpower = sumation(diff);
    double STD = MathSqrt(sumpower/N-1);
    return STD; 
}

//=========================================================================================================================     