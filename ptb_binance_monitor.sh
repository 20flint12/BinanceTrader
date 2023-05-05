#!/bin/bash

cd /home/ubuntu/BinanceTrader
read

echo "--- attach session ---"
#tmux new -s ptb_binance_monitor
#tmux a -t ptb_binance_monitor
tmux attach-session -t ptb_binance_monitor
read

# You are in the root ...
cd /home/ubuntu/BinanceTrader
read

#echo "--- update repo ---"
#git reset --hard origin/develop
#git fetch
#git switch develop
#git pull origin develop

echo "--- run env ---"
source venv310/local/bin/activate
read

echo "--- run python script ---"
python -m src.PTB_bot.ptb_binance_monitor


