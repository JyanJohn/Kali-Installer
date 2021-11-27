# Kali Linux installer for Termux
# Written by JyanJohn on Visual Studio Code
# Build Date : 11-27-21
# If there are problems, open a issue in GitHub


# Make sures the system is up to date
# and installs PRoot-Distro if not installed
function install_deps(){
    echo "Kali Linux Installer For Termux -- JyanJohn"
    echo ""
    echo -ne "\e[93m\e[1m[+] Updating Termux"
    apt update
    apt upgrade -y
    apt install proot-distro wget
}

# Copy and paste 'kali.sh'
function install(){
    clear
    echo "Copying 'kali.sh' from src..."
    cp -b src/kali.sh -r $PREFIX/etc/proot-distro
    echo "Installing Kali Linux"
    echo "If you face any errors"
    echo "Just type proot-distro install kali"
    sleep 5
    proot-distro install kali
}

# Installs Desktop and VNC for Kali
function devnc(){
    clear
    echo "Preparing some files..."
    cp -b src/desktopenv/kali-de.sh -r $PREFIX/var/lib/proot-distro/installed-rootfs/kali/root/
}

# Log into Kali and HOPEFULLY works
function proot(){
    clear
    proot-distro login kali -- chmod 755 /root/kali-de.sh
    proot-distro login kali -- bash /root/kali-de.sh
}

# Main Function
function main(){
    install_deps
    install
    devnc
    proot
    clear
    echo "Now Type proot-distro login kali"
    echo ""
    echo "Wohoo! Kali is Succesfully installed!"
    echo ""
    echo "To start desktop type"
    echo "vncserver -xstartup /usr/bin/xfce4-session"
    echo ""
    echo "[!] IMPORTANT: When starting VNC wait dont exit for 30 seconds or Kali will crash."
}

# Main Argument
main
