#!/bin/bash
set -e

echo '1. starting mysql...'
service mysql start

echo '2. creating database...'
mysql < /mysql/create_table.sql


# check mysql status
echo `service mysql status`
echo '3. mysql is ready...'

tail -f /dev/null
