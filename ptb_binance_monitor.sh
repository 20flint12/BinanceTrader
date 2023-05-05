#!/bin/bash

echo "--- update repo ---"
git fetch
git switch develop
git pull origin develop

echo "--- run env ---"
source venv310/local/bin/activate

echo "--- run python script ---"
python -m src.PTB_bot.ptb_binance_monitor



