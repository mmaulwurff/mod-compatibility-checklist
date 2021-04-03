# Mod Compatibility Checklist

Mod Compatibility Checklist (MCC) is a GZDoom add-on that is designed to:
- help modders make more robust mods;
- help players make more elaborate bug reports.

MCC consists of two parts: logging suspicious events and simulating them for
testing purposes.

This add-on is a part of [m8f's doctor's bag](https://mmaulwurff.github.io/pages/doctors-bag).

## Features

### Logging

- if player becomes NULL;
- if thing in WorldEvent becomes NULL;
- if an enemy or a weapon doesn't have a tag;
- if player's current weapon is NULL;
- if player has no weapons;
- if an event handler is defined but not used.

Logger is set up so it catches suspicious events from almost all other event
handlers. If MCC can't catch events from an event handler, a notice to change
load order is displayed.

### Simulating

- Critical: make player NULL (even base game doesn't survive this event);
- Important: make a WorldThingSpawned WorldEvent that has NULL thing;
- Important: make player's current weapon NULL;
- Important: take away all weapons from the player;
- A command to call all Important events simultaneously (for faster testing);
- Cosmetic: spawn a weapon and a monster with no tags (this event is mostly used
  to test MCC itself).

Commands can be viewed in keyconf.txt lump, or in GZDoom console by pressing tab
after typing `mcc-`. All commands have `mcc-` prefix and descriptive names.
