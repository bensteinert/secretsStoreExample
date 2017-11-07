#!/usr/bin/env bash

#https://stackoverflow.com/questions/1378274/in-a-bash-script-how-can-i-exit-the-entire-script-if-a-certain-condition-occurs/25515370#25515370
yell() { echo "$0: $*" >&2; }
die() { yell "$*"; exit 111; }
try() { "$@" || die "cannot $*"; }

try ansible-vault encrypt ./ignoreme_credentials_store_decrypted --output ./credentials_store
read -p "Delete decrypted version now? " -r

if [[ $REPLY =~ ^[Yy]$ ]]
then
    rm ./ignoreme_credentials_store_decrypted
fi


