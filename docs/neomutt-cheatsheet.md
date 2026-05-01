# Neomutt Cheat Sheet
> eurobertics | mbsync + msmtp | brobertz.net + valueforce.de | Editor: nvim

---

## Modi

| Modus | Beschreibung |
|---|---|
| **Index** | Mailliste – dein Zuhause |
| **Pager** | Eine Mail lesen |
| **Compose** | Eine Mail schreiben / vorbereiten |

> Wie vim: Die Tasten bedeuten je nach Modus etwas anderes. `Enter` → Pager, `q` → zurück zum Index, `m` → Compose.

---

## Konten wechseln

| Taste | Aktion |
|---|---|
| `F1` | Wechsel zu brobertz.net (Standard) |
| `F2` | Wechsel zu valueforce.de |
| `c` + `?` | Ordner manuell wechseln (Liste aller Mailboxen) |

> `F1` / `F2` synchronisieren erst ausstehende Änderungen, schalten dann alles um (spoolfile, record, postponed, trash, sendmail, from) und springen direkt in den neuen INBOX.

---

## Index – Mailliste

| Taste | Aktion |
|---|---|
| `j / k` | Nächste / vorherige Mail |
| `Enter` | Mail öffnen (→ Pager) |
| `m` | Neue Mail schreiben (→ Compose) |
| `r` | Antworten (reply) |
| `R` | Allen antworten (reply-all) |
| `f` | Weiterleiten (forward) |
| `d` | Mail löschen (markiert, noch nicht weg) |
| `u` | Löschen rückgängig |
| `$` | Änderungen auf Disk schreiben (sync) |
| `t` | Mail taggen |
| `T` | Mails nach Muster taggen |
| `q` | Neomutt beenden |
| `?` | Alle Tasten anzeigen (Hilfe) |

> Mails sind nach Threads sortiert (`sort = threads`), neueste zuerst. `Enter` auf einem Thread öffnet die erste Mail, dann mit `n` durch die Antworten.

---

## Pager – Mail lesen

| Taste | Aktion |
|---|---|
| `j / k` | Nächste / vorherige Zeile |
| `Space` | Seite runter |
| `-` / `Backspace` | Seite hoch |
| `n` | Nächste Mail im Thread |
| `r` | Antworten |
| `R` | Allen antworten |
| `f` | Weiterleiten |
| `d` | Mail löschen |
| `q` / `i` | Zurück zum Index |

> Im Pager siehst du oben immer noch 10 Zeilen des Index (`pager_index_lines = 10`) – du verlierst nie die Übersicht.

---

## Compose – Mail schreiben

| Taste | Aktion |
|---|---|
| `e` | Mail-Body in nvim bearbeiten |
| `t` | Empfänger ändern (To) |
| `c` | CC hinzufügen |
| `b` | BCC hinzufügen |
| `s` | Betreff ändern |
| `a` | Anhang hinzufügen |
| `y` | Mail abschicken |
| `q` | Abbrechen (fragt nach) |

> Ablauf: `m` drücken → Empfänger + Betreff eintragen → nvim öffnet sich automatisch → Text schreiben → `:wq` → zurück in Compose → `y` zum Senden.

---

## Ordner & Navigation

| Taste | Aktion |
|---|---|
| `c` | Ordner wechseln (Eingabe oder `?` für Liste) |
| `=` | Prefix für folder (= `~/.local/share/mail`) |
| `!` | Kurzform für spoolfile (aktueller INBOX) |

> Beispiel: `c` + `=valueforce/INBOX` wechselt direkt in den valueforce INBOX ohne Macro.

---

## Ökosystem – wer macht was

| Komponente | Aufgabe |
|---|---|
| `goimapnotify` | Lauscht per IMAP IDLE auf neue Mails, triggert mbsync |
| `mbsync` | Synchronisiert IMAP-Server → lokale Maildir |
| `neomutt` | Liest lokale Maildir, öffnet nvim zum Schreiben |
| `msmtp` | Sendet Mails via SMTP (netcup, Port 465) |
| `gnome-keyring` | Speichert Passwörter, Zugriff via `secret-tool` |

---

## Maildir-Struktur

```
~/.local/share/mail/
├── brobertz/
│   ├── INBOX
│   ├── Sent
│   ├── Drafts
│   ├── Trash
│   └── Spam
└── valueforce/
    ├── INBOX
    ├── Sent
    ├── Drafts
    ├── Trash
    └── Spam
```

---

*Leader: keine | Neomutt | mbsync + msmtp | [github.com/eurobertics/dotfiles](https://github.com/eurobertics/dotfiles)*
