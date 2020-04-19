#property library
#property copyright "Copyright 2019, Dara Samii darasamii@outlook.com."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict

/*
this functions get the path of a text file and read everything in it and storage it in output array
*/
void text_reader(string path, string& output[])
{
    int f = FileOpen(path,FILE_READ|FILE_TXT);
    int i =0;
    string str;
    while( FileIsEnding(f) == False)
    {   
        str = FileReadString(f);
        output[i] = str;
        i++;  
    }
    FileClose(f);
}
/*
this functions get the path of a csv file and read double elemnets in it and storage it in output array
*/
void csv_reader_double(string path, double& output[][])
{
    int f = FileOpen(path, FILE_CSV|FILE_READ);
    
    string title = FileReadString(f);
    
    string out[];
    string str;
    int num;
    for (int n = 0; FileIsEnding(f) == False; n++)
    {
        str = FileReadString(f);
        num = StringSplit(str,StringGetCharacter(",",0),out);
        
        for (int i = 0; i < num-2; i++)
        {
            output[n][i] = StrToDouble(out[i+2]);   
        }
    }
    FileClose(f);
}
/*
this functions get the path of a csv file and read string elemnets in it and storage it in output array
*/
void csv_reader_string(string path, string& output[][])
{
    int f = FileOpen(path, FILE_CSV|FILE_READ);
    
    string title = FileReadString(f);
    
    string out[];
    string str;
    int num;
    for (int n = 0; FileIsEnding(f) == False; n++)
    {
        str = FileReadString(f);
        num = StringSplit(str,StringGetCharacter(",",0),out);
        
        for (int i = 0; i < num-2; i++)
        {
            output[n][i] = out[i+2];   
        }
    }
    FileClose(f);
}