#!/bin/bash

# start heritrix binding to eth0

echo "Starting heritrix...."
/opt/heritrix-3.2.0/bin/heritrix -a heritrix:heritrix -b $(hostname -I)
tail -f /opt/heritrix-3.2.0/heritrix_out.log
