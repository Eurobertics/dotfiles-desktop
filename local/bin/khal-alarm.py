#!/usr/bin/env python3
"""
khal-alarm.py — Liest VALARM aus vdir-Kalender und feuert notify-send
"""

import os
import subprocess
from datetime import datetime, timezone
from pathlib import Path

try:
    from icalendar import Calendar
except ImportError:
    print("Bitte 'python-icalendar' installieren (pip/pacman)")
    exit(1)

# ── Konfiguration ────────────────────────────────────────────────
VDIR_PATHS = [
    Path.home() / ".local/share/calendars/personal",  # anpassen!
]
LOOKAHEAD_MINUTES = 60   # Events in den nächsten X Minuten prüfen
URGENCY = "critical"     # low | normal | critical
# ─────────────────────────────────────────────────────────────────

def notify(summary, body="", urgency=URGENCY):
    subprocess.run([
        "notify-send",
        "-u", urgency,
        "-a", "khal",
        "-i", "x-office-calendar",
        summary,
        body,
    ])

def parse_duration(trigger):
    """Gibt timedelta aus VALARM TRIGGER zurück."""
    from icalendar.prop import vDuration, vDatetime
    if hasattr(trigger, 'dt'):
        return trigger.dt
    return trigger

def check_calendars():
    now = datetime.now(timezone.utc)

    for vdir in VDIR_PATHS:
        if not vdir.exists():
            continue
        for ics_file in vdir.rglob("*.ics"):
            try:
                cal = Calendar.from_ical(ics_file.read_bytes())
            except Exception:
                continue

            for component in cal.walk("VEVENT"):
                dtstart = component.get("DTSTART")
                if not dtstart:
                    continue
                event_start = dtstart.dt
                # naive datetime → UTC annehmen
                if not hasattr(event_start, 'tzinfo') or event_start.tzinfo is None:
                    from datetime import date
                    if isinstance(event_start, date) and not isinstance(event_start, datetime):
                        continue  # Ganztages-Events überspringen
                    event_start = event_start.replace(tzinfo=timezone.utc)

                summary = str(component.get("SUMMARY", "Kein Titel"))

                for alarm in component.walk("VALARM"):
                    trigger = alarm.get("TRIGGER")
                    if not trigger:
                        continue
                    td = parse_duration(trigger)
                    if isinstance(td, datetime):
                        alarm_time = td
                    else:
                        alarm_time = event_start + td  # td ist negativ (vor dem Event)

                    diff_minutes = (alarm_time - now).total_seconds() / 60

                    # Alarm feuern wenn er in den nächsten ~2 Minuten fällig ist
                    if -1 <= diff_minutes <= 2:
                        minutes_to_event = int((event_start - now).total_seconds() / 60)
                        body = f"In {minutes_to_event} Minuten" if minutes_to_event > 0 else "Jetzt!"
                        notify(f"🔔 {summary}", body)

if __name__ == "__main__":
    check_calendars()
