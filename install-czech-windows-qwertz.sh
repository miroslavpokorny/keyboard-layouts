#!/bin/bash
#
# Downloads the latest Czech Windows QWERTZ keyboard layout from GitHub
# and installs it to the macOS keyboard layouts directory.
#
# Usage:
#   curl -fsSL https://raw.githubusercontent.com/miroslavpokorny/keyboard-layouts/main/install-czech-windows-qwertz.sh | bash
#   or
#   ./install-czech-windows-qwertz.sh
#

set -euo pipefail

REPO_URL="https://raw.githubusercontent.com/miroslavpokorny/keyboard-layouts/main"
LAYOUT_FILE="Czech Windows QWERTZ.keylayout"
INSTALL_DIR="$HOME/Library/Keyboard Layouts"

echo "Installing keyboard layout: $LAYOUT_FILE"

# Download the latest keyboard layout to a temp directory first
TEMP_DIR=$(mktemp -d)
trap 'rm -rf "$TEMP_DIR"' EXIT

echo "Downloading from GitHub..."
ENCODED_FILE="${LAYOUT_FILE// /%20}"
if ! curl -fsSL "$REPO_URL/$ENCODED_FILE" -o "$TEMP_DIR/$LAYOUT_FILE"; then
    echo "Error: Failed to download the keyboard layout." >&2
    exit 1
fi

# Install only after successful download
mkdir -p "$INSTALL_DIR"
cp "$TEMP_DIR/$LAYOUT_FILE" "$INSTALL_DIR/$LAYOUT_FILE"

echo "Installed to: $INSTALL_DIR/$LAYOUT_FILE"
echo ""
echo "Please log out and log back in (or restart) for the layout to appear in System Settings."
echo "Then go to: System Settings > Keyboard > Input Sources > Edit... > + to add it."
