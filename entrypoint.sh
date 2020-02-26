#!/bin/sh

export webhook=$1
export message="${@:2}"

cat << EOF > webhook.py
#!/usr/bin/python3
import pymsteams
import sys

myTeamsMessage = pymsteams.connectorcard(sys.argv[1])
myTeamsMessage.text(sys.argv[2])
myTeamsMessage.send()

EOF

chmod 755 webhook.py

./webhook.py $webhook $message
