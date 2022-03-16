#!/bin/bash

echo "Installing aparu"

rmIfFileExists(){
    if ! [ -e "$2" ]; then
        `$1`
    else
        sudo rm $2
        `$1`
    fi
}


rmIfFileExists "sudo cp ./aparu.sh /usr/bin/aparu" "/usr/bin/aparu"
sudo chmod +x /usr/bin/aparu
rmIfFileExists "sudo cp ./aparu.bash /usr/share/bash-completion/completions/aparu.bash" "/usr/share/bash-completion/completions/aparu.bash"

rmIfFileExists "sudo ln -s /usr/bin/aparu /usr/bin/apr" "/usr/bin/apr"
rmIfFileExists "sudo ln -s /usr/share/bash-completion/completions/aparu.bash /usr/share/bash-completion/completions/apr.bash" "/usr/share/bash-completion/completions/apr.bash"


# if ! [ -e /usr/bin/apr ]
#     sudo ln -s /usr/bin/aparu /usr/bin/apr
# else
#     sudo rm /usr/bin/apr
#     sudo ln -s /usr/bin/aparu /usr/bin/apr
# fi