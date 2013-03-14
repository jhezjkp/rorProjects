#!/usr/bin/env bash

echo "import starts..."
mysql -hlocalhost -uroot -p123456 forum_dev < forum_dev.sql
echo "import finished!"
