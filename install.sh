#!/bin/bash

echo "Installing aparu"
sudo cp ./aparu.sh /usr/bin/aparu
sudo chmod +x /usr/bin/aparu
sudo cp ./aparu.bash /usr/share/bash-completion/completions/aparu.bash