#property library
#property copyright "Copyright 2019, Dara Samii darasamii@outlook.com."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict

/*
This function get two argumeents the price which the trade opens with and the price that the trader close the trade and compute the percent of profit or loss
*/
double profit(double open_trade_price, double close_trade_price )
{
    double Profit = ( ( (close_trade_price - open_trade_price ) / open_trade_price ) * 100 );
    return ( Profit );
}




/*
this functoon devide the whole sum profit or loss by the number of candles in trade and returns an average of profit per candle
*/
double profit_per_candle (double sum_profit, int candles_in_trade )
{   
    double ppd;
    if (candles_in_trade != 0)
        ppd = ( sum_profit / candles_in_trade );
    else
        ppd =0;
    return ( ppd );
}



/*
this function calculates the number of successful trades divided by whole number of trades  
*/
double Risk_calculator (int successful, int unsuccessful )
{   
    double totla_trades = successful + unsuccessful;
    if (totla_trades == 0 )
        return ( 0.0 );
    double risk = ( successful / totla_trades ) * 100;
    return ( risk );
}
//---------------------------------------------------------------------------------------------------------------------------------------------------------------
