# ─────────────────────────────────────────────────────────────
#  Fish Color Theme — OneDark Neon
#  Passend zu kitty.conf (EmberNet) + Waybar
#  Einbinden: source ~/.config/fish/conf.d/fish_colors.fish
#  oder direkt speichern als ~/.config/fish/conf.d/fish_colors.fish
# ─────────────────────────────────────────────────────────────

# ── SYNTAX HIGHLIGHTING ───────────────────────────────────────
# Bekannte Befehle → Cyan
set -g fish_color_command                00d4ff --bold
# Unbekannte Befehle → Rot
set -g fish_color_error                  f87171
# Parameter & Argumente → helles Slate (nicht zu grell)
set -g fish_color_param                  e2e8f0
# Optionen (--flags) → Purple
set -g fish_color_option                 c084fc
# Strings in Anführungszeichen → Grün
set -g fish_color_quote                  34d399
# Redirect-Operatoren (>, >>, |) → Yellow
set -g fish_color_redirection            fbbf24
# Trennzeichen (;, &) → Slate
set -g fish_color_end                    94a3b8
# Kommentare → dunkelgrau
set -g fish_color_comment                374151
# Gültige Pfade (unterstrichen) → Purple
set -g fish_color_valid_path             c084fc --underline
# Operatoren (&&, ||) → Cyan
set -g fish_color_operator               00d4ff
# Escape-Sequenzen (\n, \t etc.) → Yellow
set -g fish_color_escape                 fbbf24
# Variablen ($VAR) → Orange/Amber
set -g fish_color_variable               fb923c

# ── AUTOSUGGESTIONS ───────────────────────────────────────────
# Gedimmtes Slate — sichtbar aber nicht ablenkend
set -g fish_color_autosuggestion         374151

# ── AUSWAHL / SEARCH ──────────────────────────────────────────
# Markierter Text
set -g fish_color_selection              --background=6C5CE7 ffffff
# Ctrl+R Suche im Verlauf
set -g fish_color_search_match           --background=374151 fbbf24

# ── PAGER (man, Completions-Liste) ────────────────────────────
set -g fish_pager_color_prefix           00d4ff --bold
set -g fish_pager_color_completion       e2e8f0
set -g fish_pager_color_description      94a3b8
set -g fish_pager_color_progress         c084fc --background=1a1a2e
set -g fish_pager_color_selected_prefix        00d4ff --bold
set -g fish_pager_color_selected_completion    ffffff
set -g fish_pager_color_selected_description   e2e8f0 --background=374151

# ── LS_COLORS (klassisches ls) ────────────────────────────────
# Format: Typ=ANSI-Code
# di=Verzeichnis, fi=Datei, ln=Symlink, ex=Ausführbar
# Farb-Codes: 34=blue, 35=magenta, 36=cyan, 32=green, 33=yellow, 31=red
set -gx LS_COLORS \
    "di=38;2;96;165;250:"\
    "fi=38;2;226;232;240:"\
    "ln=38;2;0;212;255;4:"\
    "ex=38;2;52;211;153;1:"\
    "*.sh=38;2;52;211;153;1:"\
    "*.fish=38;2;52;211;153;1:"\
    "*.py=38;2;0;212;255:"\
    "*.js=38;2;251;191;36:"\
    "*.ts=38;2;96;165;250:"\
    "*.json=38;2;251;191;36:"\
    "*.yaml=38;2;251;191;36:"\
    "*.yml=38;2;251;191;36:"\
    "*.toml=38;2;251;191;36:"\
    "*.md=38;2;226;232;240:"\
    "*.html=38;2;251;146;60:"\
    "*.css=38;2;192;132;252:"\
    "*.rs=38;2;251;146;60:"\
    "*.go=38;2;0;212;255:"\
    "*.zip=38;2;248;113;113:"\
    "*.tar=38;2;248;113;113:"\
    "*.gz=38;2;248;113;113:"\
    "*.zst=38;2;248;113;113:"\
    "*.img=38;2;248;113;113:"\
    "*.iso=38;2;248;113;113:"\
    "*.png=38;2;192;132;252:"\
    "*.jpg=38;2;192;132;252:"\
    "*.jpeg=38;2;192;132;252:"\
    "*.webp=38;2;192;132;252:"\
    "*.svg=38;2;192;132;252:"\
    "*.mp4=38;2;167;139;250:"\
    "*.mkv=38;2;167;139;250:"\
    "*.mp3=38;2;167;139;250:"\
    "*.flac=38;2;167;139;250:"\
    "*.pdf=38;2;248;113;113:"\
    "*.conf=38;2;148;163;184:"\
    "*.cfg=38;2;148;163;184:"\
    "or=38;2;248;113;113;1:"\
    "mi=38;2;248;113;113;1:"\
    "pi=38;2;251;191;36:"\
    "so=38;2;0;212;255:"\
    "bd=38;2;251;146;60:"\
    "cd=38;2;251;146;60:"

