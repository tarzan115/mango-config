# Mango Feature Checklist

Track which mangowm features you have actually tried. Mark `[x]` once a
feature is known/working; leave `[ ]` for things to explore later.

Legend:

- `[x]` — already configured and known in this repo
- `[~]` — newly added by the feature-extras patch; configured but not yet verified
- `[ ]` — not used yet (try it later)

Reference: <https://mangowm.github.io/docs/>
Config patch: `bind.conf` ("Feature extras"), `my_config.conf` ("Feature extras"),
`rule.conf`, `config.conf`.

---

## 1. Config & startup

- [x] `source=` includes (`config.conf` → `dms/*`, `my_config.conf` → fragments)
- [ ] `source_optional=` — include a file only if it exists
- [ ] `var=` — define `$variables` and reuse them in binds/values
- [x] `env=` — environment variables (`env.conf`)
- [x] `exec_once=` — run at startup only
- [ ] `exec=` — run on every config reload
- [ ] TOML config (`config.toml`) — same options, TOML syntax
- [x] `mango -p` — validate config (`scripts/config_check.sh`)
- [ ] `mango -c <file>` — custom config path
- [ ] `mango -s <cmd>` — startup command
- [ ] `mango -d` — debug logging
- [ ] `mango -r <fd>` — readiness file descriptor
- [ ] `auto_reload_config=` — live reload on file change (default 1)
- [ ] `mangonag` error bar — Close / Edit behavior

## 2. Keybindings, modes & input bindings

- [x] `bind=` — default keybinds
- [ ] `binds=` — keysym binding (layout-independent)
- [ ] `bindl=` — bind that also works while locked
- [ ] `bindr=` — bind on key release
- [ ] `bindp=` — pass the key event to the client too
- [ ] `bindc=` — allow a conflicting bind
- [ ] `code:N` — bind by keycode
- [x] `mousebind=` — mouse buttons
- [ ] `mousebind` with `code:N` buttons
- [x] `axisbind=` — scroll wheel
- [x] `gesturebind=` — touchpad gestures
- [~] `key_mode=` / `setkeymode` — submaps
- [ ] `common` key mode — binds active in every mode
- [ ] `switchbind=` — lid/tablet/keypad switches
- [ ] `chvt` — switch VT
- [ ] Single-modifier binds (`bind=none,Super_L,...`, `bindr=Super,Super_L,...`)
- [x] Waybar `mango/*` modules (workspaces / layout / window / language / keymode)

## 3. Window management dispatchers

### Already in use

- [x] `killclient`, `togglefloating`, `togglefullscreen`, `togglefakefullscreen`
- [x] `togglemaximizescreen`, `toggleglobal`, `toggleoverlay`
- [x] `minimized`, `restore_minimized`, `toggle_scratchpad`
- [x] `zoom`, `quit`, `reload_config`
- [x] `focusdir`, `focusstack`, `focuslast`
- [x] `exchange_client`
- [x] `view`, `tag`, `toggletag`, `viewtoleft_have_client`, `viewtoright_have_client`
- [x] `tagmon`, `focusmon`
- [x] `setlayout`, `switch_layout`, `incnmaster`, `switch_proportion_preset`
- [x] `scroller_stack`, `incgaps`, `togglegaps`, `dwindle_toggle_split_direction`
- [x] `resizewin`, `movewin`, `moveresize`, `set_proportion`
- [x] `spawn`, `spawn_shell`
- [x] `create_virtual_output`, `destroy_all_virtual_output` (via `scripts/virmon.sh`)

### To try

