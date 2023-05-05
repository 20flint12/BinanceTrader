#!/bin/bash

#
echo "--- open session ---"
tmux new -s ptb_binance_monitor


# You are in the root ...
# cd BinanceTrader

echo "--- update repo ---"
git fetch
git switch develop
git pull origin develop

echo "--- run env ---"
source venv310/local/bin/activate

echo "--- run python script ---"
python -m src.PTB_bot.ptb_binance_monitor



