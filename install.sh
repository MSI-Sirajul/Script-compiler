#!/data/data/com.termux/files/usr/bin/bash

# Colors
RED='\033[1;31m'      # Red
GREEN='\033[1;32m'    # Green
YELLOW='\033[1;33m'   # Yellow
BLUE='\033[1;34m'     # Blue
RESET='\033[0m'       # NoColor

# Required packages
packages=("curl" "git" "clang" "shc")

# Clear screen and update system
clear
sleep 0.1
echo -e "${RED}Updating OS ...${RESET}"
pkg update -y >/dev/null 2>&1
pkg upgrade -y >/dev/null 2>&1

# Install required packages
clear
echo -e "${BLUE}[⚙] Installing required packages:${RESET}"
sleep 0.5

for pkg in "${packages[@]}"; do
    if command -v "$pkg" >/dev/null 2>&1; then
        echo -e "${GREEN}[✓] Required Package '$pkg' already installed.${RESET}"
        version=$($pkg --version 2>/dev/null | head -n 1)
        echo -e "  ${version}\n"
    else
        echo -e "${YELLOW}[⚒] Installing $pkg...${RESET}"
        pkg install "$pkg" -y >/dev/null 2>&1
        if command -v "$pkg" >/dev/null 2>&1; then
            echo -e "${GREEN}[✓] $pkg installation completed.${RESET}\n"
        else
            echo -e "${RED}[✗] Failed to install $pkg.${RESET}\n"
        fi
    fi
done

# Download compile.sh from GitHub repo
echo -e "${BLUE}[↓] Downloading compiler ...${RESET}"
curl -fsSL https://raw.githubusercontent.com/MSI-Sirajul/Script-compiler/main/compile -o $PREFIX/bin/compile

# Make it executable
chmod 777 $PREFIX/bin/compile

# Completion message
echo -e "\n${GREEN}All Done ✅ Just use 'compile' to run.${RESET}\n"
