#!/bin/bash

cd /home/ubuntu/BinanceTrader
read

if [[ -n "$TMUX" ]]; then
  echo "You are currently in a tmux session."
else
  echo "You are not currently in a tmux session."
  echo "--- attach session ---"
  tmux attach-session -t ptb_binance_monitor
fi
read

# You are in the root ...
#cd /home/ubuntu/BinanceTrader
tmux send-keys -t ptb_binance_monitor "cd /home/ubuntu/BinanceTrader" C-m
#read

echo "--- run env ---"
#source venv310/local/bin/activate
tmux send-keys -t ptb_binance_monitor "source venv310/local/bin/activate" C-m
read

echo "--- run python script ---"
#python -m src.PTB_bot.ptb_binance_monitor
tmux send-keys -t ptb_binance_monitor "python -m src.PTB_bot.ptb_binance_monitor" C-m


