#!/bin/bash

CURDATE=$(date +"%Y-%m-%d %T")
ECHOPREFIX="$CURDATE [BOOT][IMAP_IPV6]"

screen -dmS imap143 socat TCP6-LISTEN:143,ipv6only=1,reuseaddr,fork TCP4:127.0.0.1:143
echo "$ECHOPREFIX Port 143 forwarded from IPv6 to IPv4"
screen -dmS imap993 socat TCP6-LISTEN:993,ipv6only=1,reuseaddr,fork TCP4:127.0.0.1:993
echo "$ECHOPREFIX Port 993 forwarded from IPv6 to IPv4"
