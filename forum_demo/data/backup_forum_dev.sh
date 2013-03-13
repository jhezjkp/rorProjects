#!/bin/bash

echo "backup starts..."
mysqldump -uroot -p'123456' --single-transaction --skip-lock-tables --default-character-set=utf8 -h localhost forum_dev > forum_dev.sql
echo "database backup finished!"
