#property library
#property copyright "Copyright 2019, Dara Samii darasamii@outlook.com."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict


/*
this function gets and 1 dimention array and fills a 2 dimentional array at the row_index you give 
*/
void filler(double& in[], double& out[][],int row_index)
{
    for (int i = 0; i< ArraySize(in); i++)
    {
        out[row_index][i] = in[i];
    }
}
/*
this function change the place of two elemnets of one dimentional array you give
*/
void change_element_1dim(double& ar[],int index_1,int index_2)
{
    double m = ar[index_2];
    ar[index_2] = ar[index_1];
    ar[index_1] = m;
}
/*
this function change the place of two rows of two dimentional array you give
*/
void indexer_2dim(double& ar[][], int row_index_1, int row_index_2)
{   
    double m;
    for (int i = 0; i < ArrayRange(ar,0) ; i++)
    {
        m = ar[i][index_1];
        ar[i][index_1] = ar[i][index_2];
        ar[i][index_2] = m;
    }
}
/*
this funtion sorts a two dimentional array by the index you give
*/
void sort2d(double& in[], double& out[][],int index )
{
   indexer_1dim(in, 0, index);
   indexer_2dim(out, 0, index);
   
   filler(in, out, 0);
   ArraySort(out);
   
   indexer_1dim(in, 0, index);
   indexer_2dim(out, 0, index);
}
