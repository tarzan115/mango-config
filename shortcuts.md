# Mango Shortcuts — Unified SUPER-centric keymap (DMS + Mango)

## Modifier Scheme

| Modifier | Purpose |
|---|---|
| `SUPER` | Launchers, focus, window state, navigation |
| `SUPER+SHIFT` | Move window, quit, gaps, secondary actions |
| `SUPER+CTRL` | Layout, tags, floating move, config checks |
| `SUPER+ALT` | Resize window |
| `SUPER+SHIFT+CTRL` | Monitor operations, toggle tag |
| `SUPER+ALT+SHIFT` | Focus monitor |
| `ALT` / `CTRL` | Launcher alternates, screenshots, adjacent tags, system |
| `Print` / `XF86` | Screenshots, hardware keys |

Rules applied to make the keymap conflict-free across `dms/binds.conf`
(DankMaterialShell) and `bind.conf` (extras):
- Every key combo appears **exactly once**; nothing is double-bound.
- All letter binds use **lowercase** keysyms (uppercase would mean the Shifted
  key and caused silent overlaps, e.g. `SUPER+Q` vs `SUPER+Shift+Q`).
- `SUPER` is the master key; the most common Windows/Hyprland/sway combos win:
  `SUPER+Enter` terminal, `SUPER+e` files, `SUPER+v` clipboard (Win+V),
  `SUPER+l` lock (Win+L), `SUPER+n` notifications (Win+N), `SUPER+p` display
  (Win+P), `SUPER+1-9` workspaces, `SUPER+Shift+1-9` move window to workspace.

---

## Config

| Shortcut | Action |
|---|---|
| `SUPER + R` | Reload config |
| `SUPER + Shift + R` | Reload config |
| `SUPER + Ctrl + R` | Config diagnostics (mango -p notification) |

## Launchers

| Shortcut | Action |
|---|---|
| `SUPER + Enter` / `SUPER + T` | Open terminal (kitty) |
| `SUPER + Space` | App launcher / spotlight (DMS) |
| `Alt + Space` | Spotlight bar (DMS) |
| `SUPER + E` | File manager (yazi in kitty, Win+E) |
| `SUPER + Shift + Enter` | Browser (Firefox) |
| `SUPER + V` | Clipboard history (DMS, Win+V) |
| `SUPER + Shift + Esc` / `Ctrl + Alt + Delete` | Task manager (DMS) |
| `SUPER + ,` | Settings (DMS) |
| `SUPER + Y` | Browse wallpapers (DMS) |
| `SUPER + X` | Power menu (DMS) |
| `SUPER + P` | Cycle display profile (DMS, Win+P) |
| `SUPER + Shift + /` | Keyboard shortcut cheat sheet (DMS) |
| `SUPER + L` | Lock screen (DMS, Win+L) |

## Window Rules

| Shortcut | Action |
|---|---|
| `SUPER + Shift + W` | Create window rule (DMS) |

## Screenshots

| Shortcut | Action |
|---|---|
| `Print` | Interactive screenshot (DMS) |
| `Ctrl + Print` | Full screen screenshot (DMS) |
| `Alt + Print` | Window screenshot (DMS) |

## Window Management

| Shortcut | Action |
|---|---|
| `SUPER + Q` | Close window |
| `SUPER + Shift + Q` | Quit Mango |
| `SUPER + F` | Toggle fullscreen |
| `SUPER + Shift + F` | Toggle fake fullscreen |
| `SUPER + M` | Toggle maximize |
| `SUPER + Shift + Space` | Toggle floating |
| `SUPER + G` | Toggle global mode |
| `SUPER + Shift + G` | Toggle gaps |
| `SUPER + I` | Minimize window |
| `SUPER + Shift + I` | Restore minimized |
| `SUPER + Z` | Toggle scratchpad |
| `SUPER + S` | Zoom / swap master |
| `SUPER + O` | Toggle overview |
| `Alt + Tab` | Toggle overview (app switch) |
| `SUPER + Shift + O` | Toggle overlay |

## Window Focus

| Shortcut | Action |
|---|---|
| `SUPER + Arrow Keys` | Focus direction |
| `SUPER + H` / `J` / `K` | Focus left / down / up (vim style) |
| `SUPER + Tab` | Focus next window |
| `SUPER + Shift + Tab` | Focus previous window |
| `SUPER + BackSpace` | Focus last window |

## Window Move / Swap

| Shortcut | Action |
|---|---|
| `SUPER + Shift + Arrow Keys` | Swap window in direction |
| `SUPER + Shift + H` / `J` / `K` | Swap left / down / up (vim style) |

