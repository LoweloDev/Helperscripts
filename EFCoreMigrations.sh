#!/usr/bin/env bash

path=$(realpath ".")
uuid=$("" | uuidgen)

echo "If this is not the path of your root, please open migrations.sh and change it:"
echo $path
echo $uuid

#read migrationsName

dotnet ef migrations add $uuid