#!/bin/bash

MONGODUMP_PATH="mongodump"
TIMESTAMP=`date +%d.%m.%Y-%H.%M.%S`

# Create backup
$MONGODUMP_PATH -d $1

# Add timestamp to backup
mv dump $1-$TIMESTAMP
tar -zcf $1-$TIMESTAMP.tar.gz $1-$TIMESTAMP
rm -rf $1-$TIMESTAMP