- [~] `smartkillclient`
- [~] `centerwin`
- [~] `setmfact`
- [ ] `move_client` — move without swapping
- [ ] `focus_window_or_workspace` — direction, else adjacent tag
- [ ] `focusid` — focus by client id (IPC)
- [ ] `exchange_stack_client`
- [~] `toggle_all_floating`
- [~] `toggle_render_border`
- [ ] `smartmovewin` / `smartresizewin`
- [ ] `spawn_on_empty`
- [ ] `load_config_file`
- [ ] `setoption` — change a config option at runtime
- [~] `toggle_trackpad_enable`
- [~] `toggle_named_scratchpad`
- [~] `toggle_special_tag` / `tag_special_tag` / `tag_special_silent`
- [~] `groupjoin` / `groupfocus` / `groupleave` / `togglegroupbar`
- [~] `togglejump`
- [~] `overcircle`
- [~] `switcher`
- [ ] `enteroverview` / `leaveoverview`
- [~] `toggleoverview,1` — current tagset only
- [~] `view_insert`
- [ ] `viewtoleft` / `viewtoright`
- [ ] `viewnext_have_client` / `viewprev_have_client`
- [ ] `tagsilent`
- [ ] `tagtoleft` / `tagtoright`
- [ ] `toggleview`
- [ ] `comboview`
- [ ] `viewcrossmon` / `tagcrossmon`
- [~] `dwindle_split_horizontal` / `dwindle_split_vertical`
- [ ] `dwindle_toggle_current_split`
- [~] `switch_keyboard_layout`
- [ ] `togglehdr`
- [ ] `sleep_monitor` / `wakeup_monitor` / `sleep_toggle_monitor`
- [ ] `disable_monitor` / `enable_monitor` / `toggle_monitor`
- [ ] `chvt`

## 4. Layouts

- [x] `tile`
- [x] `scroller`
- [x] `center_tile` (via tag rules)
- [ ] `monocle`
- [ ] `grid`
- [ ] `deck`
- [ ] `vertical_tile`
- [ ] `right_tile`
- [ ] `vertical_scroller`
- [ ] `vertical_grid`
- [ ] `vertical_deck`
- [ ] `dwindle`
- [ ] `fair`
- [ ] `vertical_fair`
- [x] `circle_layout` cycling
- [x] `tag_rule` `layout_name`
- [ ] `tag_rule` `master_count` / `master_factor`
- [ ] `tag_rule` `no_hide` / `open_as_floating` / `no_render_border`
- [ ] `monocle_tab_mode` / `monocle_right_button_close` / `monocle_no_border/gap/radius`
- [ ] `deck_tab_mode`
- [ ] `tab_bar_*` — auto tab bar appearance
- [ ] `group_bar_*` / `always_show_group_bar`
- [ ] `scroller_prefer_overspread` / `edge_scroller_focus_allow_speed`
- [ ] `dwindle_smart_resize` / `dwindle_split_ratio`
- [ ] `center_master_overspread` / `center_when_single_stack`

## 5. Overview modes

- [x] Overview — `toggleoverview`
- [x] Hotarea — `enable_hotarea`, `hotarea_size`
- [~] Overview current-tagset only — `toggleoverview,1`
- [ ] `hotarea_corner` / `hotarea_disable_on_fullscreen`
- [~] Jump mode — `togglejump`
- [ ] `jump_labels` / `jump_label_decorate_*`
- [~] Overcircle — `overcircle`
- [ ] `overcircle_center_ratio`
- [~] Switcher — `switcher`
- [ ] Title message bar — `title_message_bar_height` / `_gap` / `_decorate_*`

## 6. Scratchpad & special workspace

- [x] Standard scratchpad — `minimized` / `restore_minimized` / `toggle_scratchpad`
- [x] `scratchpad_width_ratio` / `scratchpad_height_ratio` / `scratchpad_color`
- [x] `single_scratchpad`
- [~] Named scratchpad — `is_named_scratchpad` / `toggle_named_scratchpad`
- [~] Special workspace (tag 0) — `toggle_special_tag` etc.
- [ ] `special_dim` / `special_gap_*` / `special_tag_cross_monitor`
- [ ] `scratchpad_cross_monitor`
- [ ] `window_rule` `tags:0`

## 7. Groups & tab/group bars

- [~] `groupjoin` / `groupfocus` / `groupleave`
- [~] `togglegroupbar`
- [ ] `group_bar_*` styling
- [ ] `always_show_group_bar`
- [ ] `tab_bar_*` styling
- [ ] `monocle_tab_mode` / `deck_tab_mode`

## 8. Rules

### Window rules

