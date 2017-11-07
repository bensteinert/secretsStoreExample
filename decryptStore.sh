#!/usr/bin/env bash

#https://stackoverflow.com/questions/1378274/in-a-bash-script-how-can-i-exit-the-entire-script-if-a-certain-condition-occurs/25515370#25515370
yell() { echo "$0: $*" >&2; }
die() { yell "$*"; exit 111; }
try() { "$@" || die "cannot $*"; }

try ansible-vault decrypt ./credentials_store --output ./ignoreme_credentials_store_decrypted
open ./ignoreme_credentials_store_decrypted