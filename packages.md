# Pakete – dotfiles-desktop
> CachyOS / Arch Linux | Stand: Mai 2026

Alle Pakete die für dieses Setup benötigt werden.
Händisch installieren – so lässt sich das auf andere Distros übertragen.

---

## System Basis

```bash
sudo pacman -S hyprland uwsm sddm
sudo pacman -S hyprpaper hyprlock hypridle
sudo pacman -S pipewire wireplumber pipewire-pulse
sudo pacman -S networkmanager bluez bluez-utils blueman
sudo pacman -S polkit-kde-agent xdg-desktop-portal-hyprland
sudo pacman -S xorg-xwayland wl-clipboard
sudo pacman -S power-profiles-daemon
sudo pacman -S flatpak
```

## Terminal & Shell

```bash
sudo pacman -S kitty
sudo pacman -S fish
sudo pacman -S neovim git nodejs npm
sudo pacman -S tmux
```

## Benachrichtigungen & UI

```bash
sudo pacman -S waybar mako libnotify
sudo pacman -S wofi
sudo pacman -S swayosd
```

## Dateimanager & Tools

```bash
sudo pacman -S yazi
sudo pacman -S ffmpegthumbnailer unar jq poppler
sudo pacman -S fd ripgrep fzf zoxide
sudo pacman -S p7zip unzip
```

## Medien & Dokumente

```bash
sudo pacman -S mpv
sudo pacman -S zathura zathura-pdf-mupdf
sudo pacman -S imv
sudo pacman -S glow
```

## Hardware

```bash
sudo pacman -S udiskie playerctl brightnessctl
sudo pacman -S wev libinput
sudo pacman -S dkms gcc clang
```

## Audio

```bash
sudo pacman -S pipewire wireplumber pipewire-pulse
```

> Audio ist Teil von System Basis – hier nochmal explizit aufgeführt.

## Screenshot & Recording

```bash
sudo pacman -S hyprshot wf-recorder
```

## Mail

```bash
sudo pacman -S neomutt isync msmtp msmtp-mta
```

## PIM (Kalender, Kontakte, Aufgaben)

```bash
sudo pacman -S khal khard vdirsyncer todoman
```

## Sicherheit & Schlüssel

```bash
sudo pacman -S gnome-keyring libsecret
sudo pacman -S pcsclite ccid yubikey-manager
```

## Docker

```bash
sudo pacman -S docker docker-compose
sudo systemctl enable --now docker
sudo usermod -aG docker $USER
```

## Gaming

```bash
sudo pacman -S steam lutris wine-mono
sudo pacman -S gamemode mangohud
sudo pacman -S envycontrol
```

> `envycontrol` für NVIDIA Optimus (Hybrid/Integrated/NVIDIA Modus)

---

## AUR (via paru – KEIN sudo!)

```bash
paru -S brave-bin
paru -S element-desktop
paru -S onlyoffice-bin
paru -S protonup-qt
paru -S protontricks
paru -S goimapnotify
paru -S sddm-astronaut-theme
paru -S tuxedo-drivers-dkms
```

> paru installieren falls nicht vorhanden:
> ```bash
> sudo pacman -S --needed base-devel
> git clone https://aur.archlinux.org/paru.git
> cd paru && makepkg -si
> ```

---

## Flatpak

```bash
flatpak install flathub com.yubico.yubioath
flatpak install flathub com.mastermindzh.tidal-hifi
```

---

## Systemd User Timer aktivieren

```bash
systemctl --user enable --now mbsync.timer
systemctl --user enable --now vdirsyncer.timer
```

---

## SDDM aktivieren

```bash
sudo systemctl enable sddm
```

---

## Tuxedo Keyboard (nach Kernel-Update neu kompilieren)

```bash
cd ~/src/tuxedo-drivers
git pull
make LLVM=1
sudo cp src/*.ko /lib/modules/$(uname -r)/kernel/drivers/
sudo depmod -a
sudo modprobe tuxedo_keyboard
```