- [x] `is_floating`, `width`, `height`, `no_size_hint`
- [x] `tags`
- [x] `global_key_binding`
- [x] `no_swallow`, `is_term`
- [x] `is_fullscreen`, `force_fake_maximize`
- [x] `animation_type_open/close`, `no_fade_in/out`
- [x] `focused_opacity` / `unfocused_opacity`
- [x] `no_border` / `no_shadow` / `no_radius` / `no_animation`
- [x] `is_overlay`, `is_unmanaged_global`, `offset_x/y`
- [x] `is_tag_silent`
- [~] `is_named_scratchpad`
- [ ] `window_rule_once` — one-shot rule
- [ ] `monitor` — assign to an output
- [ ] `no_force_center`
- [ ] `allow_csd`
- [ ] `confine_pointer`
- [ ] `scroller_proportion` / `scroller_proportion_single`
- [ ] `force_tiled_state`
- [ ] `ignore_maximize` / `ignore_minimize`
- [ ] `is_fake_fullscreen` / `is_global` / `is_open_silent`
- [ ] `idle_inhibit_when_focus`
- [ ] `vrr_only_fullscreen`
- [ ] `shield_when_capture`
- [ ] `force_render`
- [ ] `activation_bypass`
- [ ] `force_tearing`

### Tag rules

- [x] `layout_name`
- [ ] `monitor_name` / `monitor_make` / `monitor_model` / `monitor_serial`
- [ ] `master_count` / `master_factor`
- [ ] `no_hide` / `open_as_floating` / `no_render_border`
- [ ] `scroller_default_proportion` / `_single` / `scroller_ignore_proportion_single`

### Layer rules

- [x] `no_blur`, `no_animation`, `no_shadow`, `animation_type_open/close`
- [ ] `shield_when_capture`

### Monitor rules

- [x] `name`, `width`, `height`, `refresh`, `x`, `y`, `scale`, `vrr`, `rr`
- [ ] `make` / `model` / `serial` matching
- [ ] `hdr` / `hdr_min_lum` / `hdr_max_lum` / `hdr_max_avg_lum` / `hdr_force`
- [ ] `icc`
- [ ] `primary`
- [ ] `custom`
- [ ] `disable`

### Device rules

- [ ] `device_rule=name:...,...`
- [ ] `device_rule=type:trackpad,...`
- [ ] `kb_layout` / `kb_variant` / `kb_options` per keyboard
- [ ] `monitor` / `map_focus_monitor` for touch/tablet

## 9. Visual effects & theming

- [x] Animations — types, fades, zoom, durations, bezier curves
- [x] Shadows — size, blur, offset, color, `shadow_only_floating`
- [x] `layer_shadows`
- [x] `focused_opacity` / `unfocused_opacity`
- [x] `border_radius` / `no_radius_when_single` / `no_border_when_single`
- [x] Colors — `root_color`, `border_color`, `focus_color`, `urgent_color`,
  `drop_color`, `split_color`, `maximized_screen_color`, `scratchpad_color`,
  `global_color`, `overlay_color`
- [ ] Blur — `blur`, `blur_layer`, `blur_optimized`, `blur_params_*`
  (currently `blur=0`, so the params are inert)
- [ ] Dim overlay — `dim_enable`, `dim_focused_color`, `dim_unfocused_color`
- [ ] `cursor_theme`
- [ ] `cursor_hide_on_keypress`
- [ ] Decoration theming — `group_bar_decorate_*`, `tab_bar_decorate_*`,
  `jump_label_decorate_*`, `title_message_bar_decorate_*`

## 10. Input devices

- [x] `repeat_rate` / `repeat_delay` / `numlock_on`
- [x] `xkb_rules_layout`
- [ ] `xkb_rules_rules` / `xkb_rules_model` / `xkb_rules_variant` / `xkb_rules_options`
- [x] `mouse_accel_profile` / `mouse_accel_speed`
- [x] `mouse_natural_scrolling`
- [x] `mouse_left_handed` / `mouse_middle_button_emulation` (via `dms/input.conf`)
- [ ] `mouse_scroll_method` / `mouse_scroll_button` / `mouse_click_method` / `mouse_send_events_mode`
- [x] `axis_scroll_factor` (via `dms/input.conf`)
- [x] `disable_trackpad`, `tap_to_click`, `tap_and_drag`, `drag_lock`
- [x] `trackpad_natural_scrolling`, `trackpad_disable_while_typing`
- [x] `trackpad_left_handed`, `trackpad_middle_button_emulation`
- [x] `trackpad_scroll_factor`, `trackpad_send_events_mode`
- [ ] `trackpad_accel_profile`
- [ ] `trackpad_scroll_method` / `trackpad_scroll_button` / `trackpad_click_method`
- [ ] `button_map`
- [ ] `touch_enable` / `touch_enable_mouse_emulation`
- [x] `swipe_min_threshold`
- [ ] `gesture_live` / `gesture_swipe_distance` / `gesture_swipe_cancel_ratio` / `gesture_swipe_min_speed_to_force`
- [ ] `disable_middle_paste`
- [x] `cursor_hide_timeout` (set to 0)
- [ ] `device_rule` per-device overrides

