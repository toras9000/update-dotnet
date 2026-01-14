#!/usr/bin/env bash

if [ "$(whoami)" != "root" ]; then
    exit
fi

script_dir=$(cd $(dirname $0);pwd)

rm -rf /usr/share/dotnet 2> /dev/null

wget https://dot.net/v1/dotnet-install.sh -O "$script_dir/dotnet-install.sh"

bash "$script_dir/dotnet-install.sh" --version latest --install-dir /usr/share/dotnet
