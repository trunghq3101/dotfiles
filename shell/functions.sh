#! /bin/sh

# Encrypt secrets
endot() {
    cd ~/dotfiles
    tar czf ssh.tar.gz ssh 
    gpg -er trunghq3101@gmail.com ssh.tar.gz
    rm ssh.tar.gz
    cd -
    echo "Done!"
}

# Decrypt secrets
dedot() {
    cd ~/dotfiles
    gpg -do ssh.tar.gz ssh.tar.gz.gpg
    tar xvf ssh.tar.gz
    rm ssh.tar.gz
    cd -
    echo "Done!"
}

# Import SSH
import_ssh() {
    dedot
    cp -afi ssh/. ~/.ssh/
    chmod -R 0700 ssh ~/.ssh
}