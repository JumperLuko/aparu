#!/bin/bash

echo "Installing aparu"
sudo cp ./aparu.sh /usr/bin/aparu
sudo chmod +x /usr/bin/aparu
sudo ln -s /usr/bin/aparu /usr/bin/apr
sudo cp ./aparu.bash /usr/share/bash-completion/completions/aparu.bash