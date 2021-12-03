#!/bin/sh

# This is the bare minimum to run in development. For full list of flags,
# run ./vigilate -help

./cmd/web/vigilate \
-dbuser='frankie' \
-dbpass='password' \
-dbhost='db' \
-pusherHost='ipe' \
-pusherKey='abc123' \
-pusherSecret='123abc' \
-pusherApp="1" \
-pusherPort="4001" \
-pusherSecure=false
