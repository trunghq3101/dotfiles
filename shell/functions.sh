#! /bin/sh

# Encrypt secrets
endot() {
    tar czf ssh.tar.gz ssh 
    gpg -er trunghq3101@gmail.com ssh.tar.gz
    rm ssh.tar.gz
    echo "Done!"
}

# Decrypt secrets
dedot() {
    gpg -do ssh.tar.gz ssh.tar.gz.gpg
    tar xvf ssh.tar.gz
    rm ssh.tar.gz
    echo "Done!"
}