# ── EZA_COLORS (eza) ─────────────────────────────────────────
# eza-spezifische Schlüssel — überschreiben/ergänzen LS_COLORS
# Datei-/Verzeichnistypen
set -gx EZA_COLORS \
    "di=38;2;96;165;250:"\
    "ln=38;2;0;212;255;4:"\
    "ex=38;2;52;211;153;1:"\
    "fi=38;2;226;232;240:"\
    "or=38;2;248;113;113;1:"\
    "mi=38;2;248;113;113;1:"\
    "*.sh=38;2;52;211;153;1:"\
    "*.fish=38;2;52;211;153;1:"\
    "*.py=38;2;0;212;255:"\
    "*.js=38;2;251;191;36:"\
    "*.ts=38;2;96;165;250:"\
    "*.json=38;2;251;191;36:"\
    "*.yaml=38;2;251;191;36:"\
    "*.yml=38;2;251;191;36:"\
    "*.toml=38;2;251;191;36:"\
    "*.md=38;2;226;232;240:"\
    "*.html=38;2;251;146;60:"\
    "*.css=38;2;192;132;252:"\
    "*.rs=38;2;251;146;60:"\
    "*.go=38;2;0;212;255:"\
    "*.zip=38;2;248;113;113:"\
    "*.tar=38;2;248;113;113:"\
    "*.gz=38;2;248;113;113:"\
    "*.zst=38;2;248;113;113:"\
    "*.img=38;2;248;113;113:"\
    "*.iso=38;2;248;113;113:"\
    "*.png=38;2;192;132;252:"\
    "*.jpg=38;2;192;132;252:"\
    "*.jpeg=38;2;192;132;252:"\
    "*.webp=38;2;192;132;252:"\
    "*.svg=38;2;192;132;252:"\
    "*.mp4=38;2;167;139;250:"\
    "*.mkv=38;2;167;139;250:"\
    "*.mp3=38;2;167;139;250:"\
    "*.flac=38;2;167;139;250:"\
    "*.pdf=38;2;248;113;113:"\
    "*.conf=38;2;148;163;184:"\
    "*.cfg=38;2;148;163;184:"\
    "ur=38;2;52;211;153:"\
    "uw=38;2;248;113;113:"\
    "ux=38;2;251;191;36:"\
    "ue=38;2;251;191;36:"\
    "gr=38;2;52;211;153:"\
    "gw=38;2;248;113;113:"\
    "gx=38;2;251;191;36:"\
    "tr=38;2;52;211;153:"\
    "tw=38;2;248;113;113:"\
    "tx=38;2;251;191;36:"\
    "da=38;2;148;163;184:"\
    "sn=38;2;52;211;153:"\
    "sb=38;2;96;165;250:"\
    "uu=38;2;0;212;255:"\
    "un=38;2;248;113;113:"\
    "lc=38;2;0;212;255;4:"\
    "lp=38;2;148;163;184:"\
    "ga=38;2;52;211;153:"\
    "gm=38;2;251;191;36:"\
    "gd=38;2;248;113;113:"\
    "gv=38;2;0;212;255:"\
    "gt=38;2;148;163;184:"
