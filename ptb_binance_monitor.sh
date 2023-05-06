#!/bin/bash

if [[ -n "$TMUX" ]]; then
  echo "You are currently in a tmux session."

  cd /home/ubuntu/BinanceTrader
  source venv310/local/bin/activate
  python -m src.PTB_bot.ptb_binance_monitor
  read

else
  echo "You are not currently in a tmux session."

  tmux send-keys -t ptb_binance_monitor "cd /home/ubuntu/BinanceTrader" C-m

  echo "--- run env ---"
  tmux send-keys -t ptb_binance_monitor "source venv310/local/bin/activate" C-m

  echo "--- run python script ---"
  tmux send-keys -t ptb_binance_monitor "python -m src.PTB_bot.ptb_binance_monitor" C-m
  read

  echo "--- attach session ---"
  tmux attach-session -t ptb_binance_monitor
fi

