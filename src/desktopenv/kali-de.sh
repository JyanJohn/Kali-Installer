# Kali Desktop Installer
# Written by JyanJohn on Visual Studio Code

# Make sure Kali is Up-to-date
function update(){
    clear
    echo "Updating Kali Linux (Do Not Exit Yet)"
    sudo apt update
    sudo apt upgrade -y 
}

# Installs neccesarry files
function devnc(){
    clear
    echo "Installing XFCE and TigerVNC"
    sudo apt install kali-desktop-xfce tigervnc-standalone-server -y
    echo "Installing ZSH and Kali-Tweaks"
    sudo apt install zsh kali-tweaks -y 
}

# Main Function
function main(){
    update
    devnc
    clear
}

# Main Argument
main