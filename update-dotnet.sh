#!/usr/bin/env bash

if [ "$(whoami)" != "root" ]; then
    exit
fi

set -eu

script_dir=$(cd $(dirname $0);pwd)

echo Download install script
wget https://dot.net/v1/dotnet-install.sh -O "$script_dir/dotnet-install.sh"

echo Delete existing dotnet
rm -rf /usr/share/dotnet 2> /dev/null

echo Install dotnet
bash "$script_dir/dotnet-install.sh" --version latest --install-dir /usr/share/dotnet