## Resize Window

| Shortcut | Action |
|---|---|
| `SUPER + Alt + Arrow Keys` | Resize window in direction |

## Move Floating Window

| Shortcut | Action |
|---|---|
| `SUPER + Ctrl + Arrow Keys` | Move floating window in direction |

## Scroller Stack

| Shortcut | Action |
|---|---|
| `SUPER + Ctrl + Alt + Arrow Keys` | Move within scroller stack |

## Layout

| Shortcut | Action |
|---|---|
| `SUPER + Ctrl + Tab` | Cycle layout |
| `SUPER + Ctrl + I` | Set tile layout |
| `SUPER + Ctrl + L` | Set scroller layout |
| `SUPER + Shift + X` | Scroller proportion preset (next) |
| `SUPER + Ctrl + X` | Scroller proportion preset (prev) |
| `SUPER + Ctrl + =` | Increase master windows |
| `SUPER + Ctrl + -` | Decrease master windows |
| `SUPER + Ctrl + Enter` | Toggle dwindle split direction |
| `SUPER + Shift + +` | Increase gaps |
| `SUPER + Shift + -` | Decrease gaps |

*(`set_proportion` to 1.0 is intentionally dropped — the proportion presets
cycle through 0.5 / 0.8 / 1.0 and the mouse middle-click still sets 0.5.)*

## Tags / Workspaces

| Shortcut | Action |
|---|---|
| `SUPER + 1-9` | Switch view tag 1-9 |
| `SUPER + Shift + 1-9` | Move focused window to tag 1-9 |
| `SUPER + Ctrl + 1-9` | Move focused window to tag 1-9 (alt) |
| `SUPER + Shift + Ctrl + 1-9` | Toggle tag 1-9 |
| `Ctrl + Alt + Left/Right` | Jump to adjacent tag (with clients) |

## Monitor

| Shortcut | Action |
|---|---|
| `SUPER + Shift + Ctrl + Arrow` | Move window to monitor |
| `SUPER + Alt + Shift + Arrow` | Focus monitor |

## System

| Shortcut | Action |
|---|---|
| `SUPER + Shift + P` | Toggle monitor (eDP-1) |
| `SUPER + Ctrl + P` | Toggle virtual monitor |
| `SUPER + Ctrl + H` | Toggle waybar |
| `SUPER + Delete` | Power menu (wlogout) |
| `Ctrl + Alt + BackSpace` | Clear notifications |
| `Ctrl + Alt + \` | Toggle notification center |

## Volume & Brightness

| Shortcut | Action |
|---|---|
| `SUPER + F1` | Brightness down |
| `SUPER + F2` | Brightness up |
| `SUPER + F3` | Volume down |
| `SUPER + F4` | Volume up |

## Hardware Keys

| Shortcut | Action |
|---|---|
| `XF86AudioRaiseVolume` | Volume up |
| `XF86AudioLowerVolume` | Volume down |
| `XF86AudioMute` | Mute |
| `XF86AudioMicMute` | Mic mute |
| `XF86AudioPlay` / `Pause` | Play / pause |
| `XF86AudioPrev` / `Next` | Previous / next track |
| `XF86MonBrightnessUp` | Brightness up |
| `XF86MonBrightnessDown` | Brightness down |

---

## Mouse Bindings

| Shortcut | Action |
|---|---|
| `SUPER + Left Click` | Move window |
| `SUPER + Middle Click` | Set proportion 0.5 |
| `SUPER + Right Click` | Resize window |
| `SUPER + Ctrl + Left Click` | Minimize window |
| `SUPER + Ctrl + Right Click` | Close window |
| `SUPER + Ctrl + Middle Click` | Toggle fullscreen |
| `Back Button` | Toggle overview |

## Scroll Wheel (Axis)

| Shortcut | Action |
|---|---|
| `SUPER + Scroll Up/Down` | Switch to adjacent tag (with clients) |
| `SUPER + Shift + Scroll Up/Down` | Swap windows |

## Touchpad Gestures

| Shortcut | Action |
|---|---|
| `3-finger Swipe` | Focus direction |
| `4-finger Swipe Left/Right` | Switch adjacent tag |
| `4-finger Swipe Up/Down` | Toggle overview |

---

## Keybind ownership (conflict-free layout)

| File | Owns |
|---|---|
| `dms/binds.conf` | Launchers, notifications/clipboard/settings, lock, screenshots, focus, swap, workspaces, gaps, window state, media/hardware keys |
| `bind.conf` | Browser, resize/move/scroller-stack, layouts & tags, monitor ops, system, mouse/axis/gestures |