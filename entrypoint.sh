#!/bin/sh

export webhook=$1
export message=${@:2}

echo $webhook
echo $message

cat << EOF > webhook.py
#!/usr/bin/python3
import pymsteams
import sys

webhook = sys.argv[1]
message = ' '.join(sys.argv[2:])

myTeamsMessage = pymsteams.connectorcard(webhook)
myTeamsMessage.text(message)
myTeamsMessage.send()

EOF

chmod 755 webhook.py

./webhook.py $webhook $message
