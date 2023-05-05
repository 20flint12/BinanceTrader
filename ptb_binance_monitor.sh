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
cd /home/ubuntu/BinanceTrader
read

echo "--- run env ---"
source venv310/local/bin/activate
read

echo "--- run python script ---"
python -m src.PTB_bot.ptb_binance_monitor