## 11. Monitors, HDR, tearing & virtual outputs

- [x] `monitor_rule` basics
- [x] Virtual outputs (`scripts/virmon.sh`)
- [x] `xwayland_persistence`, `sync_obj_enable`
- [~] `xwayland_ignore_scale`
- [ ] HDR — `hdr_depth`, monitor `hdr:*`, `togglehdr`
- [ ] ICC profile
- [~] Tearing — `allow_tearing=2` (fullscreen only), `force_tearing`
- [ ] `primary` output
- [ ] `custom` mode / `disable`
- [ ] Monitor power — `sleep_monitor` / `wakeup_monitor` / `sleep_toggle_monitor`
- [ ] `vrr_only_fullscreen`
- [ ] `float_full_to_top`
- [ ] `focus_cross_monitor` / `focus_direction_only_zone_overlap` / `exchange_cross_monitor`
- [ ] `focus_cross_tag` / `view_current_to_back`
- [ ] `tag_carousel` / `tag_gather` / `tag_num`
- [ ] `idle_inhibit_ignore_visible` / `idle_inhibit_when_fullscreen`
- [ ] `drag_tile_small` / `drag_corner` / `drag_warp_cursor`
- [ ] `enable_border_resize` / `border_resize_size`
- [ ] `allow_lock_transparent` / `allow_shortcuts_inhibit`

## 12. IPC & CLI

- [x] `mmsg dispatch` — `scripts/virmon.sh`, Waybar scroll
- [ ] `mmsg get version|keymode|keyboardlayout|cursorpos|...`
- [ ] `mmsg get monitor|client|tag|tags|all-*`
- [ ] `mmsg watch monitor|client|tags|all-*|keymode|keyboardlayout|...`
- [ ] `mangobar` status bar (alternative to Waybar)

## 13. DMS integration

- [x] `spotlight` / `spotlight-bar`
- [x] `clipboard`
- [x] `notifications`
- [x] `processlist`
- [x] `settings`
- [x] `notepad`
- [x] `dash` (wallpaper)
- [x] `powermenu`
- [x] `keybinds`
- [x] `lock`
- [x] `window-rules`
- [x] `screenshot` / `full` / `window` / `scroll`
- [x] `audio` / `mpris` / `brightness` / `outputs`
- [ ] `control-center`
- [ ] `island` / `dot`
- [ ] `color-picker`
- [ ] `theme` / `night`
- [ ] `inhibit`
- [ ] `wellbeing`
- [ ] `bar` / `dock`
- [ ] `defaultApp`
- [ ] `screenshot all`
- [ ] `wallpaper next` / `prev`
- [ ] `workspace-rename`

---

## 14. Verify after reloading (newly added)

Run `mango -p` first, then press `SUPER+R` (or reload) and check:

- [ ] `ALT+J` opens jump mode; hint keys focus windows
- [ ] `SUPER+ALT+J` / `SUPER+CTRL+J` cycle overcircle
- [ ] `ALT+`` ` `` cycles the switcher
- [ ] `ALT+H` toggles the kitty/yazi named scratchpad
- [ ] `SUPER+ALT+SHIFT+H/N/K/L` join groups; `F/B` focus; `G` leave; `T` group bar
- [ ] `SUPER+SHIFT+CTRL+0` toggles the special workspace
- [ ] `SUPER+CTRL+SPACE` enters launch keymode; `Esc` leaves
- [ ] `SUPER+CTRL+Q` smart kill / `C` center / `A` all floating / `B` border
- [ ] `SUPER+CTRL+[` / `]` change master factor
- [ ] `SUPER+ALT+O` overview (current tagset)
- [ ] `SUPER+CTRL+K` switches keyboard layout
- [ ] `SUPER+CTRL+F8` toggles trackpad
- [ ] `SUPER+CTRL+`` ` `` inserts an empty tag
- [ ] XWayland apps are no longer blurry at `scale:1.25` (`xwayland_ignore_scale`)
- [ ] Fullscreen games tear without affecting the desktop (`allow_tearing=2`)
