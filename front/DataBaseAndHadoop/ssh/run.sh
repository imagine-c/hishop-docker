#!/bin/bash
set -eo pipefail
echo "����ssh����"
/etc/init.d/ssh start && \
tail -f /dev/null
