#!/bin/bash

# start heritrix in foreground and bind to eth0

echo "Starting heritrix...."
/opt/heritrix/bin/foreground_heritrix -a h3 -b $(hostname -I)
