import subprocess, sys
subprocess.check_call([sys.executable, '-m', 'pip', 'install', '-q', 'yfinance'])

import yfinance as yf

ticker = yf.Ticker('EBAY')

try:
    hist = ticker.history(period='1d', interval='5m')
    print('=== Intraday 5min ===')
    if not hist.empty:
        hist.index = hist.index.tz_convert('America/New_York')
        print(hist[['Open','High','Low','Close','Volume']].to_string())
    else:
        print('No data')
except Exception as e:
    print(f'Error intraday: {e}')

try:
    fi = ticker.fast_info
    print()
    print('=== Quote ===')
    print(f'Last Price:     {fi.last_price}')
    print(f'Previous Close: {fi.previous_close}')
    print(f'Day High:       {fi.day_high}')
    print(f'Day Low:        {fi.day_low}')
    print(f'Volume:         {fi.volume:,}')
    print(f'3M Avg Volume:  {fi.three_month_average_volume:,.0f}')
except Exception as e:
    print(f'Error fast_info: {e}')

try:
    hist5 = ticker.history(period='5d', interval='1d')
    print()
    print('=== 5-Day Daily ===')
    print(hist5[['Open','High','Low','Close','Volume']].to_string())
except Exception as e:
    print(f'Error 5d: {e}')
