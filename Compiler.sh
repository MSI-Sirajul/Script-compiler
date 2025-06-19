#!/data/data/com.termux/files/usr/bin/bash

# Colors
RED="\e[31m"
GREEN="\e[32m"
CYAN="\e[36m"
YELLOW="\e[33m"
RESET="\e[0m"

# ASCII Banner
clear
echo -e "${CYAN}"
echo ' ███████╗██╗  ██╗ ██████╗ '
echo ' ██╔════╝██║  ██║██╔════╝ '
echo ' ███████╗███████║██║MSI-Sirajul '
echo ' ╚════██║██╔══██║██║v.1.2 '
echo ' ███████║██║  ██║╚██████╗ '
echo ' ╚══════╝╚═╝  ╚═╝ ╚═════╝ '
echo -e "${YELLOW}©msi${RESET}"
echo ""

# Prompt for the file to compile
echo -e "${GREEN}[?]Enter File Directory${RESET}"
read -p ": " filepath

# Check if file exists
if [ ! -f "$filepath" ]; then
    echo -e "${RED}[✗] File not found!  Try again.${RESET}"
    exit 1
fi

# Define correct Termux shebang
termux_shebang="#!/data/data/com.termux/files/usr/bin/bash"

# Read first line of the file
first_line=$(head -n 1 "$filepath")

# Insert shebang if missing
if [[ "$first_line" != "$termux_shebang" ]]; then
    echo -e "${YELLOW}[*] Adding correct shebang to the script...${RESET}"
    tmpfile=$(mktemp)
    echo "$termux_shebang" > "$tmpfile"
    cat "$filepath" >> "$tmpfile"
    mv "$tmpfile" "$filepath"
fi

# Extract filename without extension
filename=$(basename "$filepath" .sh)

# Compile using shc with custom output
echo -e "${CYAN}[*] Compiling '$filename' ...${RESET}"
shc -f "$filepath" -o "$filename"

# Remove unnecessary file
rm -f "${filepath}.x.c"

# Check if compiled file exists
if [ -f "$filename" ]; then
    echo -e "${GREEN}[✓] Compilation complete!${RESET}"
    echo -e "${YELLOW}Output file: ${filename}${RESET}"
else
    echo -e "${RED}[✗] Compilation failed.${RESET}"
fi
