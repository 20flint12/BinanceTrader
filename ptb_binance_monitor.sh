#!/bin/bash

# chmod +x ./ptb_binance_monitor.sh

echo "--- attach session ---"
#tmux new -s ptb_binance_monitor
#tmux a -t ptb_binance_monitor
tmux attach-session -t ptb_binance_monitor

# You are in the root ...
cd /home/ubuntu/BinanceTrader

echo "--- update repo ---"
git fetch
git switch develop
git pull origin develop

echo "--- run env ---"
source venv310/local/bin/activate

echo "--- run python script ---"
python -m src.PTB_bot.ptb_binance_monitor



