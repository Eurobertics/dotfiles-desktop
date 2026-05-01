#!/bin/bash

# dotfiles-desktop install script
# eurobertics | CachyOS / Hyprland
# Usage: ./install.sh

DOTFILES="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Installing dotfiles-desktop..."
echo "Source: $DOTFILES"
echo ""

# ==================
# Hyprland
# ==================
mkdir -p "$HOME/.config/hypr"
rm -rf "$HOME/.config/hypr/hyprland.conf"
rm -rf "$HOME/.config/hypr/hyprpaper.conf"
rm -rf "$HOME/.config/hypr/hyprlock.conf"
rm -rf "$HOME/.config/hypr/hypridle.conf"
ln -sf "$DOTFILES/hypr/hyprland.conf"  "$HOME/.config/hypr/hyprland.conf"
ln -sf "$DOTFILES/hypr/hyprpaper.conf" "$HOME/.config/hypr/hyprpaper.conf"
ln -sf "$DOTFILES/hypr/hyprlock.conf"  "$HOME/.config/hypr/hyprlock.conf"
ln -sf "$DOTFILES/hypr/hypridle.conf"  "$HOME/.config/hypr/hypridle.conf"
echo " [ok] Hyprland"

# ==================
# Waybar
# ==================
mkdir -p "$HOME/.config/waybar"
rm -f "$HOME/.config/waybar/config.jsonc"
rm -f "$HOME/.config/waybar/style.css"
ln -sf "$DOTFILES/waybar/config.jsonc" "$HOME/.config/waybar/config.jsonc"
ln -sf "$DOTFILES/waybar/style.css"    "$HOME/.config/waybar/style.css"
echo " [ok] Waybar"

# ==================
# Wofi
# ==================
mkdir -p "$HOME/.config/wofi"
rm -f "$HOME/.config/wofi/config"
rm -f "$HOME/.config/wofi/style.css"
ln -sf "$DOTFILES/wofi/config"    "$HOME/.config/wofi/config"
ln -sf "$DOTFILES/wofi/style.css" "$HOME/.config/wofi/style.css"
echo " [ok] Wofi"

# ==================
# Kitty
# ==================
mkdir -p "$HOME/.config/kitty"
rm -f "$HOME/.config/kitty/kitty.conf"
ln -sf "$DOTFILES/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"
echo " [ok] Kitty"

# ==================
# Fish
# ==================
mkdir -p "$HOME/.config/fish"
rm -f "$HOME/.config/fish/config.fish"
ln -sf "$DOTFILES/fish/config.fish" "$HOME/.config/fish/config.fish"
echo " [ok] Fish"

# ==================
# Mako
# ==================
mkdir -p "$HOME/.config/mako"
rm -f "$HOME/.config/mako/config"
ln -sf "$DOTFILES/mako/config" "$HOME/.config/mako/config"
echo " [ok] Mako"

# ==================
# Yazi
# ==================
mkdir -p "$HOME/.config/yazi/plugins"
rm -f "$HOME/.config/yazi/yazi.toml"
rm -f "$HOME/.config/yazi/package.toml"
rm -f "$HOME/.config/yazi/keymap.toml"
rm -rf "$HOME/.config/yazi/plugins/piper.yazi"
ln -sf "$DOTFILES/yazi/yazi.toml"    "$HOME/.config/yazi/yazi.toml"
ln -sf "$DOTFILES/yazi/package.toml" "$HOME/.config/yazi/package.toml"
ln -sf "$DOTFILES/yazi/keymap.toml" "$HOME/.config/yazi/keymap.toml"
ln -sf "$DOTFILES/yazi/plugins/piper.yazi" "$HOME/.config/yazi/plugins/piper.yazi"
echo " [ok] Yazi"

# ==================
# Neomutt
# ==================
mkdir -p "$HOME/.config/neomutt"
rm -f "$HOME/.config/neomutt/neomuttrc"
ln -sf "$DOTFILES/neomutt/neomuttrc" "$HOME/.config/neomutt/neomuttrc"
echo " [ok] Neomutt"

# ==================
# msmtp
# ==================
mkdir -p "$HOME/.config/msmtp"
rm -f "$HOME/.config/msmtp/config"
ln -sf "$DOTFILES/msmtp/config" "$HOME/.config/msmtp/config"
echo " [ok] msmtp"

# ==================
# goimapnotify
# ==================
mkdir -p "$HOME/.config/goimapnotify"
echo " [!] goimapnotify: Bitte account1.json.example und account2.json.example manuell anpassen"
echo "     cp $DOTFILES/goimapnotify/account1.json.example ~/.config/goimapnotify/account1.json"
echo "     cp $DOTFILES/goimapnotify/account2.json.example ~/.config/goimapnotify/account2.json"

# ==================
# vdirsyncer
# ==================
mkdir -p "$HOME/.config/vdirsyncer"
rm -f "$HOME/.config/vdirsyncer/config"
ln -sf "$DOTFILES/vdirsyncer/config" "$HOME/.config/vdirsyncer/config"
echo " [ok] vdirsyncer"

# ==================
# khal
# ==================
mkdir -p "$HOME/.config/khal"
rm -f "$HOME/.config/khal/config"
ln -sf "$DOTFILES/khal/config" "$HOME/.config/khal/config"
echo " [ok] khal"

# ==================
# khard
# ==================
mkdir -p "$HOME/.config/khard"
rm -f "$HOME/.config/khard/khard.conf"
ln -sf "$DOTFILES/khard/khard.conf" "$HOME/.config/khard/khard.conf"
echo " [ok] khard"

# ==================
# todoman
# ==================
mkdir -p "$HOME/.config/todoman"
rm -f "$HOME/.config/todoman/config.py"
ln -sf "$DOTFILES/todoman/config.py" "$HOME/.config/todoman/config.py"
echo " [ok] todoman"

# ==================
# systemd user units
# ==================
mkdir -p "$HOME/.config/systemd/user"
for unit in mbsync.service mbsync.timer vdirsyncer.service vdirsyncer.timer; do
    rm -f "$HOME/.config/systemd/user/$unit"
    ln -sf "$DOTFILES/systemd/user/$unit" "$HOME/.config/systemd/user/$unit"
done
echo " [ok] systemd user units"
echo " [!] Timer aktivieren mit:"
echo "     systemctl --user enable --now mbsync.timer"
echo "     systemctl --user enable --now vdirsyncer.timer"

# ==================
# local/bin scripts
# ==================
mkdir -p "$HOME/.local/bin"
if [ -d "$DOTFILES/local/bin" ] && [ "$(ls -A "$DOTFILES/local/bin")" ]; then
    for script in "$DOTFILES/local/bin/"*; do
        scriptname=$(basename "$script")
        rm -f "$HOME/.local/bin/$scriptname"
        ln -sf "$script" "$HOME/.local/bin/$scriptname"
        chmod +x "$script"
    done
    echo " [ok] local/bin scripts"
else
    echo " [-] local/bin: keine Scripts vorhanden"
fi

echo ""
echo "Done!"
echo ""
echo "Nächste Schritte:"
echo "  1. goimapnotify JSON-Dateien aus .example anpassen"
echo "  2. vdirsyncer config Platzhalter befüllen"
echo "  3. neomutt / msmtp Platzhalter befüllen (YOUR_EMAIL_1 etc.)"
echo "  4. Passwörter in gnome-keyring eintragen (siehe README.md)"
echo "  5. systemd timer aktivieren"
