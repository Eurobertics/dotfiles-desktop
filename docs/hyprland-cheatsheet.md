# Hyprland Cheat Sheet
> eurobertics | CachyOS | Dwindle Layout | SUPER = Windows-Taste

---

## Grundlegendes

| Taste | Aktion |
|---|---|
| `SUPER + Q` | Terminal öffnen (kitty) |
| `SUPER + C` | Aktives Fenster schließen |
| `SUPER + R` | App-Launcher öffnen (wofi) |
| `SUPER + E` | Dateimanager öffnen (yazi in kitty) |
| `SUPER + L` | Bildschirm sperren (hyprlock) |
| `SUPER + M` | Hyprland beenden |

---

## Fokus wechseln

| Taste | Aktion |
|---|---|
| `SUPER + ←` | Fokus nach links |
| `SUPER + →` | Fokus nach rechts |
| `SUPER + ↑` | Fokus nach oben |
| `SUPER + ↓` | Fokus nach unten |

---

## Fenster-Layout (Dwindle)

| Taste | Aktion |
|---|---|
| `SUPER + V` | Floating toggle (tiled ↔ floating) |
| `SUPER + P` | Pseudotile toggle |
| `SUPER + J` | Split-Richtung wechseln (togglesplit) |

> Dwindle halbiert immer den Platz des **fokussierten** Fensters. Das aktive Fenster beim Öffnen bestimmt wo der neue Split entsteht. `SUPER + J` dreht die Richtung nachträglich um.

---

## Fenster bewegen

| Taste | Aktion | Modus |
|---|---|---|
| `SUPER + SHIFT + h` | Fenster nach links tauschen | Tiled (Grid-Operation) |
| `SUPER + SHIFT + l` | Fenster nach rechts tauschen | Tiled (Grid-Operation) |
| `SUPER + SHIFT + k` | Fenster nach oben tauschen | Tiled (Grid-Operation) |
| `SUPER + SHIFT + j` | Fenster nach unten tauschen | Tiled (Grid-Operation) |
| `SUPER + CTRL + h` | Fenster nach links verschieben | Floating (Pixel-Operation) |
| `SUPER + CTRL + l` | Fenster nach rechts verschieben | Floating (Pixel-Operation) |
| `SUPER + CTRL + k` | Fenster nach oben verschieben | Floating (Pixel-Operation) |
| `SUPER + CTRL + j` | Fenster nach unten verschieben | Floating (Pixel-Operation) |

> `SUPER + SHIFT + hjkl` tauscht das Fenster mit seinem Nachbarn im Grid – das ist eine **Grid-Operation**.
> `SUPER + CTRL + hjkl` verschiebt ein floating Fenster pixelweise – bei tiled Fenstern passiert nichts.

---

## Fenstergröße ändern (Resize-Submap)

| Taste | Aktion |
|---|---|
| `SUPER + ALT + R` | Resize-Modus betreten |
| `h` | Schmaler |
| `l` | Breiter |
| `k` | Kleiner (Höhe) |
| `j` | Größer (Höhe) |
| `Escape` | Resize-Modus verlassen |

> Im Resize-Modus funktionieren h/j/k/l mit Wiederholung (Taste halten = kontinuierlich).
> Funktioniert für tiled **und** floating Fenster.

---

## Maus

| Aktion | Funktion |
|---|---|
| `SUPER + LMB` drag | Fenster verschieben |
| `SUPER + RMB` drag | Fenstergröße ändern |
| `SUPER + Scroll ↓` | Nächster Workspace |
| `SUPER + Scroll ↑` | Vorheriger Workspace |

---

## Workspaces

| Taste | Aktion |
|---|---|
| `SUPER + 1–0` | Workspace 1–10 wechseln |
| `SUPER + SHIFT + 1–0` | Aktives Fenster zu Workspace 1–10 schieben |
| `SUPER + CTRL + 1–0` | Aktives Fenster zu Workspace 1–10 schieben ohne Ansicht zu wechslen |
| `SUPER + S` | Scratchpad ein-/ausblenden (special:magic) |
| `SUPER + SHIFT + S` | Aktives Fenster ins Scratchpad schieben |
| `SUPER + CTRL + S` | Aktives Fenster ins Scratchpad schieben ohne Scratchpad zu öffnen |

> Das Scratchpad (`special:magic`) ist ideal für ein dauerhaft bereitstehendes Terminal – `SUPER + S` lässt es über dem Desktop erscheinen und verschwinden wie eine Quake-Console.

---

## Screenshots

| Taste | Aktion |
|---|---|
| `Print` | Ganzen Bildschirm → `~/Bilder/Screenshots` |
| `SUPER + Print` | Aktives Fenster → `~/Bilder/Screenshots` |
| `SUPER + SHIFT + Print` | Bereich auswählen → `~/Bilder/Screenshots` |

---

## Medientasten

| Taste | Aktion |
|---|---|
| `XF86AudioRaiseVolume` | Lautstärke erhöhen (swayosd) |
| `XF86AudioLowerVolume` | Lautstärke senken (swayosd) |
| `XF86AudioMute` | Stummschalten toggle |
| `XF86AudioMicMute` | Mikrofon stummschalten toggle |
| `XF86MonBrightnessUp` | Helligkeit erhöhen (swayosd) |
| `XF86MonBrightnessDown` | Helligkeit senken (swayosd) |
| `XF86KbdLightOnOff` | Tastaturbeleuchtung toggle (kbtoggle) |
| `XF86KbdBrightnessUp` | Tastaturbeleuchtung heller (kblight up) |
| `XF86KbdBrightnessDown` | Tastaturbeleuchtung dunkler (kblight down) |
| `XF86AudioNext` | Nächster Track (playerctl) |
| `XF86AudioPrev` | Vorheriger Track (playerctl) |
| `XF86AudioPlay / Pause` | Play/Pause toggle (playerctl) |

---

## Modifier-Übersicht

| Modifier-Kombination | Kategorie |
|---|---|
| `SUPER` | Fokus, Apps, Workspaces |
| `SUPER + SHIFT` | Fenster bewegen (Grid) / Workspace zuweisen |
| `SUPER + CTRL` | Floating Fenster verschieben |
| `SUPER + ALT` | Resize-Modus |

---

*SUPER = Windows-Taste | Hyprland | CachyOS | [github.com/eurobertics/dotfiles](https://github.com/eurobertics/dotfiles)*
