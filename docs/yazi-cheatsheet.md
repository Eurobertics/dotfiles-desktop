# Yazi Cheat Sheet
> eurobertics | CachyOS | nvim + kitty + glow + zathura + imv + mpv

---

## Konzept

```
[ Parent ]  [ Current ]  [ Preview ]
```

> Drei Panels immer sichtbar. Navigation bewegt dich durch den Verzeichnisbaum. Rechts immer eine Vorschau der markierten Datei.

---

## Navigation

| Taste | Aktion |
|---|---|
| `j / k` | Datei/Ordner runter / hoch |
| `h` | Ins übergeordnete Verzeichnis (raus) |
| `l` | In Ordner wechseln / Datei öffnen |
| `Enter` | Datei öffnen / Ordner betreten |
| `gg` | Erste Datei in der Liste |
| `G` | Letzte Datei in der Liste |
| `H` | Seite hoch |
| `L` | Seite runter |
| `~` | Home-Verzeichnis |
| `-` | Vorheriges Verzeichnis (zurück) |
| `z` | Verzeichnis per fzf/zoxide springen |

---

## Dateien öffnen

| Taste | Aktion |
|---|---|
| `l` / `Enter` | Öffnen mit Standard-Opener |
| `o` | Öffnen mit Auswahl (welches Programm) |

### Deine Opener (aus yazi.toml)

| Dateityp | Programm |
|---|---|
| Text (`text/*`) | nvim |
| Markdown (`*.md`) | glow (mit Pager) |
| PDF | zathura |
| Bilder | imv |
| Video / Audio | mpv |
| Bearbeiten | nvim in kitty |

---

## Dateioperationen

| Taste | Aktion |
|---|---|
| `y` | Yank (kopieren, wie vim) |
| `x` | Cut (ausschneiden) |
| `p` | Paste (einfügen) |
| `P` | Paste und überschreiben ohne Nachfrage |
| `d` | Datei in Trash verschieben |
| `D` | Datei permanent löschen (ohne Trash!) |
| `a` | Neue Datei erstellen (mit `/` am Ende = Ordner) |
| `r` | Umbenennen |
| `;` | Shell-Befehl auf markierter Datei ausführen |
| `!` | Shell öffnen im aktuellen Verzeichnis |

> Tipp: `a` + Name ohne `/` = neue Datei. `a` + Name + `/` = neuer Ordner.

---

## Markieren (Select)

| Taste | Aktion |
|---|---|
| `Space` | Datei markieren / Markierung aufheben |
| `v` | Visual-Modus (wie vim, Bereich markieren) |
| `V` | Alle Dateien im Verzeichnis markieren |
| `Escape` | Alle Markierungen aufheben |

> Erst markieren, dann Operation – genau wie vim. Mehrere Dateien markieren, dann `y`, `x`, oder `d`.

---

## Suchen & Filtern

| Taste | Aktion |
|---|---|
| `/` | Suche vorwärts (Dateiname) |
| `?` | Suche rückwärts |
| `n` | Nächster Treffer |
| `N` | Vorheriger Treffer |
| `f` | Filter – nur passende Dateien anzeigen |
| `F` | Filter aufheben |
| `s` | Dateisuche im aktuellen Verzeichnis (fd) |
| `S` | Globale Suche (fd, rekursiv) |

---

## Dateieigenschaften & Rechte

| Taste | Aktion |
|---|---|
| `Space` + `m` | Eigenschaften anzeigen (Größe, Rechte, Datum) |
| `;` `chmod` | Rechte ändern via Shell-Befehl |

> Yazi hat kein eigenes chmod-Interface. Rechte änderst du mit `;` und dann `chmod 755 datei` – du bist direkt in der Shell des aktuellen Verzeichnisses.

---

## Tabs

| Taste | Aktion |
|---|---|
| `t` | Neuen Tab öffnen |
| `1–9` | Zu Tab 1–9 wechseln |
| `[` / `]` | Vorheriger / nächster Tab |
| `{` / `}` | Tab nach links / rechts verschieben |

> Tabs sind ideal für Kopieren zwischen zwei Verzeichnissen: Tab 1 = Quelle, Tab 2 = Ziel, markieren, `y`, Tab wechseln, `p`.

---

## Sortieren & Anzeige

| Taste | Aktion |
|---|---|
| `,` `m` | Nach Änderungsdatum sortieren |
| `,` `M` | Nach Änderungsdatum (umgekehrt) |
| `,` `s` | Nach Größe sortieren |
| `,` `n` | Nach Name sortieren |
| `.` | Versteckte Dateien ein-/ausblenden |

---

## Sonstiges

| Taste | Aktion |
|---|---|
| `q` | Yazi beenden |
| `Q` | Yazi beenden + ins zuletzt besuchte Verzeichnis wechseln |
| `F1` | Hilfe (alle Keybinds) |
| `~` | Home-Verzeichnis |
| `T` | Terminal im aktuellen Verzeichnis öffnen |

---

*Yazi | CachyOS | piper-Plugin für Markdown-Preview | [github.com/eurobertics/dotfiles](https://github.com/eurobertics/dotfiles)*
