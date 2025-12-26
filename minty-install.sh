#!/bin/bash
script_information(){
    echo "
    #   *************************************************************************************#
    #   my-minty-setup
    #   Author: Mason Jennings
    #   GitHub: https://github.com/masonj5002/my-minty-setup
    #   *************************************************************************************#
    #   This script automates basic software install and config settings on Linux Mint 22.2  
    #   Cinnamon (and similar) systems.
    #   *************************************************************************************#
    "
}

#   --- Variables ---   #
APT_REMOVE_PACKAGES=(
    "cups-browsed"
)

APT_INSTALL_PACKAGES=(
    "chromium"
    "spotify-client"
    "ttf-mscorefonts-installer"
    "gimp"
    "git"
    "clang"
    "clang-format"
    "numlockx"                          # *Enables numlock on boot
    "fastfetch"
    # "neofetch"                          # *24.04 and lower, use `fastfetch` for higher
    # "curl"                              # *Already installed on 22.2
    # "flatpak"                           # *Already installed on 22.2
)

FLATPAK_APPS_FLATHUB=(
    "com.github.tchx84.Flatseal"
    "com.usebottles.bottles"
    "org.kde.kolourpaint"
    "com.tomjwatson.Emote"
)

NOT_DEB_FILES_TO_DOWNLOAD=(
    "https://www.wizard101.com/downloadGame/OtherDownload"
    "https://cdn.toontownrewritten.com/launcher/linux/launcher.flatpakref"
)

DEBS_TO_DOWNLOAD=(
    "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
    "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
    "https://zoom.us/client/latest/zoom_amd64.deb"
    # Android Studio
)

#   --- Functions ---   #
update_system() {
    echo "**Updating package lists..."
    apt update
    echo "**Upgrading system"
    apt upgrade -y
}

install_apt_packages() {
    echo "**Updating package lists..."
    apt update

    for pkg in "$APT_INSTALL_PACKAGES"; do
        echo "**Installing $pkg..."
        apt install $pkg -y
    done
}

apply_fastly_servers() { # Linux Mint 22.2 only (possible access for other versions)
}

apply_firefox_smooth_scrolling() { # Linux Mint only
}

#   --- MAIN ---   #
script_information
sleep 1

echo "**Welcome, $(whoami)!**
"
sleep 1
echo "**Starting Linux Mint script setup...**"
sleep 0.5
sudo -v                                 # Access for 5 minutes -- change to sudo su onces everything works
sleep 0.5

echo "
**Installing Updates...**"
sleep 0.5
update_system
sleep 0.5

echo "
**Installing APT Packages**"
sleep 0.5
install_apt_packages
sleep 0.5

echo "
**Complete.**
**Enjoy your machine!**"
sleep 1
exit
echo "
** Reboot now? (Y/n)** "
