import subprocess, sys
subprocess.check_call([sys.executable, '-m', 'pip', 'install', '-q', 'yfinance'])

import yfinance as yf

# Broad market context
for sym in ['SPY', 'QQQ', 'GME']:
    t = yf.Ticker(sym)
    fi = t.fast_info
    try:
        pct = (fi.last_price - fi.previous_close) / fi.previous_close * 100
        print(f"{sym:5s}  last={fi.last_price:.2f}  prev_close={fi.previous_close:.2f}  chg={pct:+.2f}%  hi={fi.day_high:.2f}  lo={fi.day_low:.2f}")
    except Exception as e:
        print(f"{sym}: {e}")
