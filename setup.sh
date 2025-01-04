#!/bin/bash

# detect the package manager
detect_package_manager() {
    if command -v apt-get &> /dev/null; then
        echo "apt-get"
    elif command -v yum &> /dev/null; then
        echo "yum"
    elif command -v dnf &> /dev/null; then
        echo "dnf"
    elif command -v pacman &> /dev/null; then
        echo "pacman"
    else
        echo -e "\e[31m[✗]\e[0m No supported package manager found."
        exit 1
    fi
}

# Function to install packages
install_packages() {
    local package_manager=$1
    shift
    local packages=("$@")

    case $package_manager in
        apt-get)
            sudo apt-get update
            sudo apt-get install -y "${packages[@]}"
            ;;
        yum)
            sudo yum install -y "${packages[@]}"
            ;;
        dnf)
            sudo dnf install -y "${packages[@]}"
            ;;
        pacman)
            sudo pacman -S --noconfirm "${packages[@]}"
            ;;
        *)
            echo -e "\e[31m[✗]\e[0m Unsupported package manager: $package_manager"
            exit 1
            ;;
    esac
}

# Main script
PACKAGE_MANAGER=$(detect_package_manager)

PACKAGES=("neovim" "silicon")

echo -e "\e[32m[✓]\e[0m Detected package manager: $PACKAGE_MANAGER"

install_packages "$PACKAGE_MANAGER" "${PACKAGES[@]}"

# Clone the repository and copy configs
echo -e "\e[32m[✓]\e[0m Cloning the repository..."
git clone https://github.com/neox1de/neovim-rust
mkdir -p ~/.config/nvim
cp -r neovim-rust/cfgs/* ~/.config/nvim

echo -e "\e[33m[!]\e[0m You can now remove the cloned repository if you want."
echo -e "\e[32m[✓]\e[0m Installation is over. Press Enter to continue..."
read -r

nvim

