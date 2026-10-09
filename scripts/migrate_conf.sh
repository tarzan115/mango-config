#!/usr/bin/env bash
# Re-apply mango-nightly (>= 99e6ba36) snake_case config keyword names.
#
# That commit rewrote the config parser and renamed every option (border_color ->
# border_color, window_rule -> window_rule, app_id -> app_id, ...). DMS 1.6.x and
# matugen still emit the old names into config.conf and dms/*.conf, so run this
# after `dms setup` or a theme change. Idempotent: already-migrated files are
# left alone.
#
# Verify afterwards with: mango -p
set -euo pipefail
cd "$(dirname "$0")/.."

files=(
	config.conf my_config.conf rule.conf tag.conf monitor.conf
	dms/colors.conf dms/layout.conf dms/outputs.conf dms/windowrules.conf
)

sed_prog=(
	# top-level options
	-e 's/\bexec-once=/exec_once=/g'
	-e 's/\bbordercolor=/border_color=/g'
	-e 's/\bfocuscolor=/focus_color=/g'
	-e 's/\burgentcolor=/urgent_color=/g'
	-e 's/\bborderpx=/border_px=/g'
	-e 's/\bgappih=/gap_inner_horizontal=/g'
	-e 's/\bgappiv=/gap_inner_vertical=/g'
	-e 's/\bgappoh=/gap_outer_horizontal=/g'
	-e 's/\bgappov=/gap_outer_vertical=/g'
	-e 's/\bmonitorrule=/monitor_rule=/g'
	-e 's/\bwindowrule(-once)?=/window_rule\1=/g'
	-e 's/\blayerrule=/layer_rule=/g'
	-e 's/\btagrule=/tag_rule=/g'
	-e 's/\bshadowscolor=/shadows_color=/g'
	-e 's/\bfadein_begin_opacity=/fade_in_begin_opacity=/g'
	-e 's/\bfadeout_begin_opacity=/fade_out_begin_opacity=/g'
	-e 's/\banimation_curve_opafadein=/animation_curve_opacity_fade_in=/g'
	-e 's/\banimation_curve_opafadeout=/animation_curve_opacity_fade_out=/g'
	-e 's/\bsmartgaps=/smart_gaps=/g'
	-e 's/\bdefault_mfact=/default_master_factor=/g'
	-e 's/\bdefault_nmaster=/default_master_count=/g'
	-e 's/\bdwindle_hsplit=/dwindle_horizontal_split=/g'
	-e 's/\bdwindle_vsplit=/dwindle_vertical_split=/g'
	-e 's/\boverviewgappi=/overview_gap_inner=/g'
	-e 's/\boverviewgappo=/overview_gap_outer=/g'
	-e 's/\bsyncobj_enable=/sync_obj_enable=/g'
	-e 's/\bsloppyfocus=/sloppy_focus=/g'
	-e 's/\bwarpcursor=/warp_cursor=/g'
	-e 's/\bnumlockon=/numlock_on=/g'
	-e 's/\brootcolor=/root_color=/g'
	-e 's/\bdropcolor=/drop_color=/g'
	-e 's/\bsplitcolor=/split_color=/g'
	-e 's/\bmaximizescreencolor=/maximized_screen_color=/g'
	-e 's/\bscratchpadcolor=/scratchpad_color=/g'
	-e 's/\bglobalcolor=/global_color=/g'
	-e 's/\boverlaycolor=/overlay_color=/g'

	# rule criteria (key sits at start of value, or after a comma)
	-e 's/(^|[=,])is_floating:/\1is_floating:/g'
	-e 's/(^|[=,])app_id:/\1app_id:/g'
	-e 's/(^|[=,])no_size_hint:/\1no_size_hint:/g'
	-e 's/(^|[=,])global_key_binding:/\1global_key_binding:/g'
	-e 's/(^|[=,])no_swallow:/\1no_swallow:/g'
	-e 's/(^|[=,])is_fullscreen:/\1is_fullscreen:/g'
	-e 's/(^|[=,])force_fake_maximize:/\1force_fake_maximize:/g'
	-e 's/(^|[=,])is_tag_silent:/\1is_tag_silent:/g'
	-e 's/(^|[=,])no_fade_in:/\1no_fade_in:/g'
	-e 's/(^|[=,])no_fade_out:/\1no_fade_out:/g'
	-e 's/(^|[=,])is_overlay:/\1is_overlay:/g'
	-e 's/(^|[=,])is_unmanaged_global:/\1is_unmanaged_global:/g'
	-e 's/(^|[=,])offset_x:/\1offset_x:/g'
	-e 's/(^|[=,])offset_y:/\1offset_y:/g'
	-e 's/(^|[=,])no_border:/\1no_border:/g'
	-e 's/(^|[=,])no_radius:/\1no_radius:/g'
	-e 's/(^|[=,])no_shadow:/\1no_shadow:/g'
	-e 's/(^|[=,])is_term:/\1is_term:/g'
	-e 's/(^|[=,])is_named_scratchpad:/\1is_named_scratchpad:/g'
	-e 's/(^|[=,])is_open_silent:/\1is_open_silent:/g'
	-e 's/(^|[=,])is_global:/\1is_global:/g'
	-e 's/(^|[=,])no_blur:/\1no_blur:/g'
	-e 's/(^|[=,])no_animation:/\1no_animation:/g'
	-e 's/(^|[=,])no_shadow:/\1no_shadow:/g'
)

for f in "${files[@]}"; do
	[[ -f $f ]] || continue
	sed -i -E "${sed_prog[@]}" "$f"
done

echo "migrated mango config keywords in ${#files[@]} candidate files"
