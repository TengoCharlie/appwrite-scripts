#!/bin/bash

crontab -e

# Cron job at $ am
0 4 * * * /bin/bash /path/to/automated_backup.sh
