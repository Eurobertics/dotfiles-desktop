function fish_prompt
    # Exit code des letzten Befehls merken
    set -l last_status $status

    # Farben (aus Waybar-Theme)
    set -l mint        '\e[38;2;52;211;153m'
    set -l purple      '\e[38;2;192;132;252m'
    set -l green       '\e[38;2;52;211;153m'
    set -l yellow      '\e[38;2;251;191;36m'
    set -l red         '\e[38;2;248;113;113m'
    set -l slate       '\e[38;2;148;163;184m'
    set -l reset       '\e[0m'

    # Hintergrundfarben (leichte Segmente)
    set -l bg_mint     '\e[48;2;8;33;24m'
    set -l bg_purple   '\e[48;2;30;15;45m'
    set -l bg_green    '\e[48;2;8;33;24m'
    set -l bg_yellow   '\e[48;2;40;30;5m'
    set -l bg_red      '\e[48;2;40;10;10m'

    # ── ZEILE 1: BOGEN OBEN + USERNAME SEGMENT ───────────────
    echo -en "$slate╭─$reset"
    echo -n (set_color --bold)
    echo -en "$bg_mint$mint 󰀄 $USER $reset"

    echo -en "$slate ›$reset "

    # ── VERZEICHNIS SEGMENT ───────────────────────────────────
    # Pfad kürzen: wenn mehr als 4 Ebenen tief, mit … abkürzen
    set -l cwd (string replace $HOME '~' $PWD)
    set -l parts (string split '/' $cwd)
    set -l depth (count $parts)

    if test $depth -gt 4
        # Letzten 2 Teile behalten, mit … andeuten
        set -l last2 $parts[-2] $parts[-1]
        set cwd "~/…/"(string join '/' $last2)
    end

    echo -en "$bg_purple$purple 󰉋 $cwd $reset"

    # ── GIT SEGMENT ───────────────────────────────────────────
    if command -sq git
        set -l git_root (git rev-parse --show-toplevel 2>/dev/null)
        if test -n "$git_root"
            set -l branch (git symbolic-ref --short HEAD 2>/dev/null; or git rev-parse --short HEAD 2>/dev/null)

            # Zählen: staged, unstaged, untracked
            set -l staged   (git diff --cached --name-only 2>/dev/null | count)
            set -l unstaged (git diff --name-only 2>/dev/null | count)
            set -l untracked (git ls-files --others --exclude-standard 2>/dev/null | count)

            # Status-String zusammenbauen
            set -l git_info " $branch"
            if test $staged -gt 0 -o $unstaged -gt 0
                set git_info "$git_info +$staged ~$unstaged"
            end
            if test $untracked -gt 0
                set git_info "$git_info ?$untracked"
            end

            # Farbe je nach Zustand (Priorität: untracked > changes > clean)
            echo -en " $slate›$reset "
            if test $untracked -gt 0
                echo -en "$bg_red$red$git_info $reset"
            else if test $staged -gt 0 -o $unstaged -gt 0
                echo -en "$bg_yellow$yellow$git_info $reset"
            else
                echo -en "$bg_green$green$git_info $reset"
            end
        end
    end

    # ── ZWEITE ZEILE: BOGEN UNTEN + # SYMBOL ─────────────────
    echo ""
    if test $last_status -ne 0
        echo -en "$slate╰─ $red#$reset "
    else
        echo -en "$slate╰─ $green#$reset "
    end
end
