#!/usr/bin/env bash
# Quick manual install for anyone not using the AUR package.
# Run this from inside the cloned portalfetch repo.
set -euo pipefail

if ! command -v anifetch &>/dev/null; then
    echo "anifetch isn't installed yet. Install it first:"
    echo "  Arch/AUR: paru -S anifetch-cli"
    echo "  Other:    https://github.com/Notenlish/anifetch"
    exit 1
fi

echo "Installing portalfetch to /usr/local/bin and /usr/local/share/portalfetch (needs sudo)..."

sudo install -Dm755 bin/portalfetch /usr/local/bin/portalfetch
sudo install -Dm644 assets/portal-green.gif /usr/local/share/portalfetch/portal-green.gif
sudo install -Dm644 assets/portal-blue.gif  /usr/local/share/portalfetch/portal-blue.gif
sudo install -Dm644 assets/portal-gold.gif  /usr/local/share/portalfetch/portal-gold.gif

echo "Done. Try: portalfetch proto"
