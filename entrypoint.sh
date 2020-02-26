#!/bin/sh

sudo export webhook=$1
sudo export message=$2

cat << EOF > webhook.py
#!/usr/bin/python3
import pymsteams
import sys

myTeamsMessage = pymsteams.connectorcard(sys.argv[1])
myTeamsMessage.text(sys.argv[2])
myTeamsMessage.send()

EOF

sudo chmod 755 webhook.py

sudo ./webhook.py $webhook $message
