<!doctype html><html  style="font-size: 10px;font-family: Roboto, Arial, sans-serif;" lang="en-US" dir="ltr" gl="US"><head><meta http-equiv="X-UA-Compatible" content="IE=edge" /><meta http-equiv="origin-trial" data-feature="Web Components V0" data-expires="2020-10-23" content="AhbmRDASY7NuOZD9cFMgQihZ+mQpCwa8WTGdTx82vSar9ddBQbziBfZXZg+ScofvEZDdHQNCEwz4yM7HjBS9RgkAAABneyJvcmlnaW4iOiJodHRwczovL3lvdXR1YmUuY29tOjQ0MyIsImZlYXR1cmUiOiJXZWJDb21wb25lbnRzVjAiLCJleHBpcnkiOjE2MDM0ODY4NTYsImlzU3ViZG9tYWluIjp0cnVlfQ=="><meta http-equiv="origin-trial" data-feature="Web Components V0" data-expires="2020-10-27" content="Av2+1qfUp3MwEfAFcCccykS1qFmvLiCrMZ//pHQKnRZWG9dldVo8HYuJmGj2wZ7nDg+xE4RQMQ+Ku1zKM3PvYAIAAABmeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZS5jb206NDQzIiwiZmVhdHVyZSI6IldlYkNvbXBvbmVudHNWMCIsImV4cGlyeSI6MTYwMzgzNjc3MiwiaXNTdWJkb21haW4iOnRydWV9"><meta http-equiv="origin-trial" data-feature="Web Components V0" data-expires="2021-01-08" content="AixUK+8UEShlt6+JX1wy9eg+XL+eV5PYSEDPH3C90JNVbIkE1Rg1FyVUfu2bZ/y6Pm1xbPLzuwHYHjv4uKPNnA4AAABqeyJvcmlnaW4iOiJodHRwczovL2dvb2dsZXByb2QuY29tOjQ0MyIsImZlYXR1cmUiOiJXZWJDb21wb25lbnRzVjAiLCJleHBpcnkiOjE2MTAwNjQ0MjMsImlzU3ViZG9tYWluIjp0cnVlfQ=="><meta http-equiv="origin-trial" data-feature="Web Components V0" data-expires="2021-03-09" content="AhHpq2nUT6fqP0Kmkq49EWIcl2P1LK1ceU05BoiVnWi8ZIWDdmX/kMwL+ZtuC3oIf0tns8XnO5fm946JEzPVEwgAAABqeyJvcmlnaW4iOiJodHRwczovL2MuZ29vZ2xlcnMuY29tOjQ0MyIsImZlYXR1cmUiOiJXZWJDb21wb25lbnRzVjAiLCJleHBpcnkiOjE2MTIyMjM5OTksImlzU3ViZG9tYWluIjp0cnVlfQ=="><script >var ytcfg = {d: function() {return (window.yt && yt.config_) || ytcfg.data_ || (ytcfg.data_ = {});},get: function(k, o) {return (k in ytcfg.d()) ? ytcfg.d()[k] : o;},set: function() {var a = arguments;if (a.length > 1) {ytcfg.d()[a[0]] = a[1];} else {for (var k in a[0]) {ytcfg.d()[k] = a[0][k];}}}};window.ytcfg.set('EMERGENCY_BASE_URL', "\/error_204?client.name=1\u0026client.version=2.20201016.02.00\u0026level=ERROR\u0026t=jserror");</script>  
<script >var $jscomp=$jscomp||{};$jscomp.scope={};$jscomp.arrayIteratorImpl=function(a){var c=0;return function(){return c<a.length?{done:!1,value:a[c++]}:{done:!0}}};$jscomp.arrayIterator=function(a){return{next:$jscomp.arrayIteratorImpl(a)}};$jscomp.ASSUME_ES5=!1;$jscomp.ASSUME_NO_NATIVE_MAP=!1;$jscomp.ASSUME_NO_NATIVE_SET=!1;$jscomp.SIMPLE_FROUND_POLYFILL=!1;$jscomp.ISOLATE_POLYFILLS=!1;$jscomp.FORCE_POLYFILL_PROMISE=!1;$jscomp.FORCE_POLYFILL_PROMISE_WHEN_NO_UNHANDLED_REJECTION=!1;
$jscomp.defineProperty=$jscomp.ASSUME_ES5||"function"==typeof Object.defineProperties?Object.defineProperty:function(a,c,d){if(a==Array.prototype||a==Object.prototype)return a;a[c]=d.value;return a};$jscomp.getGlobal=function(a){a=["object"==typeof globalThis&&globalThis,a,"object"==typeof window&&window,"object"==typeof self&&self,"object"==typeof global&&global];for(var c=0;c<a.length;++c){var d=a[c];if(d&&d.Math==Math)return d}throw Error("Cannot find global object");};$jscomp.global=$jscomp.getGlobal(this);
$jscomp.IS_SYMBOL_NATIVE="function"===typeof Symbol&&"symbol"===typeof Symbol("x");$jscomp.TRUST_ES6_POLYFILLS=!$jscomp.ISOLATE_POLYFILLS||$jscomp.IS_SYMBOL_NATIVE;$jscomp.polyfills={};$jscomp.propertyToPolyfillSymbol={};$jscomp.POLYFILL_PREFIX="$jscp$";$jscomp.polyfill=function(a,c,d,e){c&&($jscomp.ISOLATE_POLYFILLS?$jscomp.polyfillIsolated(a,c,d,e):$jscomp.polyfillUnisolated(a,c,d,e))};
$jscomp.polyfillUnisolated=function(a,c){var d=$jscomp.global;a=a.split(".");for(var e=0;e<a.length-1;e++){var b=a[e];if(!(b in d))return;d=d[b]}a=a[a.length-1];e=d[a];c=c(e);c!=e&&null!=c&&$jscomp.defineProperty(d,a,{configurable:!0,writable:!0,value:c})};
$jscomp.polyfillIsolated=function(a,c,d){var e=a.split(".");a=1===e.length;var b=e[0];b=!a&&b in $jscomp.polyfills?$jscomp.polyfills:$jscomp.global;for(var f=0;f<e.length-1;f++){var g=e[f];if(!(g in b))return;b=b[g]}e=e[e.length-1];d=$jscomp.IS_SYMBOL_NATIVE&&"es6"===d?b[e]:null;c=c(d);null!=c&&(a?$jscomp.defineProperty($jscomp.polyfills,e,{configurable:!0,writable:!0,value:c}):c!==d&&($jscomp.propertyToPolyfillSymbol[e]=$jscomp.IS_SYMBOL_NATIVE?$jscomp.global.Symbol(e):$jscomp.POLYFILL_PREFIX+e,
e=$jscomp.propertyToPolyfillSymbol[e],$jscomp.defineProperty(b,e,{configurable:!0,writable:!0,value:c})))};$jscomp.initSymbol=function(){};
$jscomp.polyfill("Symbol",function(a){if(a)return a;var c=function(b,f){this.$jscomp$symbol$id_=b;$jscomp.defineProperty(this,"description",{configurable:!0,writable:!0,value:f})};c.prototype.toString=function(){return this.$jscomp$symbol$id_};var d=0,e=function(b){if(this instanceof e)throw new TypeError("Symbol is not a constructor");return new c("jscomp_symbol_"+(b||"")+"_"+d++,b)};return e},"es6","es3");$jscomp.initSymbolIterator=function(){};
$jscomp.polyfill("Symbol.iterator",function(a){if(a)return a;a=Symbol("Symbol.iterator");for(var c="Array Int8Array Uint8Array Uint8ClampedArray Int16Array Uint16Array Int32Array Uint32Array Float32Array Float64Array".split(" "),d=0;d<c.length;d++){var e=$jscomp.global[c[d]];"function"===typeof e&&"function"!=typeof e.prototype[a]&&$jscomp.defineProperty(e.prototype,a,{configurable:!0,writable:!0,value:function(){return $jscomp.iteratorPrototype($jscomp.arrayIteratorImpl(this))}})}return a},"es6",
"es3");$jscomp.initSymbolAsyncIterator=function(){};$jscomp.iteratorPrototype=function(a){a={next:a};a[Symbol.iterator]=function(){return this};return a};$jscomp.iteratorFromArray=function(a,c){a instanceof String&&(a+="");var d=0,e=!1,b={next:function(){if(!e&&d<a.length){var f=d++;return{value:c(f,a[f]),done:!1}}e=!0;return{done:!0,value:void 0}}};b[Symbol.iterator]=function(){return b};return b};
$jscomp.polyfill("Array.prototype.keys",function(a){return a?a:a=function(){return $jscomp.iteratorFromArray(this,function(c){return c})}},"es6","es3");window.yterr=window.yterr||!0;window.unhandledErrorMessages={};window.unhandledErrorCount=0;
window.onerror=function(a,c,d,e,b){b||(b=Error(),b.stack="",b.message=a,b.fileName=c,b.lineNumber=d,isNaN(e)||(b.columnNumber=e));d=String(b.message);if(!(!b.message||d in window.unhandledErrorMessages||5<=window.unhandledErrorCount)){window.unhandledErrorCount+=1;window.unhandledErrorMessages[d]=!0;a=new Image;window.emergencyTimeoutImg=a;a.onload=a.onerror=function(){delete window.emergencyTimeoutImg};e=b.lineNumber;isNaN(b.columnNumber)||(e+=":"+b.columnNumber);c=b.stack||"";b={msg:d,type:b.name,
"client.params":"unhandled window error",file:b.fileName,line:e,stack:c.substr(0,500)};try{var f=c.replace(/https:\/\/www.youtube.com\//g,"");f.match(/https?:\/\/[^/]+\//)&&(b.level="WARNING")}catch(k){b["client.params.monitor_error"]=String(k)}f=[window.ytcfg.get("EMERGENCY_BASE_URL","https://www.youtube.com/error_204?t=jserror&level=ERROR")];for(var g in b)(c=b[g])&&f.push(g+"="+encodeURIComponent(c));a.src=f.join("&")}};
(function(){function a(f){var g=this._nativePrototypes[f];if(!g){g=Object.create(this.getNativePrototype(f));for(var k=Object.getOwnPropertyNames(window.Polymer.Base),l=0,h;l<k.length&&(h=k[l]);l++)if(!window.Polymer.BaseDescriptors[h])try{g[h]=window.Polymer.Base[h]}catch(m){throw Error("Error while copying property: "+h+". Tag is "+f);}try{Object.defineProperties(g,window.Polymer.BaseDescriptors)}catch(m){throw Error("Polymer define property failed for "+Object.keys(g));}this._nativePrototypes[f]=
g}return g}function c(f){window.onerror(f,window.location.href,0,0,Error(Array.prototype.join.call(arguments,",")))}var d=window.Polymer,e=function(f){!d._ytIntercepted&&window.Polymer.Base&&(d._ytIntercepted=!0,window.Polymer.Base._getExtendedNativePrototype=a,window.Polymer.Base._error=c,window.Polymer.Base._warn=c);return d.apply(this,arguments)},b=Object.getOwnPropertyDescriptor(window,"Polymer");Object.defineProperty(window,"Polymer",{set:function(f){b&&b.set&&b.get?(b.set(f),d=b.get()):d=f;
"function"==typeof d&&Object.defineProperty(window,"Polymer",{value:d,configurable:!0,enumerable:!0,writable:!0})},get:function(){return"function"==typeof d?e:d},configurable:!0,enumerable:!0})})();
</script>  
<script >window.ShadyDOM = {force: true};window.ShadyDOM.preferPerformance = true;window.ShadyDOM.noPatch = true;window.Polymer = (window.Polymer || {});window.Polymer.legacyOptimizations = true;</script><link rel="shortcut icon" href="https://www.youtube.com/s/desktop/02e79665/img/favicon.ico" type="image/x-icon" ><link rel="icon" href="https://www.youtube.com/s/desktop/02e79665/img/favicon_32.png" sizes="32x32" ><link rel="icon" href="https://www.youtube.com/s/desktop/02e79665/img/favicon_48.png" sizes="48x48" ><link rel="icon" href="https://www.youtube.com/s/desktop/02e79665/img/favicon_96.png" sizes="96x96" ><link rel="icon" href="https://www.youtube.com/s/desktop/02e79665/img/favicon_144.png" sizes="144x144" ><script >var ytcsi = {gt: function(n) {n = (n || '') + 'data_';return ytcsi[n] || (ytcsi[n] = {tick: {},info: {}});},now: (window.performance && window.performance.timing &&window.performance.now && window.performance.timing.navigationStart) ?function() {return window.performance.timing.navigationStart +window.performance.now();} :function() {return (new Date()).getTime();},tick: function(l, t, n) {var ticks = ytcsi.gt(n).tick;var v = t || ytcsi.now();if (ticks[l]) {ticks['_' + l] = (ticks['_' + l] || [ticks[l]]);ticks['_' + l].push(v);}ticks[l] = v;},info: function(k, v, n) {ytcsi.gt(n).info[k] = v;},setStart: function(s, t, n) {ytcsi.info('yt_sts', s, n);ytcsi.tick('_start', t, n);}};(function(w, d) {ytcsi.setStart('dhs', w.performance ? w.performance.timing.responseStart : null);var isPrerender = (d.visibilityState || d.webkitVisibilityState) == 'prerender';var vName = (!d.visibilityState && d.webkitVisibilityState)? 'webkitvisibilitychange' : 'visibilitychange';if (isPrerender) {ytcsi.info('prerender', 1);var startTick = function() {ytcsi.setStart('dhs');d.removeEventListener(vName, startTick);};d.addEventListener(vName, startTick, false);}if (d.addEventListener) {d.addEventListener(vName, function() {ytcsi.tick('vc');}, false);}function isGecko() {if (!w.navigator || !w.navigator.userAgent) {return false;}var ua = w.navigator.userAgent;return ua.indexOf('Gecko') > 0 &&ua.toLowerCase().indexOf('webkit') < 0 &&ua.indexOf('Edge') < 0 &&ua.indexOf('Trident') < 0 &&ua.indexOf('MSIE') < 0;}if (isGecko()) {var isHidden = (d.visibilityState || d.webkitVisibilityState) == 'hidden';if (isHidden) {ytcsi.tick('vc');}}var slt = function(el, t) {setTimeout(function() {var n = ytcsi.now();el.loadTime = n;if (el.slt) {el.slt();}}, t);};w.__ytRIL = function(el) {if (!el.getAttribute('data-thumb')) {if (w.requestAnimationFrame) {w.requestAnimationFrame(function() {slt(el, 0);});} else {slt(el, 16);}}};})(window, document);</script><script >(function() {var img = new Image().src = "https://i.ytimg.com/generate_204";})();</script>  <script >if (window.ytcsi) {window.ytcsi.tick("lpcs", null, '');}(function() {window.ytplayer = {};ytcfg.set({"INNERTUBE_CONTEXT_CLIENT_NAME":1,"DEFERRED_DETACH":true,"INNERTUBE_CONTEXT_GL":"US","YPC_MB_URL":"https:\/\/payments.youtube.com\/payments\/v4\/js\/integrator.js?ss=md","EXPERIMENT_FLAGS":{"desktop_touch_gestures_usage_log":true,"show_ghost_card_continuations":0,"kevlar_settings_billing":true,"kevlar_menu_refresh":true,"kevlar_cancel_scheduled_comment_jobs_on_navigate":true,"render_schema_org_album":true,"render_meta_general_tags":true,"render_channel_canonical_tags":true,"kevlar_next_up_next_edu_emoji":"","kevlar_op_infra":true,"kevlar_home_skeleton_hide_later":true,"kevlar_exit_fullscreen_leaving_watch":true,"kevlar_autonav_popup_filtering":true,"kevlar_thumbnail_overlay_button_refresh":true,"kevlar_mini_guide_width_threshold":791,"kevlar_miniplayer_play_pause_on_scrim":true,"kevlar_op_migration_batch_2":true,"kevlar_op_migration_batch_3":true,"kevlar_set_internal_player_size":true,"enable_super_vod_price_selector":true,"twelve_video_reordering":[0,1,2,4,7,8,3,5,6,9,10,11],"decorate_autoplay_renderer":true,"kevlar_no_autoscroll_on_playlist_hover":true,"element_pool_populator_auto_abort":true,"yoodle_end_time_utc":0,"live_chat_increased_min_height":true,"enable_streamline_repost_flow":true,"enable_topsoil_wta_for_halftime":true,"desktop_client_release":true,"kevlar_frontend_queue_recover":true,"autoplay_pause_by_lact_sec":0,"kevlar_next_cold_on_auth_change_detected":true,"web_yt_config_context":true,"kevlar_i18n_library":true,"service_worker_push_force_notification_prompt_tag":"1","autoplay_time":8000,"web_client_version_override":"","web_enable_history_cache_map":true,"global_spacebar_pause":true,"kevlar_persistent_guide_width_threshold":1312,"autoplay_pause_by_lact_sampling_fraction":0.0,"suppress_error_204_logging":true,"kevlar_use_page_data_will_update":true,"enable_offer_suppression":true,"kevlar_disable_html_imports":true,"serve_crosswalk_compliant_pdp":true,"kevlar_log_prefers_color_theme":true,"kevlar_use_ytd_player":true,"kevlar_collect_battery_network_status":true,"kevlar_op_browse_sampled_prefix_ids":[],"kevlar_watch_skeleton":true,"enable_web_ketchup_hero_animation":true,"kevlar_page_service_url_prefix_carveouts":[],"kevlar_help_use_locale":true,"kevlar_reposition_guide_html":true,"reload_without_polymer_innertube":true,"kevlar_logged_out_topbar_menu_migration":true,"disable_legacy_desktop_remote_queue":true,"service_worker_subscribe_with_vapid_key":true,"autoplay_time_for_music_content":-1,"enable_polymer_resin_migration":true,"searchbox_reporting":true,"kevlar_client_save_subs_preferences":true,"use_typescript_transport":true,"kevlar_op_page_service_browse":true,"live_chat_live_commentary_mode":true,"service_worker_scope":"\/","viewport_load_collection_wait_time":0,"client_streamz_web_flush_interval_seconds":60,"external_fullscreen_button_shown_threshold":10,"kevlar_player_response_swf_config_wrapper_killswitch":true,"enable_microformat_data":true,"web_post_search":true,"tailor_on_desktop_home_show_description":true,"networkless_throttle_timeout":100,"kevlar_fix_miniplayer_logging":true,"kevlar_icons_on_menus":true,"mdx_enable_privacy_disclosure_ui":true,"enable_purchase_activity_in_paid_memberships":true,"enable_button_behavior_reuse":true,"polymer_warm_thumbnail_preload":true,"kevlar_use_one_platform_for_queue_refresh":true,"defer_overlays":true,"kevlar_op_migration_ypc":true,"enable_ve_tracker_key":true,"enable_cookie_reissue_iframe":true,"web_player_enable_ipp":true,"kevlar_miniplayer_no_update_on_deactivate":true,"kevlar_settings_privacy":true,"kevlar_playlist_autonav_loop_fix":true,"kevlar_enable_slis":true,"polymer_report_missing_web_navigation_endpoint_rate":0.001,"kevlar_hide_pp_url_param":true,"kevlar_one_pick_add_video_to_playlist":true,"kevlar_frontend_queue_automatic_recover":true,"client_streamz_web_flush_count":100,"player_allow_autonav_after_playlist":true,"yoodle_start_time_utc":0,"kevlar_watch_color_update":true,"player_enable_playback_playlist_change":true,"web_move_passive_signin":true,"spf_kevlar_assume_chunked":true,"live_chat_unicode_emoji_json_url":"https:\/\/www.gstatic.com\/youtube\/img\/emojis\/emojis-svg-4.json","service_worker_push_enabled":true,"web_player_touch_mode_improvements":true,"kevlar_abandon_on_stop":true,"enable_borders_on_community":true,"defer_rendering_outside_visible_area":true,"log_vis_on_tab_change":true,"kevlar_enable_reorderable_playlists":true,"retry_web_logging_batches":true,"service_worker_push_prompt_cap":-1,"kevlar_no_url_params":true,"enable_mixed_direction_formatted_strings":true,"web_response_processor_support":true,"kevlar_background_color_update":true,"desktop_image_companion_wta_support":true,"kevlar_log_native_right_click_ve":true,"service_worker_enabled":true,"log_js_error_clusters":1.0,"enable_alpaca_client_player_changes":true,"watch_next_pause_autoplay_lact_sec":4500,"polymer2_not_shady_build":true,"kevlar_player_disable_rvs_update":true,"polymer_report_client_url_requested_rate":0.001,"enable_signals":true,"desktop_search_prominent_thumbs":true,"polymer_video_renderer_defer_menu":true,"render_base_tags_home_page":true,"user_mention_suggestions_edu_impression_cap":10,"polymer_bad_build_labels":true,"kevlar_snap_state_refresh":true,"kevlar_collect_hover_touch_support":true,"web_op_signal_type_banlist":[],"web_gel_debounce_ms":10000,"yoodle_date_override_debug":"","fill_web_player_context_config":true,"kevlar_settings_advanced":true,"disable_legacy_desktop_remote_queue_watch":true,"popup_for_sign_out_report_playlist":true,"kevlar_clean_up":true,"desktop_search_prominent_thumbs_style":"DEFAULT","web_api_url":true,"minimum_duration_to_consider_mouseover_as_hover":500,"kevlar_keyboard_button_focus":true,"your_data_entrypoint":true,"botguard_periodic_refresh":true,"kevlar_mix_handle_first_endpoint_different":true,"ten_video_reordering":[0,1,2,3,6,4,5,7,8,9],"networkless_retry_attempts":1,"recommended_video_reordering":true,"flush_onbeforeunload":true,"autoplay_time_for_music_content_after_autoplayed_video":-1,"enable_docked_chat_messages":true,"skip_endpoint_param_comparison":true,"rich_grid_mini_mode":true,"web_op_endpoint_banlist":[],"suppress_sparkles_for_whitelisted_instream_on_desktop":true,"custom_csi_timeline_use_gel":true,"tailor_on_desktop_home_show_blur_background":true,"kevlar_tooltip_impression_cap":2,"enable_web_poster_hover_animation":true,"enable_mentions_in_reposts":true,"live_chat_client_url":true,"desktop_search_suggestion_tap_target":0,"render_meta_tags_labs":true,"kevlar_miniplayer_expand_top":true,"html5_experiment_id_label":0,"kevlar_guide_ajax_migration":true,"prefetch_comments_ms_after_video":0,"kevlar_watch_js_panel_height":true,"kevlar_playlist_drag_handles":true,"enable_device_forwarding_from_xhr_client":true,"kevlar_disable_channels_flow_param":true,"kevlar_deprecated_ticker":true,"high_priority_flyout_frequency":3,"enable_watch_next_pause_autoplay_lact":true,"web_emulated_idle_callback_delay":0,"player_bootstrap_method":true,"desktop_adjust_touch_target":true,"kevlar_gel_error_routing":true,"desktop_keyboard_capture_keydown_killswitch":true,"polymer_verifiy_app_state":true,"desktop_sparkles_light_cta_button":true,"kevlar_player_playlist_use_local_index":true,"kevlar_inlined_html_templates_polymer_flags":true,"kevlar_home_keyboard_scroll_distance":0,"cold_missing_history":true,"kevlar_thumbnail_flyout_delay":300,"polymer2_element_pool_properties":true,"kevlar_mealbar_above_player":true,"render_schema_org_tags":true,"web_show_description_tag_movies":true,"kevlar_use_alpha_in_color_palettes":true,"fix_desktop_ads_cta_dup_click_ping":true,"disable_thumbnail_preloading":true,"web_logging_max_batch":150,"use_preview_selection_tool":true,"service_worker_push_logged_out_prompt_watches":-1,"enable_player_microformat_data":true,"polymer_enable_mdx":true,"kevlar_include_query_in_search_endpoint":true,"enable_client_streamz_web":true,"kevlar_mousedown_prefetch":true,"kevlar_autofocus_menu_on_keyboard_nav":true,"enable_call_to_action_clarification_renderer_bottom_section_conditions":true,"disable_youthere_lact_threshold_check":true,"kevlar_autonav_miniplayer_fix":true,"kevlar_miniplayer_set_element_early":true,"kevlar_center_search_results":true,"kevlar_watch_increased_width_threshold":true,"kevlar_frontend_video_list_actions":true,"use_watch_fragments2":true,"kevlar_home_skeleton":true,"live_chat_itfe_endpoint_migration":true,"desktop_pyv_on_watch_override_lact":true,"kevlar_thumbnail_overlay_new_elementpool_schedule":true,"warm_load_nav_start_web":true,"enable_ypc_spinners":true,"desktop_add_to_playlist_renderer_dialog_popup":true,"debug_forced_internalcountrycode":"","desktop_pyv_on_watch_missing_params":true,"kevlar_js_fixes":true,"enable_premium_voluntary_pause":true,"visibility_time_between_jobs_ms":100,"defer_menus":true,"kevlar_guide_refresh":true,"desktop_web_client_version_override":"","desktop_polymer_video_masthead_session_tempdata_ttl":30,"web_op_continuation_type_banlist":[],"enable_servlet_errors_streamz":true,"log_web_meta_interval_ms":0,"player_doubletap_to_seek":true,"kevlar_menu_logging":true,"enable_masthead_quartile_ping_fix":true,"pair_servlet_deprecation_warning_enabled":true,"desktop_notification_set_title_bar":true,"polymer2_polyfill_manual_flush":true,"gfeedback_for_signed_out_users_enabled":true,"kevlar_allow_multistep_video_init":true,"network_polling_interval":30000,"desktop_themeable_vulcan":true,"kevlar_nitrate_driven_tooltips":true,"guide_business_info_countries":["KR"],"disable_simple_mixed_direction_formatted_strings":true,"serve_pdp_at_canonical_url":true,"kevlar_prepare_player_on_miniplayer_activation":true,"service_worker_push_home_page_prompt":true,"web_log_connection":true,"overwrite_polyfill_on_logging_lib_loaded":true,"preview_play_duration":3000,"cancel_pending_navs":true,"tailor_on_desktop_home_show_hover_overlay":true,"skip_init_preview_selection":true,"kevlar_allow_playlist_reorder":true,"kevlar_thumbnail_fluid":true,"kevlar_playlist_collapsible":true,"kevlar_miniplayer_queue_user_activation":true,"kevlar_queue_use_dedicated_list_type":true,"enable_post_scheduling":true,"kevlar_watch_drag_handles":true,"kevlar_ctrl_tap_fix":true,"kevlar_allow_queue_reorder":true,"csi_on_gel":true,"kevlar_settings_overview":true,"kevlar_channel_trailer_multi_attach":true,"live_chat_use_fetch_command":true,"kevlar_queue_use_update_api":true,"yoodle_base_url":"","web_lifecycles":true,"kevlar_settings_notifications":true,"web_dont_cancel_pending_navigation_same_url":true,"web_network_combined_catch":true,"web_player_watch_next_response":true,"desktop_action_companion_wta_support":true,"max_duration_to_consider_mouseover_as_hover":600000,"external_fullscreen_with_edu":true,"log_js_exceptions_fraction":1.0,"yoodle_alt_text_locale":"","kevlar_player_autoplay_count_from_rvs":true,"kevlar_fix_playlist_continuation":true,"web_deprecate_service_ajax_map_dependency":true,"kevlar_clear_non_displayable_url_params":true,"playlist_remove_watched":true,"web_log_app_install_experiments":true,"external_fullscreen_button_click_threshold":2,"kevlar_use_endpoint_for_channel_creation_form":true,"pbj_navigate_limit":-1,"consent_url_override":"","web_system_health_fraction":0.01,"desktop_notification_high_priority_ignore_push":true,"polymer_task_manager_status":"production","kevlar_legacy_browsers":true,"service_worker_push_watch_page_prompt":true,"enable_service_ajax_csn":true,"tailor_on_desktop_home_show_overlay_icon":true,"desktop_swipeable_guide":true,"kevlar_apply_prefers_color_theme":true,"user_engagement_experiments_rate_limit_ms":86400000,"enable_device_forwarding_from_polymer_network_manager":true,"kevlar_ad_badge_line_height_update":true,"kevlar_miniplayer":true,"kevlar_lazy_list_resume_for_autofill":true,"ignore_empty_xhr":true,"allow_https_streaming_for_all":true,"botguard_async_snapshot_timeout_ms":3000,"no_sub_count_on_sub_button":true,"kevlar_time_caching_start_threshold":15,"kevlar_transcript_engagement_panel":true,"kevlar_droppable_prefetchable_requests":true,"should_clear_video_data_on_player_cued_unstarted":true,"is_part_of_any_user_engagement_experiment":true,"web_foreground_heartbeat_interval_ms":28000,"web_show_regex_error_textarea":true,"live_chat_over_playlist":true,"kevlar_disable_background_prefetch":true,"networkless_request_age_limit":30,"guide_legal_footer_enabled_countries":["NL","ES"],"web_gel_timeout_cap":true,"rich_grid":true,"web_screen_associated_all_layers":true,"log_web_endpoint_to_layer":true,"live_chat_continuations_migration":true,"kevlar_serve_unversioned_binary":true,"external_fullscreen":true,"yoodle_end_time":"","enable_servlet_streamz":true,"add_device_theme_preference_web":true,"fix_for_safari_desktop_masthead_banner_size":true,"web_always_load_chat_support":true,"kevlar_add_to_queue_option":true,"kevlar_mousedown_prefetchable_components":["ytd-playlist-video-renderer","ytd-grid-video-renderer","ytd-compact-video-renderer","ytd-video-renderer","ytd-playlist-panel-video-renderer"],"desktop_persistent_menu":true,"kevlar_save_queue":true,"live_chat_use_youtube_hosted_tango_domains":true,"web_client_counter_random_seed":true,"kevlar_enable_editable_playlists":true,"config_age_report_killswitch":true,"kevlar_hide_time_continue_url_param":true,"yoodle_alt_text":"","kevlar_channels_player_handle_missing_swfconfig":true,"autoescape_tempdata_url":true,"kevlar_copy_playlist":true,"web_refresh_info_panel":true,"kevlar_gaia_link":true,"kevlar_fallback_to_page_data_root_ve":true,"service_worker_push_prompt_delay_microseconds":3888000000000,"kevlar_client_side_screens":true,"app_settings_snapshot_min_time_between_snapshots_hours":24,"kevlar_op_page_service_search":true,"botguard_eval_with_script_tag":true,"yoodle_start_time":"","kevlar_transcript_panel_refreshed_styles":true,"persistent_miniplayer":true,"kevlar_miniplayer_set_watch_next":true,"delay_gel_until_config_ready":true,"suppress_gen_204":true,"kevlar_disable_fast_player_sizing_on_channel_page":true,"kevlar_use_response_ttl_to_invalidate_cache":true,"kevlar_macro_markers_keyboard_shortcut":true,"kevlar_no_early_init_unpause":true,"kevlar_settings_playback":true,"kevlar_playback_associated_queue":true,"kevlar_time_caching_end_threshold":15,"pdg_enable_sign_in_modal_for_super_vod":true,"log_window_onerror_fraction":0.1,"networkless_ytidb_version":1,"render_microformat_in_head":true,"enable_yto_window":true,"kevlar_settings_sharing":true,"kevlar_op_migration":true,"kevlar_prefetch":true,"min_mouse_still_duration":100},"LIVE_CHAT_SEND_MESSAGE_ACTION":"live_chat\/watch_page\/send","SBOX_SETTINGS":{"SEARCHBOX_BEHAVIOR_EXPERIMENT":"zero-prefix","IS_POLYMER":true,"REQUEST_LANGUAGE":"en","IS_FUSION":false,"REQUEST_DOMAIN":"us","SEARCHBOX_ZERO_TYPING_SUGGEST_USE_REGULAR_SUGGEST":"always","VISITOR_DATA":"CgtMVi12UjBnTnRMTSiQm6r8BQ%3D%3D","SEARCHBOX_ENABLE_REFINEMENT_SUGGEST":true,"SEARCHBOX_HOST_OVERRIDE":"","SUGG_EXP_ID":"ytdb_ce4,ytpo.bo.se=1,ytposo.bo.me=1,ytpo.bo.vqd=1,ytpo.bo.dm=5.0,ytpo.bo.ds=1.0,ytposo.bo.vqd=1,ytposo.bo.dm=5.0,ytposo.bo.ds=1.0cfro=1,ytpo.bo.se=0,ytposo.bo.me=0","HAS_ON_SCREEN_KEYBOARD":false,"SEND_VISITOR_DATA":true,"SEARCHBOX_TAP_TARGET_EXPERIMENT":0},"CLIENT_PROTOCOL":"HTTP\/1.1","ELEMENT_POOL_DEFAULT_CAP":75,"PAGE_BUILD_LABEL":"youtube.ytfe.desktop_20201015_2_RC0","INNERTUBE_API_KEY":"AIzaSyAO_FJ2SlqU8Q4STEHLGCilw_Y9_11qcW8","INNERTUBE_API_VERSION":"v1","VARIANTS_CHECKSUM":"1f2f11b4d029b18d074f549ff808f414","XSRF_FIELD_NAME":"session_token","FEXP_EXPERIMENTS":[23744176,23768780,23804281,23839597,23856950,23857949,23868320,23880043,23882502,23884386,23885566,23890959,23895671,23911055,23911513,23915654,23915993,23916390,23918597,23928508,23930220,23934970,23938800,23939097,23939458,23940248,23940704,23942338,23942633,23944779,23945480,23946420,23947683,23947698,23948131,23948841,23948944,23948944,23950390,23951138,23953875,23955865,23956098,23956286,23956754,23956987,23961290,24631483,9449243],"ROOT_VE_TYPE":3832,"REUSE_COMPONENTS":true,"EVENT_ID":"kI2KX8DgOIGm8wS13Ym4Bg","DISABLE_WARM_LOADS":false,"SIGNIN_URL":"https:\/\/accounts.google.com\/ServiceLogin?continue=https%3A%2F%2Fwww.youtube.com%2Fsignin%3Faction_handle_signin%3Dtrue%26app%3Ddesktop%26feature%3D__FEATURE__%26hl%3Den%26next%3D%252Fwatch%253Fv%253DvKLN5UKo87c%2526feature%253Dyoutu.be%25250A\u0026hl=en\u0026passive=true\u0026service=youtube\u0026uilel=3","DEVICE":"ceng=USER_DEFINED","STS":18550,"PAGE_CL":337292700,"SERVICE_WORKER_PROMPT_NOTIFICATIONS":false,"YTR_FAMILY_CREATION_URL":"https:\/\/families.google.com\/webcreation?usegapi=1","IS_TABLET":false,"LATEST_ECATCHER_SERVICE_TRACKING_PARAMS":{"client.name":"WEB"},"SBOX_JS_URL":"https:\/\/www.youtube.com\/s\/desktop\/02e79665\/jsbin\/www-searchbox.vflset\/www-searchbox.js","CLIENT_TRANSPORT":"tcp","LANGUAGE":"English","ZWIEBACK_PING_URLS":["https:\/\/www.google.com\/pagead\/lvz?req_ts=1602915728\u0026evtid=AKB78ciDaTNcK5i-eOhoSEo22A7C45i_ZEBds7wzxKf0MyBxFl_J3wugNeQcPjLMBmdeMBPTGfu-AYt9zL60Vg0_6XkWI8lfeg\u0026pg=watch\u0026sigh=AKFpyYWzaI02hQa9bHWWLaJcO1BqncNheA"],"HTML_LANG":"en","DISABLE_YT_IMG_DELAY_LOADING":false,"GAPI_HINT_PARAMS":"m;\/_\/scs\/abc-static\/_\/js\/k=gapi.gapi.en.9Ky5Gf3gP0o.O\/d=1\/ct=zgms\/rs=AHpOoo9ntgUgaVmSKxb6oXsk111880adyg\/m=__features__","START_IN_THEATER_MODE":false,"COUNTRY":"United States","GAPI_HOST":"https:\/\/apis.google.com","GOOGLE_FEEDBACK_PRODUCT_ID":"59","ASYNC_WATCH":true,"NO_EMPTY_DATA_IMG":true,"XHR_APIARY_HOST":"youtubei.youtube.com","GOOGLE_FEEDBACK_PRODUCT_DATA":{"accept_language":null,"polymer":"active","polymer2":"active"},"START_IN_FULL_WINDOW_MODE":false,"RECAPTCHA_V3_SITEKEY":"6LedoOcUAAAAAHA4CFG9zRpaCNjYj33SYjzQ9cTy","HTML_DIR":"ltr","LOGGED_IN":false,"INNERTUBE_CONTEXT_CLIENT_VERSION":"2.20201016.02.00","STAMPER_STABLE_LIST":true,"VOZ_API_KEY":"AIzaSyBU2xE_JHvB6wag3tMfhxXpg2Q_W8xnM-I","LIVE_CHAT_BASE_TANGO_CONFIG":{"clientType":1057,"requiresAuthToken":true,"apiKey":"AIzaSyDZNkyC-AtROwMBpLfevIvqYk-Gfi8ZOeo","clientName":"yt-live-chat-anon","channelUri":"https:\/\/client-channel.google.com\/client-channel\/client","useNewTango":true,"senderUri":"https:\/\/clients4.google.com\/invalidation\/lcs\/client"},"PLAYER_CSS_URL":"\/s\/player\/00510e67\/www-player.css","VISIBILITY_TIME_BETWEEN_JOBS_MS":100,"VISITOR_DATA":"CgtMVi12UjBnTnRMTSiQm6r8BQ%3D%3D","PLAYER_JS_URL":"\/s\/player\/00510e67\/player_ias.vflset\/en_US\/base.js","GAPI_LOCALE":"en_US","XSRF_TOKEN":"QUFFLUhqbUFnWkJFM2NNVFdCS2RSZUk1SmtXTUFoMDNnd3xBQ3Jtc0trcnk2UW5kSWhWNU9WczJkLWRKRk9aVHp2LXpxWjBYUU1iWmxIVXdoTGY4QXNwMXM2ZV92QXU2S0NGMDJVTTF0YURmSzl4a3pBTXF0S3BfcHNUVUNEdllTSU1VaFJaVkVpRXUxOWdrYXptdXJBeXZsUnRMdWR4X1VDY3M1dkstS3A4MXJYVnZYaDZ4TzRUMlE3dW5rWE5ib0NscEE=","INNERTUBE_CONTEXT_HL":"en"});ytcfg.set("SBOX_LABELS", {"SUGGESTION_DISMISSED_LABEL":"Suggestion removed","SUGGESTION_DISMISS_LABEL":"Remove"});var setMessage = function(msg) {if (window.yt && yt.setMsg) {yt.setMsg(msg);} else {window.ytcfg = window.ytcfg || {};ytcfg.msgs = msg;}};setMessage({'SIGN_IN_LABEL': "Sign in",'SHARE_LABEL': "Share",'GUIDE_ALT_LABEL': "Guide",'LOGO_ALT_LABEL': "YouTube Home",'BACK_ALT_LABEL': "Back",'CHOOSE_COUNTRY_LABEL': "Choose your location",'COUNTRY_LABEL': "Location:",'CHOOSE_LANGUAGE_LABEL': "Choose your language",'LANGUAGE_LABEL': "Language:",'TIMEZONE_FORMAT': "($utc_offset_text) $city_name",'LOCAL_TIME_LABEL': "Local Time",'LOCAL_TIME_GMT_LABEL': "Local Time ($gmt_text)",'UTC_OFFSET_FORMAT': "GMT$utc_offset",'ENTER_DATE_OR_EARLIER': "Enter $allowed_date or earlier",'ENTER_DATE_OR_LATER': "Enter $allowed_date or later",'INVALID_DATE_ERROR': "Invalid Date",'OFF': "Off",'ON': "On",'RESTRICTED_MODE_LABEL': "Restricted Mode:",'RESTRICTED_MODE_TEXT_LINE_1': "Restricted Mode hides videos that may contain inappropriate content flagged by users and other signals. No filter is 100% accurate, but it should help you avoid most inappropriate content.",'RESTRICTED_MODE_TEXT_LINE_2': "Your Restricted Mode setting will apply to this browser only.",'RESTRICTED_MODE_TITLE': "Restricted Mode",'IMAGE_HORIZONTAL_POSITION_LABEL': "The center of the preview is $x_percent% from the left and $y_percent% from the right.",'IMAGE_VERTICAL_POSITION_LABEL': "The center of the preview is $x_percent% from the top and $y_percent% from the bottom.",'REPOSITION_IMAGE_HORIZONTALLY_LABEL': "Use left and right arrow keys to reposition the preview",'REPOSITION_IMAGE_VERTICALLY_LABEL': "Use up and down arrow keys to reposition the preview",'REACH_TOP_OF_IMAGE_TEXT': "You have reached the top of the image",'REACH_BOTTOM_OF_IMAGE_TEXT': "You have reached the bottom of the image",'REACH_LEFT_OF_IMAGE_TEXT': "You have reached the left of the image",'REACH_RIGHT_OF_IMAGE_TEXT': "You have reached the right of the image",'SBOX_PLACEHOLDER': "Search",'SBOX_INAPPROPRIATE_PROMPT': "Report search predictions",'SBOX_INAPPROPRIATE_TITLE': "Report search predictions",'SBOX_INAPPROPRIATE_SUGGESTIONS': "Select predictions you would like to report:",'SBOX_INAPPROPRIATE_CATEGORY': "The selected predictions are:",'SBOX_INAPPROPRIATE_HATEFUL': "Hateful",'SBOX_INAPPROPRIATE_EXPLICIT': "Sexually explicit",'SBOX_INAPPROPRIATE_VIOLENT': "Violent",'SBOX_INAPPROPRIATE_DANGEROUS': "Dangerous and harmful activity",'SBOX_INAPPROPRIATE_OTHER': "Other",'SBOX_INAPPROPRIATE_REASON': "Reason (required)",'SBOX_INAPPROPRIATE_ADDITIONAL': "Provide additional details (optional)",'SBOX_INAPPROPRIATE_SUBMIT': "Submit",'SBOX_INAPPROPRIATE_REPORT': "Report",'SBOX_INAPPROPRIATE_CANCEL': "Cancel",'SBOX_INAPPROPRIATE_TOAST': "Thanks for your feedback!",'SBOX_VOICE_OVERLAY_PLACEHOLDER': "Listening...",'ADD_TO_DROPDOWN_LABEL': "Save to...",'REQUIRED_LABEL': "Required",'NO_ANGLE_BRACKET_LABEL': "Playlist name cannot contain \u003c or \u003e\n",'EDIT_AVATAR_LABEL': "Edit profile picture",'AD_BADGE_TEXT': "Ad",'EDU_GOT_IT': "Got It",'MINIPLAYER_COLLAPSE_LABEL': "Collapse",'MINIPLAYER_EXPAND_LABEL': "Expand",'QUEUE': "Queue",'ADDED_TO_QUEUE': "Added to queue",'QUEUE_CLEARED': {"other": "# videos in the queue removed", "case1": "1 video in the queue removed"},'QUEUE_CLEARED_UNPLURALIZED':"Queue cleared",'MINIPLAYER_CLOSE': "Close player",'QUEUE_CLOSE_MINIPLAYER_CONFIRM_TITLE': "Queue will be cleared",'QUEUE_CLOSE_MINIPLAYER_CONFIRM_BODY_TEXT': "Are you sure you want to close the player?",'QUEUE_RECOVER_BUTTON': "Restore",'QUEUE_RECOVER_MESSAGE': "Recover queue",'CLEAR': "Clear",'UNDO': "Undo",'CANCEL': "Cancel",'SUBS_FILTER_EDU_TEXT': "See new videos from each channel",'SUBS_GUIDE_ITEM_EDU_TEXT': "See new videos from all of your subscriptions",'SUBS_FILTER_EDU_CHANNEL_TEXT': "Now showing new videos from this channel.",'LIBRARY_GUIDE_ITEM_EDU_TITLE': "Check out your new Library",'LIBRARY_GUIDE_ITEM_EDU_TEXT': "Find your history, playlists, purchases, and more",'MENTIONS_EDU_TITLE': "Learn more",'MENTIONS_EDU_TEXT': "Go to the Help Center to see how mentions work on YouTube.",'NO_INTERNET_CONNECTION': "No internet connection",'CONNECT_TO_THE_INTERNET': "Connect to the internet",'OFFLINE_CHECK_CONNECTION': "You're offline. Check your connection.",'RETRY': "Retry",'JOIN_MEMBERSHIP_EDU_TITLE': "Membership",'JOIN_MEMBERSHIP_EDU_TEXT': "Get access to exclusive perks when you purchase a membership to this channel.",'SHARE_POST_EDU_TEXT': "Now you can share posts on YouTube",'FREEBIE_JOIN_MEMBERSHIP_EDU_TEXT': "This channel offers a membership which you can join for free with YouTube Premium",'MANAGE_MEMBERSHIP_EDU_TEXT': "Access your benefits and manage your membership from here."});})();ytcfg.set('MENTIONS_EDU_HELP_LINK', 'https://support.google.com/youtube/?p=creator_community');ytcfg.set('scheduler', {useRaf: true, timeout: 20});ytcfg.set('initialInnerWidth', window.innerWidth);ytcfg.set('initialInnerHeight', window.innerHeight);window.ytcfg.set('IS_WATCH_PAGE_COLD', true);window.ytcfg.set('LINK_API_KEY', "AIzaSyDophAQuyyiBr8h0nypEwXUKozH-BEswD0");window.ytcfg.set('LINK_OIS_DOMAIN', "oauthintegrations.googleapis.com");if (window.ytcsi) {window.ytcsi.tick("lpcf", null, '');}</script>  
<script  src="https://www.youtube.com/s/desktop/02e79665/jsbin/scheduler.vflset/scheduler.js" type="text/javascript" name="scheduler/scheduler" ></script>  
  <script >
    ytcfg.set({"INNERTUBE_CONTEXT":{"client":{"hl":"en","gl":"US","visitorData":"CgtMVi12UjBnTnRMTSiQm6r8BQ%3D%3D","userAgent":"python-requests/2.24.0,gzip(gfe)","clientName":"WEB","clientVersion":"2.20201016.02.00"},"request":{"sessionId":"6884470631175797147"},"adSignalsInfo":{"consentBumpParams":{"consentHostnameOverride":"https://www.youtube.com","urlOverride":""}}}});
  </script>
  
<script  src="/s/player/00510e67/player_ias.vflset/en_US/base.js" type="text/javascript" name="player_ias/base" ></script>  
<script >if (window.ytcsi) {window.ytcsi.tick("csl", null, '');}</script>
  <style name="www-roboto" >@font-face{font-family:'Roboto';font-style:normal;font-weight:400;src:local('Roboto Regular'),local('Roboto-Regular'),url(//fonts.gstatic.com/s/roboto/v18/KFOmCnqEu92Fr1Mu4mxP.ttf)format('truetype');}@font-face{font-family:'Roboto';font-style:normal;font-weight:500;src:local('Roboto Medium'),local('Roboto-Medium'),url(//fonts.gstatic.com/s/roboto/v18/KFOlCnqEu92Fr1MmEU9fBBc9.ttf)format('truetype');}@font-face{font-family:'Roboto';font-style:italic;font-weight:500;src:local('Roboto Medium Italic'),local('Roboto-MediumItalic'),url(//fonts.gstatic.com/s/roboto/v18/KFOjCnqEu92Fr1Mu51S7ACc6CsE.ttf)format('truetype');}@font-face{font-family:'Roboto';font-style:italic;font-weight:400;src:local('Roboto Italic'),local('Roboto-Italic'),url(//fonts.gstatic.com/s/roboto/v18/KFOkCnqEu92Fr1Mu51xIIzc.ttf)format('truetype');}</style><script name="www-roboto" >if (document.fonts && document.fonts.load) {document.fonts.load("400 10pt Roboto", "E");document.fonts.load("500 10pt Roboto", "E");}</script>
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=YT%20Sans%3A300%2C500%2C700" name="www-webfont-yt-sans"><link rel="stylesheet" href="/s/player/00510e67/www-player.css" name="player/www-player" id="player-css"><link rel="stylesheet" href="https://www.youtube.com/s/desktop/02e79665/cssbin/www-main-desktop-player-skeleton.css" name="www-main-desktop-player-skeleton"><link rel="stylesheet" href="https://www.youtube.com/s/desktop/02e79665/cssbin/www-main-desktop-watch-page-skeleton.css" name="www-main-desktop-watch-page-skeleton"><style name="global_styles">body{padding:0;margin:0;overflow-y:scroll}body.autoscroll{overflow-y:auto}body.no-scroll{overflow:hidden}body.no-y-scroll{overflow-y:hidden}.hidden{display:none}textarea{--paper-input-container-input_-_white-space:pre-wrap}.grecaptcha-badge{visibility:hidden}</style><style name="masthead_shell">ytd-masthead.shell{background:rgba(255,255,255,0.98);position:fixed;top:0;right:0;left:0;display:-ms-flex;display:-webkit-flex;display:flex;height:56px;-ms-flex-align:center;-webkit-align-items:center;align-items:center}ytd-masthead.shell #menu-icon{margin-left:16px}ytd-app>ytd-masthead.chunked{position:fixed;top:0;width:100%}ytd-masthead.shell.dark,ytd-masthead.shell.theater{background:rgba(40,40,40,0.98)}ytd-masthead.shell.full-window-mode{background:rgba(40,40,40,0.98);opacity:0;transform:translateY(calc(-100% - 5px))}ytd-masthead.shell>*:first-child{padding-left:16px}ytd-masthead.shell>*:last-child{padding-right:16px}ytd-masthead #masthead-logo{display:-ms-flex;display:-webkit-flex;display:flex}ytd-masthead #masthead-logo #country-code{margin-right:2px}ytd-masthead.shell #yt-logo-svg,ytd-masthead.shell #yt-logo-red-svg{align-self:center;margin-left:8px;padding:0;color:black}ytd-masthead.shell #a11y-skip-nav{display:none}ytd-masthead.shell svg{width:40px;height:40px;padding:8px;margin-right:8px;box-sizing:border-box;color:#606060;fill:currentColor}ytd-masthead .external-icon{width:24px;height:24px}ytd-masthead .yt-icons-ext{fill:currentColor;color:#606060}ytd-masthead.shell.dark .yt-icons-ext ytd-masthead.shell.theater .yt-icons-ext{fill:#fff}ytd-masthead svg#yt-logo-svg{width:80px}ytd-masthead svg#yt-logo-red-svg{width:106.4px}@media (max-width:656px){ytd-masthead.shell>*:first-child{padding-left:8px}ytd-masthead.shell>*:last-child{padding-right:8px}ytd-masthead.shell svg{margin-right:0}ytd-masthead #masthead-logo{-ms-flex:1 1 .000000001px;-webkit-flex:1;flex:1;-webkit-flex-basis:.000000001px;flex-basis:.000000001px}ytd-masthead.shell #yt-logo-svg,ytd-masthead.shell #yt-logo-red-svg{margin-left:4px}}@media (min-width:876px){ytd-masthead #masthead-logo{width:129px}}#masthead-skeleton-icons{display:flex;flex:1;flex-direction:row;justify-content:flex-end}ytd-masthead.masthead-finish #masthead-skeleton-icons{display:none}.masthead-skeleton-icon{border-radius:50%;height:32px;width:32px;margin:0 8px;background-color:hsl(0,0%,89%)}ytd-masthead.dark .masthead-skeleton-icon{background-color:hsl(0,0%,16%)}</style><style name="masthead_custom_styles" is="custom-style"  id="ext-styles" >ytd-masthead .yt-icons-ext{color:var(--yt-spec-icon-active-other)}ytd-masthead svg#yt-logo-svg #youtube-paths path,ytd-masthead svg#yt-logo-red-svg #youtube-red-paths path{fill:#282828}ytd-masthead.dark svg#yt-logo-svg #youtube-paths path,ytd-masthead.dark svg#yt-logo-red-svg #youtube-red-paths path,ytd-masthead.theater svg#yt-logo-svg #youtube-paths path,ytd-masthead.theater svg#yt-logo-red-svg #youtube-red-paths path{fill:#fff}</style><style name="searchbox">#search-input.ytd-searchbox-spt input{-webkit-appearance:none;-webkit-font-smoothing:antialiased;background-color:transparent;border:none;box-shadow:none;color:inherit;font-family:'Roboto','Noto',sans-serif;font-size:16px;font-weight:400;line-height:24px;margin-left:4px;max-width:100%;outline:none;text-align:inherit;width:100%;-ms-flex:1 1 .000000001px;-webkit-flex:1;flex:1;-webkit-flex-basis:.000000001px;flex-basis:.000000001px}#search-container.ytd-searchbox-spt{pointer-events:none;position:absolute;top:0;right:0;bottom:0;left:0}#search-input.ytd-searchbox-spt #search::-webkit-input-placeholder,#search-input.ytd-searchbox-spt #search::-moz-input-placeholder,#search-input.ytd-searchbox-spt #search:-ms-input-placeholder{color:hsl(0,0%,53.3%)}</style><style name="kevlar_global_styles">html{background-color:#f9f9f9!important;-webkit-text-size-adjust:none}html[dark]{background-color:#181818!important}#logo-red-icon-container.ytd-topbar-logo-renderer{width:86px}</style><style name="emergencycssformatted">.ytd-rich-shelf-renderer #title-container {
-ms-flex-pack: center; -webkit-justify-content: center; justify-content: center
}

ytd-feed-filter-chip-bar-renderer[not-sticky] #chips-wrapper {
position: relative !important; top: 0 !important
}</style><style name="emergencycssexp">
      
      
    </style><link rel="search" type="application/opensearchdescription+xml" href="https://www.youtube.com/opensearch?locale=en_US" title="YouTube"><link rel="manifest" href="/s/notifications/manifest/manifest.json" crossorigin="use-credentials"><!-- end of chunk -->        <script >
        if (window.ytcsi) {window.ytcsi.tick("bc", null, '');}        var ytimg = {};ytimg.count = 1;ytimg.preload = function(src) {var img = new Image();var count = ++ytimg.count;ytimg[count] = img;img.onload = img.onerror = function() {delete ytimg[count];};img.src = src;};
          ytimg.preload("https:\/\/r1---sn-p5qs7ner.googlevideo.com\/generate_204");
          ytimg.preload("https:\/\/r1---sn-p5qs7ner.googlevideo.com\/generate_204?conn2");
      </script>

  
    
  <div id="player" class="skeleton">
      <div id="player-api" class="player-width player-height off-screen-target player-api"></div>
        
  </div>

  <!-- end of chunk -->
    <script >if (window.ytcsi) {window.ytcsi.tick("ai", null, '');}</script>
  <ytd-app disable-upgrade="true">
    <ytd-masthead id="masthead" slot="masthead" class="shell  chunked"disable-upgrade="true"><div id="search-container" class="ytd-searchbox-spt" slot="search-container"></div><div id="search-input" class="ytd-searchbox-spt" slot="search-input"><input id="search" autocapitalize="none" autocomplete="off"autocorrect="off"  hidden name="search_query" tabindex="0"type="text" spellcheck="false"></div><svg id="menu-icon" class="external-icon" preserveAspectRatio="xMidYMid meet"><g id="menu" class="yt-icons-ext" viewBox="0 0 24 24"><path d="M3 18h18v-2H3v2zm0-5h18v-2H3v2zm0-7v2h18V6H3z"/></g></svg><div id="masthead-logo" slot="masthead-logo">  <div style="display: flex;">
    <svg id="yt-logo-svg" class="external-icon" viewBox="0 0 200 60">
      <g id="yt-logo" viewBox="0 0 200 60" preserveAspectRatio="xMidYMid meet">
        <g>
          <path fill="#FF0000" d="M63,14.87c-0.72-2.7-2.85-4.83-5.56-5.56C52.54,8,32.88,8,32.88,8S13.23,8,8.32,9.31
            c-2.7,0.72-4.83,2.85-5.56,5.56C1.45,19.77,1.45,30,1.45,30s0,10.23,1.31,15.13c0.72,2.7,2.85,4.83,5.56,5.56
            C13.23,52,32.88,52,32.88,52s19.66,0,24.56-1.31c2.7-0.72,4.83-2.85,5.56-5.56C64.31,40.23,64.31,30,64.31,30
            S64.31,19.77,63,14.87z"/>
          <polygon fill="#FFFFFF" points="26.6,39.43 42.93,30 26.6,20.57"/>
        </g>
        <g>
          <g id="youtube-paths">
            <path fill="#282828" d="M92.69,48.03c-1.24-0.84-2.13-2.14-2.65-3.91c-0.52-1.77-0.79-4.12-0.79-7.06v-4
              c0-2.97,0.3-5.35,0.9-7.15c0.6-1.8,1.54-3.11,2.81-3.93c1.27-0.82,2.94-1.24,5.01-1.24c2.04,0,3.67,0.42,4.9,1.26
              c1.23,0.84,2.13,2.15,2.7,3.93c0.57,1.78,0.85,4.16,0.85,7.12v4c0,2.94-0.28,5.3-0.83,7.08c-0.55,1.78-1.45,3.09-2.7,3.91
              c-1.24,0.82-2.93,1.24-5.06,1.24C95.65,49.29,93.93,48.87,92.69,48.03z M99.66,43.71c0.34-0.9,0.52-2.37,0.52-4.4v-8.59
              c0-1.98-0.17-3.42-0.52-4.34c-0.34-0.91-0.95-1.37-1.82-1.37c-0.84,0-1.43,0.46-1.78,1.37c-0.34,0.91-0.52,2.36-0.52,4.34v8.59
              c0,2.04,0.16,3.51,0.49,4.4c0.33,0.9,0.93,1.35,1.8,1.35C98.71,45.06,99.31,44.61,99.66,43.71z"/>
            <path fill="#282828" d="M188.16,37.13v1.39c0,1.77,0.05,3.09,0.16,3.98c0.1,0.88,0.32,1.53,0.65,1.93
              c0.33,0.4,0.84,0.61,1.53,0.61c0.93,0,1.57-0.36,1.91-1.08c0.34-0.72,0.53-1.92,0.56-3.6l5.35,0.31
              c0.03,0.24,0.04,0.57,0.04,0.99c0,2.55-0.7,4.45-2.09,5.71c-1.39,1.26-3.36,1.89-5.91,1.89c-3.06,0-5.2-0.96-6.43-2.88
              c-1.23-1.92-1.84-4.88-1.84-8.9v-4.81c0-4.14,0.64-7.15,1.91-9.06c1.27-1.9,3.45-2.85,6.54-2.85c2.13,0,3.76,0.39,4.9,1.17
              c1.14,0.78,1.94,1.99,2.41,3.64c0.46,1.65,0.7,3.93,0.7,6.83v4.72H188.16z M188.95,25.53c-0.31,0.39-0.52,1.03-0.63,1.91
              c-0.11,0.88-0.16,2.23-0.16,4.02v1.98h4.54v-1.98c0-1.77-0.06-3.11-0.18-4.02c-0.12-0.91-0.34-1.56-0.65-1.93
              c-0.31-0.37-0.8-0.56-1.46-0.56C189.75,24.94,189.26,25.14,188.95,25.53z"/>
            <path fill="#282828" d="M77.59,36.61l-7.06-25.49h6.16l2.47,11.55c0.63,2.85,1.09,5.27,1.39,7.28h0.18
              c0.21-1.44,0.67-3.85,1.39-7.24l2.56-11.6h6.16L83.7,36.61v12.23h-6.11V36.61z"/>
            <path fill="#282828" d="M126.45,21.28v27.55h-4.85l-0.54-3.37h-0.13c-1.32,2.55-3.3,3.82-5.93,3.82c-1.83,0-3.18-0.6-4.05-1.8
              c-0.87-1.2-1.3-3.07-1.3-5.62V21.28h6.2v20.23c0,1.23,0.13,2.11,0.4,2.63c0.27,0.52,0.72,0.79,1.35,0.79
              c0.54,0,1.06-0.16,1.55-0.49c0.49-0.33,0.86-0.75,1.1-1.26V21.28H126.45z"/>
            <path fill="#282828" d="M158.27,21.28v27.55h-4.85l-0.54-3.37h-0.13c-1.32,2.55-3.3,3.82-5.93,3.82c-1.83,0-3.18-0.6-4.05-1.8
              c-0.87-1.2-1.3-3.07-1.3-5.62V21.28h6.2v20.23c0,1.23,0.13,2.11,0.4,2.63c0.27,0.52,0.72,0.79,1.35,0.79
              c0.54,0,1.06-0.16,1.55-0.49c0.49-0.33,0.86-0.75,1.1-1.26V21.28H158.27z"/>
            <path fill="#282828" d="M143.31,16.11h-6.16v32.72h-6.07V16.11h-6.16v-4.99h18.38V16.11z"/>
            <path fill="#282828" d="M178.8,25.69c-0.38-1.74-0.98-3-1.82-3.78c-0.84-0.78-1.99-1.17-3.46-1.17c-1.14,0-2.2,0.32-3.19,0.97
              c-0.99,0.64-1.75,1.49-2.29,2.54h-0.05l0-14.52h-5.98v39.11h5.12l0.63-2.61h0.13c0.48,0.93,1.2,1.66,2.16,2.2
              c0.96,0.54,2.02,0.81,3.19,0.81c2.1,0,3.64-0.97,4.63-2.9c0.99-1.93,1.48-4.95,1.48-9.06v-4.36
              C179.36,29.84,179.17,27.43,178.8,25.69z M173.11,36.93c0,2.01-0.08,3.58-0.25,4.72c-0.16,1.14-0.44,1.95-0.83,2.43
              c-0.39,0.48-0.91,0.72-1.57,0.72c-0.51,0-0.98-0.12-1.42-0.36c-0.43-0.24-0.79-0.6-1.06-1.08V27.71
              c0.21-0.75,0.57-1.36,1.08-1.84c0.51-0.48,1.06-0.72,1.66-0.72c0.63,0,1.12,0.25,1.46,0.74c0.34,0.49,0.58,1.33,0.72,2.49
              c0.13,1.17,0.2,2.83,0.2,4.99V36.93z"/>
          </g>
        </g>
      </g>
    </svg>
  </div>
  <div style="display: none;">
    <svg id="yt-logo-red-svg" class="external-icon" viewBox="0 0 98 24" style="width:86px;">
      <g id="yt-logo-red" viewBox="0 0 98 24" preserveAspectRatio="xMidYMid meet">
        <g>
          <path fill="#FF0000" d="M28.4,5.12c-0.34-1.24-1.31-2.2-2.55-2.52C23.62,2,14.68,2,14.68,2S5.75,2,3.52,2.6
            C2.29,2.93,1.33,3.89,1,5.12C0.59,7.39,0.39,9.69,0.4,12c-0.01,2.31,0.19,4.61,0.6,6.88c0.33,1.23,1.29,2.19,2.52,2.52
            C5.75,22,14.68,22,14.68,22s8.93,0,11.16-0.6c1.24-0.32,2.22-1.28,2.56-2.52c0.41-2.27,0.61-4.57,0.6-6.88
            C29.01,9.69,28.81,7.39,28.4,5.12z"/>
          <polygon fill="#FFFFFF" points="11.83,16.29 19.25,12 11.83,7.71"/>
        </g>
        <g id="youtube-red-paths">
          <path fill="#282828" d="M41.67,8.35V9c0,3.45-1.53,5.48-4.88,5.48h-0.51v6h-2.74V3.42h3.49C40.22,3.42,41.67,4.77,41.67,8.35z
            M38.79,8.6c0-2.49-0.45-3.09-2-3.09h-0.51v7h0.47c1.47,0,2-1.06,2-3.37L38.79,8.6z"/>
          <path fill="#282828" d="M48.14,7.83L48,11.08c-1.17-0.24-2.13-0.08-2.6,0.69v8.78h-2.67V8h2.17l0.24,2.71h0.1c0.28-2,1.2-3,2.39-3
            C47.8,7.73,47.98,7.77,48.14,7.83z"/>
          <path fill="#282828" d="M51.27,15.25v0.63c0,2.21,0.12,3,1.06,3s1.1-0.69,1.12-2.12l2.43,0.14c0.18,2.7-1.23,3.9-3.61,3.9
            c-2.9,0-3.76-1.9-3.76-5.35v-2.23c0-3.64,1-5.41,3.84-5.41s3.64,1.51,3.64,5.29v2.15H51.27z M51.27,12.67v0.9h2.06v-0.89
            c0-2.3-0.16-3-1-3s-1,0.67-1,3L51.27,12.67z"/>
          <path fill="#282828" d="M70.02,11.1v9.46H67.2v-9.25c0-1-0.27-1.53-0.88-1.53c-0.54,0.02-1.02,0.34-1.25,0.82
            c0.01,0.17,0.01,0.34,0,0.51v9.46h-2.79v-9.26c0-1-0.27-1.53-0.88-1.53c-0.53,0.02-1,0.33-1.23,0.8v10H57.4V8h2.23l0.25,1.59l0,0
            c0.51-1.12,1.63-1.85,2.86-1.86c1.05-0.07,1.98,0.67,2.16,1.7c0.55-1.01,1.61-1.65,2.76-1.66C69.4,7.78,70.02,9,70.02,11.1z"/>
          <path fill="#282828" d="M71.4,4.83c0-1.35,0.49-1.74,1.53-1.74s1.53,0.45,1.53,1.74s-0.47,1.74-1.53,1.74S71.4,6.22,71.4,4.83z
            M71.59,8h2.7v12.56h-2.7V8z"/>
          <path fill="#282828" d="M83.5,8v12.56h-2.2L81.05,19h-0.06c-0.46,1.08-1.53,1.77-2.7,1.74c-1.67,0-2.43-1.06-2.43-3.37V8h2.82
            v9.19c0,1.1,0.23,1.55,0.8,1.55c0.52-0.02,0.98-0.33,1.2-0.8V8H83.5z"/>
          <path fill="#282828" d="M97.8,11.1v9.46h-2.82v-9.25c0-1-0.27-1.53-0.88-1.53c-0.54,0.02-1.02,0.34-1.25,0.82
            c0.01,0.17,0.01,0.34,0,0.51v9.46h-2.79v-9.26c0-1-0.27-1.53-0.88-1.53c-0.53,0.02-1,0.33-1.23,0.8v10h-2.81V8h2.26l0.24,1.59l0,0
            c0.51-1.12,1.63-1.85,2.86-1.86c1.04-0.07,1.97,0.64,2.17,1.66c0.55-0.99,1.6-1.61,2.73-1.62C97.15,7.78,97.8,9,97.8,11.1z"/>
        </g>
      </g>
    </svg>
  </div>
<span id="country-code"></span></div><div id="masthead-skeleton-icons" slot="masthead-skeleton"><div class="masthead-skeleton-icon"></div><div class="masthead-skeleton-icon"></div><div class="masthead-skeleton-icon"></div><div class="masthead-skeleton-icon"></div></div></ytd-masthead>
      <a slot="guide-links-primary" href="https://www.youtube.com/about/" style="display: none;">About</a>
  <a slot="guide-links-primary" href="https://www.youtube.com/about/press/" style="display: none;">Press</a>
  <a slot="guide-links-primary" href="https://www.youtube.com/about/copyright/" style="display: none;">Copyright</a>
  <a slot="guide-links-primary" href="/t/contact_us" style="display: none;">Contact us</a>
  <a slot="guide-links-primary" href="https://www.youtube.com/creators/" style="display: none;">Creators</a>
  <a slot="guide-links-primary" href="https://www.youtube.com/ads/" style="display: none;">Advertise</a>
  <a slot="guide-links-primary" href="https://developers.google.com/youtube" style="display: none;">Developers</a>

      <a slot="guide-links-secondary" href="/t/terms" style="display: none;">Terms</a>
  <a slot="guide-links-secondary" href="https://www.google.com/intl/en/policies/privacy/" style="display: none;">Privacy</a>
  <a slot="guide-links-secondary" href="https://www.youtube.com/about/policies/" style="display: none;">Policy &amp; Safety</a>
    <a slot="guide-links-secondary" href="https://www.youtube.com/howyoutubeworks?utm_campaign=ytgen&amp;utm_source=ythp&amp;utm_medium=LeftNav&amp;utm_content=txt&amp;u=https%3A%2F%2Fwww.youtube.com%2Fhowyoutubeworks%3Futm_source%3Dythp%26utm_medium%3DLeftNav%26utm_campaign%3Dytgen" style="display: none;">How YouTube works</a>
  <a slot="guide-links-secondary" href="/new" style="display: none;">Test new features</a>

      <div id="vat-notice" slot="vat-notice" style="display: none;">
  </div>

      <div id="copyright" slot="copyright" style="display: none;">
    <div dir="ltr" style="display:inline">&copy; 2020 Google LLC</div>
  </div>

  </ytd-app>

  <script >if (window.ytcsi) {window.ytcsi.tick("nc_pj", null, '');}</script>
    
<script  src="https://www.youtube.com/s/desktop/02e79665/jsbin/spf.vflset/spf.js" type="text/javascript" name="spf/spf" ></script>  
<script >if (window['_spf_state']) {window['_spf_state'].config = {"assume-all-json-requests-chunked":true};}</script>  
<script  src="https://www.youtube.com/s/desktop/02e79665/jsbin/network.vflset/network.js" type="text/javascript" name="network/network" ></script>  
  
<script  src="https://www.youtube.com/s/desktop/02e79665/jsbin/web-animations-next-lite.min.vflset/web-animations-next-lite.min.js" type="text/javascript" name="web-animations-next-lite.min/web-animations-next-lite.min" ></script>  
  
<script  src="https://www.youtube.com/s/desktop/02e79665/jsbin/webcomponents-lite-noPatch.vflset/webcomponents-lite-noPatch.js" type="text/javascript" name="webcomponents-lite-noPatch/webcomponents-lite-noPatch" ></script>  
  
<script  src="https://www.youtube.com/s/desktop/02e79665/jsbin/fetch-polyfill.vflset/fetch-polyfill.js" type="text/javascript" name="fetch-polyfill/fetch-polyfill" ></script>  
  
<script  src="https://www.youtube.com/s/desktop/02e79665/jsbin/www-i18n-constants-en_US.vflset/www-i18n-constants.js" type="text/javascript" name="www-i18n-constants/www-i18n-constants" ></script>  
      <script >if (window.ytcsi) {window.ytcsi.tick("rsbe_dpj", null, '');}</script>


<script >(function() {var loadJS = function(e) {if (e) {window.removeEventListener('HTMLImportsLoaded', loadJS);}var script = document.createElement("script");script.src="https://www.youtube.com/s/desktop/02e79665/jsbin/desktop_polymer_inlined_html_polymer_flags_legacy_browsers.vflset/desktop_polymer_inlined_html_polymer_flags_legacy_browsers.js";document.body.appendChild(script);script.onload = function() {var loadEvent = new Event("script-load-dpj");window.dispatchEvent(loadEvent);};};if (window.HTMLImports && window.HTMLImports.ready) {loadJS();} else {window.addEventListener('HTMLImportsLoaded', loadJS);}})();</script>      <script >if (window.ytcsi) {window.ytcsi.tick("rsae_dpj", null, '');}</script>

  
<script >var scheduleAppLoad=function(){window.removeEventListener("script-load-dpj",scheduleAppLoad);if(window.ytsignals&&window.ytsignals.getInstance){var a=window.ytsignals.getInstance(),b=a.onAny(["eoir","eor"]);a.parkOrScheduleJob(appLoad,3,b)}else if(appLoad(),a=window.navigator.userAgent,a=-1===a.indexOf("msnbot")&&-1===a.indexOf("BingPreview")&&-1===a.indexOf("bingbot"))window.onerror("ytsignals missing","async_attach_app_loader.js",0,0,Error("ytsignals missing"))},appLoad=function(){var a=window.ytcsi;
a&&a.tick("apa_b");var b=document.querySelector("ytd-app"),c=b&&b.querySelector("ytd-masthead");c&&c.removeAttribute("disable-upgrade");b&&b.removeAttribute("disable-upgrade");a&&a.tick("apa_a")},ytSignals=window.ytsignals;ytSignals?scheduleAppLoad():window.addEventListener("script-load-dpj",scheduleAppLoad);
</script>  

  <script >
    if (window.ytcsi) {window.ytcsi.tick("ac", null, '');}
    var onPolymerReady = function(e) {
      window.removeEventListener('script-load-dpj', onPolymerReady);
      if (window.ytcsi) {window.ytcsi.tick("apr", null, '');}
    }

    if (window.Polymer && Polymer.RenderStatus) {
      onPolymerReady();
    } else {
      window.addEventListener('script-load-dpj', onPolymerReady);
    }

  </script>
  <!-- end of chunk -->
    <div id="watch-page-skeleton" class="watch-skeleton ">
    <div id="container">
      <div id="related">
        <div class="autoplay skeleton-light-border-bottom">
          <div id="upnext" class="skeleton-bg-color"></div>
            <div class="video-skeleton">
    <div class="video-details">
      <div class="thumbnail skeleton-bg-color"></div>
      <div class="details flex-1">
        <div class="video-title text-shell skeleton-bg-color"></div>
        <div class="video-meta text-shell skeleton-bg-color"></div>
      </div>
    </div>
  </div>

        </div>
            <div class="video-skeleton">
    <div class="video-details">
      <div class="thumbnail skeleton-bg-color"></div>
      <div class="details flex-1">
        <div class="video-title text-shell skeleton-bg-color"></div>
        <div class="video-meta text-shell skeleton-bg-color"></div>
      </div>
    </div>
  </div>

            <div class="video-skeleton">
    <div class="video-details">
      <div class="thumbnail skeleton-bg-color"></div>
      <div class="details flex-1">
        <div class="video-title text-shell skeleton-bg-color"></div>
        <div class="video-meta text-shell skeleton-bg-color"></div>
      </div>
    </div>
  </div>

            <div class="video-skeleton">
    <div class="video-details">
      <div class="thumbnail skeleton-bg-color"></div>
      <div class="details flex-1">
        <div class="video-title text-shell skeleton-bg-color"></div>
        <div class="video-meta text-shell skeleton-bg-color"></div>
      </div>
    </div>
  </div>

            <div class="video-skeleton">
    <div class="video-details">
      <div class="thumbnail skeleton-bg-color"></div>
      <div class="details flex-1">
        <div class="video-title text-shell skeleton-bg-color"></div>
        <div class="video-meta text-shell skeleton-bg-color"></div>
      </div>
    </div>
  </div>

            <div class="video-skeleton">
    <div class="video-details">
      <div class="thumbnail skeleton-bg-color"></div>
      <div class="details flex-1">
        <div class="video-title text-shell skeleton-bg-color"></div>
        <div class="video-meta text-shell skeleton-bg-color"></div>
      </div>
    </div>
  </div>

            <div class="video-skeleton">
    <div class="video-details">
      <div class="thumbnail skeleton-bg-color"></div>
      <div class="details flex-1">
        <div class="video-title text-shell skeleton-bg-color"></div>
        <div class="video-meta text-shell skeleton-bg-color"></div>
      </div>
    </div>
  </div>

            <div class="video-skeleton">
    <div class="video-details">
      <div class="thumbnail skeleton-bg-color"></div>
      <div class="details flex-1">
        <div class="video-title text-shell skeleton-bg-color"></div>
        <div class="video-meta text-shell skeleton-bg-color"></div>
      </div>
    </div>
  </div>

            <div class="video-skeleton">
    <div class="video-details">
      <div class="thumbnail skeleton-bg-color"></div>
      <div class="details flex-1">
        <div class="video-title text-shell skeleton-bg-color"></div>
        <div class="video-meta text-shell skeleton-bg-color"></div>
      </div>
    </div>
  </div>

            <div class="video-skeleton">
    <div class="video-details">
      <div class="thumbnail skeleton-bg-color"></div>
      <div class="details flex-1">
        <div class="video-title text-shell skeleton-bg-color"></div>
        <div class="video-meta text-shell skeleton-bg-color"></div>
      </div>
    </div>
  </div>

      </div>
      <div id="info-container">
        <div id="primary-info" class="skeleton-light-border-bottom">
          <div id="title" class="text-shell skeleton-bg-color"></div>
          <div id="info">
            <div id="count" class="text-shell skeleton-bg-color"></div>
            <div class="flex-1"></div>
            <div id="menu">
                <div class="menu-button skeleton-bg-color"></div>
                <div class="menu-button skeleton-bg-color"></div>
                <div class="menu-button skeleton-bg-color"></div>
                <div class="menu-button skeleton-bg-color"></div>
                <div class="menu-button skeleton-bg-color"></div>
            </div>
          </div>
        </div>
        <div id="secondary-info" class="skeleton-light-border-bottom">
          <div id="top-row">
            <div id="video-owner" class="flex-1">
              <div id="channel-icon" class="skeleton-bg-color"></div>
              <div id="upload-info" class="flex-1">
                <div id="owner-name"
                     class="text-shell skeleton-bg-color">
                </div>
                <div id="published-date"
                    class="text-shell skeleton-bg-color">
                </div>
              </div>
            </div>
            <div id="subscribe-button" class="skeleton-bg-color"></div>
          </div>
        </div>
      </div>
    </div>
  </div>

    <script >if (window.ytcsi) {window.ytcsi.tick("gcc", null, '');}</script>  <script >if (window.ytcsi) {window.ytcsi.tick("pdc", null, '');}</script>
    <link rel="canonical" href="https://www.youtube.com/watch?v=vKLN5UKo87c">

    <link rel="alternate" media="handheld" href="https://m.youtube.com/watch?feature=youtu.be%0A&amp;v=vKLN5UKo87c">
    <link rel="alternate" media="only screen and (max-width: 640px)" href="https://m.youtube.com/watch?feature=youtu.be%0A&amp;v=vKLN5UKo87c">
  <meta name="theme-color" content="rgba(255, 255, 255, 0.98)">

      <meta name="description" content="Enjoy the videos and music you love, upload original content, and share it all with friends, family, and the world on YouTube.">
    <meta name="keywords" content="video, sharing, camera phone, video phone, free, upload">
    <iframe src="https://accounts.google.com/ServiceLogin?continue=https%3A%2F%2Fwww.youtube.com%2Fsignin%3Faction_handle_signin%3Dtrue%26app%3Ddesktop%26feature%3Dpassive%26hl%3Den%26next%3D%252Fsignin_passive&amp;hl=en&amp;passive=true&amp;service=youtube&amp;uilel=3" style="display: none" ></iframe>
  </head>
  <body dir="ltr" no-y-overflow>
  <script >
    if (window.ytcsi) {window.ytcsi.tick("bs", null, '');}    ytcfg.set('initialBodyClientWidth', document.body.clientWidth);

    window.ytcfg.set('SERVICE_WORKER_KILLSWITCH', false);
  </script>
  <script >
    window["ytInitialData"] = {"responseContext":{"webResponseContextExtensionData":{"ytConfigData":{"csn":"kI2KX8DgOIGm8wS13Ym4Bg","visitorData":"CgtMVi12UjBnTnRMTSiQm6r8BQ%3D%3D","rootVisualElementType":3832}}},"webWatchNextResponseExtensionData":{"relatedVideoArgs":""}};
    window["ytInitialPlayerResponse"] = {"responseContext":{"serviceTrackingParams":[{"service":"GFEEDBACK","params":[{"key":"is_viewed_live","value":"False"},{"key":"logged_in","value":"0"},{"key":"e","value":"23744176,23880043,23946420,23956754,23939458,23890959,23918597,23839597,23947698,23916390,23948841,23934970,23940248,23938800,23956987,23942338,23942633,23857949,23948944,23885566,23884386,23948131,23951138,23956286,23944779,23939097,23928508,23947683,1714240,23955865,23911055,23930220,23953875,23940704,23915654,23804281,23882502,23956098"}]},{"service":"CSI","params":[{"key":"c","value":"WEB"},{"key":"cver","value":"2.20201016.02.00"},{"key":"yt_li","value":"0"},{"key":"GetPlayer_rid","value":"0x94874a5ba7088dc5"}]},{"service":"GUIDED_HELP","params":[{"key":"logged_in","value":"0"}]},{"service":"ECATCHER","params":[{"key":"client.version","value":"2.20201014"},{"key":"client.name","value":"WEB"}]}],"webResponseContextExtensionData":{"ytConfigData":{"csn":"kI2KX8DgOIGm8wS13Ym4Bg","visitorData":"CgtMVi12UjBnTnRMTSiQm6r8BQ%3D%3D","rootVisualElementType":3832},"hasDecorated":true}},"playabilityStatus":{"status":"LOGIN_REQUIRED","messages":["This is a private video. Please sign in to verify that you may see it."],"errorScreen":{"playerErrorMessageRenderer":{"subreason":{"simpleText":"Sign in if you've been granted access to this video"},"reason":{"simpleText":"Private video"},"proceedButton":{"buttonRenderer":{"style":"STYLE_OVERLAY","size":"SIZE_DEFAULT","isDisabled":false,"text":{"simpleText":"Sign in"},"navigationEndpoint":{"clickTrackingParams":"CAEQ8FsiEwigw4e1_rrsAhXZ7eMHHQhUBNc=","commandMetadata":{"webCommandMetadata":{"url":"https://accounts.google.com/ServiceLogin?service=youtube\u0026uilel=3\u0026passive=true\u0026continue=https%3A%2F%2Fwww.youtube.com%2Fsignin%3Faction_handle_signin%3Dtrue%26app%3Ddesktop%26hl%3Den%26next%3D%252Fwatch%253Fv%253DvKLN5UKo87c%2526feature%253Dyoutu.be%25250A\u0026hl=en","webPageType":"WEB_PAGE_TYPE_UNKNOWN","rootVe":83769}},"signInEndpoint":{"nextEndpoint":{"clickTrackingParams":"CAEQ8FsiEwigw4e1_rrsAhXZ7eMHHQhUBNc=","commandMetadata":{"webCommandMetadata":{"url":"/watch?v=vKLN5UKo87c\u0026feature=youtu.be%0A","webPageType":"WEB_PAGE_TYPE_UNKNOWN","rootVe":83769}},"urlEndpoint":{"url":"/watch?v=vKLN5UKo87c\u0026feature=youtu.be%0A"}}}},"trackingParams":"CAEQ8FsiEwigw4e1_rrsAhXZ7eMHHQhUBNc="}},"thumbnail":{"thumbnails":[{"url":"//s.ytimg.com/yts/img/meh7-vflGevej7.png","width":140,"height":100}]},"icon":{"iconType":"ERROR_OUTLINE"}}},"contextParams":"Q0FBU0FnZ0E="},"trackingParams":"CAAQu2kiEwigw4e1_rrsAhXZ7eMHHQhUBNc="};
    if (window.ytcsi) {window.ytcsi.tick("pdr", null, '');}
  </script>
      <script >(function() {var configs = {"WEB_PLAYER_CONTEXT_CONFIG_ID_KEVLAR_WATCH":{"transparentBackground":true,"useFastSizingOnWatchDefault":false,"showMiniplayerButton":true,"externalFullscreen":true,"showMiniplayerUiWhenMinimized":true,"rootElementId":"movie_player","jsUrl":"/s/player/00510e67/player_ias.vflset/en_US/base.js","cssUrl":"/s/player/00510e67/www-player.css","contextId":"WEB_PLAYER_CONTEXT_CONFIG_ID_KEVLAR_WATCH","eventLabel":"detailpage","contentRegion":"US","hl":"en_US","hostLanguage":"en","playerStyle":"desktop-polymer","innertubeApiKey":"AIzaSyAO_FJ2SlqU8Q4STEHLGCilw_Y9_11qcW8","innertubeApiVersion":"v1","innertubeContextClientVersion":"2.20201016.02.00","device":{"interfaceName":"WEB","interfaceVersion":"2.20201016.02.00"},"canaryState":"none","enableCsiLogging":true,"csiPageType":"watch"},"WEB_PLAYER_CONTEXT_CONFIG_ID_KEVLAR_VERTICAL_LANDING_PAGE_PROMO":{"rootElementId":"ytd-default-promo-panel-renderer-inline-playback-renderer","jsUrl":"/s/player/00510e67/player_ias.vflset/en_US/base.js","cssUrl":"/s/player/00510e67/www-player.css","contextId":"WEB_PLAYER_CONTEXT_CONFIG_ID_KEVLAR_VERTICAL_LANDING_PAGE_PROMO","eventLabel":"profilepage","contentRegion":"US","hl":"en_US","hostLanguage":"en","playerStyle":"desktop-polymer","innertubeApiKey":"AIzaSyAO_FJ2SlqU8Q4STEHLGCilw_Y9_11qcW8","innertubeApiVersion":"v1","innertubeContextClientVersion":"2.20201016.02.00","controlsType":0,"disableRelatedVideos":true,"annotationsLoadPolicy":3,"device":{"interfaceName":"WEB","interfaceVersion":"2.20201016.02.00"},"hideInfo":true,"startMuted":true,"enableMutedAutoplay":true,"canaryState":"none","enableCsiLogging":true,"csiPageType":"channels"},"WEB_PLAYER_CONTEXT_CONFIG_ID_KEVLAR_SPONSORSHIPS_OFFER":{"rootElementId":"ytd-sponsorships-offer-with-video-renderer","jsUrl":"/s/player/00510e67/player_ias.vflset/en_US/base.js","cssUrl":"/s/player/00510e67/www-player.css","contextId":"WEB_PLAYER_CONTEXT_CONFIG_ID_KEVLAR_SPONSORSHIPS_OFFER","eventLabel":"sponsorshipsoffer","contentRegion":"US","hl":"en_US","hostLanguage":"en","playerStyle":"desktop-polymer","innertubeApiKey":"AIzaSyAO_FJ2SlqU8Q4STEHLGCilw_Y9_11qcW8","innertubeApiVersion":"v1","innertubeContextClientVersion":"2.20201016.02.00","disableRelatedVideos":true,"annotationsLoadPolicy":3,"device":{"interfaceName":"WEB","interfaceVersion":"2.20201016.02.00"},"disableFullscreen":true,"canaryState":"none"},"WEB_PLAYER_CONTEXT_CONFIG_ID_KEVLAR_PLAYLIST_OVERVIEW":{"rootElementId":"c4-player","jsUrl":"/s/player/00510e67/player_ias.vflset/en_US/base.js","cssUrl":"/s/player/00510e67/www-player.css","contextId":"WEB_PLAYER_CONTEXT_CONFIG_ID_KEVLAR_PLAYLIST_OVERVIEW","eventLabel":"playlistoverview","contentRegion":"US","hl":"en_US","hostLanguage":"en","playerStyle":"desktop-polymer","innertubeApiKey":"AIzaSyAO_FJ2SlqU8Q4STEHLGCilw_Y9_11qcW8","innertubeApiVersion":"v1","innertubeContextClientVersion":"2.20201016.02.00","device":{"interfaceName":"WEB","interfaceVersion":"2.20201016.02.00"},"disableSharing":true,"hideInfo":true,"disableWatchLater":true,"canaryState":"none","enableCsiLogging":true,"csiPageType":"playlist_overview"},"WEB_PLAYER_CONTEXT_CONFIG_ID_KEVLAR_CHANNEL_TRAILER":{"rootElementId":"c4-player","jsUrl":"/s/player/00510e67/player_ias.vflset/en_US/base.js","cssUrl":"/s/player/00510e67/www-player.css","contextId":"WEB_PLAYER_CONTEXT_CONFIG_ID_KEVLAR_CHANNEL_TRAILER","eventLabel":"profilepage","contentRegion":"US","hl":"en_US","hostLanguage":"en","playerStyle":"desktop-polymer","innertubeApiKey":"AIzaSyAO_FJ2SlqU8Q4STEHLGCilw_Y9_11qcW8","innertubeApiVersion":"v1","innertubeContextClientVersion":"2.20201016.02.00","device":{"interfaceName":"WEB","interfaceVersion":"2.20201016.02.00"},"canaryState":"none","enableCsiLogging":true,"csiPageType":"channels"}};for (var contextId in configs) {configs[contextId]['serializedExperimentIds'] = "23744176,23768780,23804281,23839597,23856950,23857949,23868320,23880043,23882502,23884386,23885566,23890959,23895671,23911055,23911513,23915654,23915993,23916390,23918597,23928508,23930220,23934970,23938800,23939097,23939458,23940248,23940704,23942338,23942633,23944779,23945480,23946420,23947683,23947698,23948131,23948841,23948944,23948944,23950390,23951138,23953875,23955865,23956098,23956286,23956754,23956987,23961290,24631483,9449243";configs[contextId]['serializedExperimentFlags'] = "player_enable_playback_playlist_change=true\u0026html5_disable_non_contiguous=true\u0026html5_probe_live_using_range=true\u0026html5_health_to_gel=true\u0026html5_allow_video_keyframe_without_audio=true\u0026html5_enable_per_format_loudness=true\u0026allow_live_autoplay=true\u0026html5_workaround_delay_trigger=true\u0026html5_ios_force_seek_to_zero_on_stop=true\u0026kevlar_autonav_miniplayer_fix=true\u0026html5_seek_new_elem_delay_ms=12000\u0026html5_desktop_vr180_allow_panning=true\u0026html5_prefer_server_bwe3=true\u0026html5_gapless_no_requests_after_lock=true\u0026html5_remove_pause=false\u0026html5_min_readbehind_secs=0\u0026html5_ios7_force_play_on_stall=true\u0026html5_hls_min_video_height=0\u0026web_player_sentinel_is_uniplayer=true\u0026html5_autoplay_default_quality_cap=0\u0026preskip_button_style_ads_backend=countdown_next_to_thumbnail\u0026html5_subsegment_readahead_min_buffer_health_secs_on_timeout=0.1\u0026kevlar_frontend_video_list_actions=true\u0026enable_client_deferred_full_screen_filtering_for_mweb_phones=true\u0026skip_ad_button_with_thumbnail=true\u0026kevlar_miniplayer_play_pause_on_scrim=true\u0026hide_preskip=true\u0026html5_error_cooldown_in_ms=30000\u0026web_player_api_logging_fraction=0.01\u0026html5_random_playback_cap=0\u0026html5_unrewrite_timestamps=true\u0026html5_jumbo_ull_nonstreaming_mffa_ms=4000\u0026enable_kevlar_action_companion_cleanup=true\u0026html5_min_readbehind_cap_secs=60\u0026html5_live_ultra_low_latency_bandwidth_window=0.0\u0026bulleit_get_midroll_info_timeout_ms=8000\u0026web_player_ipp_canary_type_for_logging=\u0026use_survey_skip_in_0s=true\u0026live_fresca_v2=true\u0026enable_topsoil_wta_for_halftime=true\u0026self_podding_header_string_template=self_podding_interstitial_message\u0026tvhtml5_unplugged_preload_cache_size=5\u0026player_destroy_old_version=true\u0026playready_first_play_expiration=-1\u0026html5_restore_perf_cap=false\u0026html5_disable_aac_ac3=true\u0026desktop_player_button_tooltip_with_shortcut=true\u0026html5_df_downgrade_thresh=0.2\u0026enable_eviction_protection_for_bulleit=true\u0026html5_hdcp_probing_stream_url=\u0026web_yt_config_context=true\u0026html5_pause_on_nonforeground_platform_errors=true\u0026mweb_native_control_in_faux_fullscreen_shared=true\u0026self_podding_highlighted_button_blue=true\u0026html5_probe_secondary_during_timeout_miss_count=2\u0026html5_non_network_rebuffer_duration_ms=0\u0026kevlar_gel_error_routing=true\u0026html5_default_ad_gain=0.5\u0026html5_reload_element_long_rebuffer_delay_ms=20000\u0026web_client_version_override=\u0026html5_buffer_health_to_defer_slice_processing=0.0\u0026html5_crypto_period_secs_from_emsg=true\u0026html5_background_quality_cap=360\u0026unplugged_tvhtml5_botguard_attestation=true\u0026html5_new_element_on_invalid_state=true\u0026suppress_error_204_logging=true\u0026web_player_response_playback_tracking_parsing=true\u0026web_op_continuation_type_banlist=()\u0026html5_decode_to_texture_cap=true\u0026html5_fludd_suspend=true\u0026mweb_enable_skippables_on_jio_phone=true\u0026html5_gapless_seek_tolerance_secs=3.0\u0026html5_default_quality_cap=0\u0026html5_player_min_build_cl=-1\u0026html5_autonav_cap_idle_secs=0\u0026enable_device_forwarding_from_xhr_client=true\u0026web_player_live_monitor_env=true\u0026mweb_enable_custom_control_shared=true\u0026html5_disable_reset_on_append_error=true\u0026player_doubletap_to_seek=true\u0026html5_ignore_bad_bitrates=true\u0026debug_dapper_trace_id=\u0026web_player_innertube_share_panel=true\u0026max_resolution_for_white_noise=360\u0026kevlar_allow_multistep_video_init=true\u0026network_polling_interval=30000\u0026web_player_music_visualizer_treatment=fake\u0026html5_enable_eac3=true\u0026html5_ads_preroll_lock_timeout_delay_ms=0\u0026disable_simple_mixed_direction_formatted_strings=true\u0026csi_on_gel=true\u0026html5_max_live_dvr_window_plus_margin_secs=46800.0\u0026html5_expanded_max_vss_pings=true\u0026html5_subsegment_readahead_target_buffer_health_secs=0.5\u0026html5_manifestless_media_source_duration=25200\u0026web_player_vss_pageid_header=true\u0026html5_hfr_quality_cap=0\u0026html5_jumbo_mobile_subsegment_readahead_target=3.0\u0026hoffle_cache_size_secs=0\u0026html5_store_xhr_headers_readable=true\u0026player_ads_set_adformat_on_client=true\u0026html5_vp9_new_mime=true\u0026html5_live_normal_latency_bandwidth_window=0.0\u0026html5_ad_timeout_ms=0\u0026player_web_canary_stage=0\u0026external_fullscreen_with_edu=true\u0026html5_qoe_intercept=\u0026html5_av1_thresh_hcc=1080\u0026html5_subsegment_readahead_min_buffer_health_secs=0.25\u0026autoplay_time_for_music_content=-1\u0026enable_ve_tracker_key=true\u0026use_touch_events_for_bulleit_mweb=true\u0026html5_disable_extra_update_resource=true\u0026html5_minimum_readahead_seconds=0.0\u0026html5_request_size_padding_secs=3.0\u0026live_chunk_readahead=3\u0026html5_live_low_latency_bandwidth_window=0.0\u0026web_player_show_music_in_this_video_graphic=video_thumbnail\u0026html5_stop_video_in_cancel_playback=true\u0026html5_av1_thresh=1080\u0026web_op_signal_type_banlist=()\u0026html5_heartbeat_set_ended=true\u0026html5_license_constraint_delay=5000\u0026html5_gapless_preloading=true\u0026kevlar_queue_use_dedicated_list_type=true\u0026live_fresca_scheduled_persistent=true\u0026web_post_search=true\u0026fast_autonav_in_background=true\u0026html5_av1_thresh_lcc=480\u0026networkless_throttle_timeout=100\u0026use_typescript_transport=true\u0026kevlar_queue_use_update_api=true\u0026html5_seek_over_discontinuities=true\u0026self_podding_highlight_non_default_button=true\u0026html5_inline_video_quality_survey=true\u0026html5_in_buffer_ptl_timeout_ms=0\u0026html5_log_live_discontinuity=true\u0026mdx_enable_privacy_disclosure_ui=true\u0026html5_rewrite_manifestless_for_continuity=true\u0026variable_load_timeout_ms=0\u0026web_player_ss_media_time_offset=true\u0026html5_source_buffer_attach_delay_time=15000\u0026enable_live_premiere_web_player_indicator=true\u0026web_network_combined_catch=true\u0026web_player_watch_next_response=true\u0026desktop_action_companion_wta_support=true\u0026html5_av1_tv_killswitch=true\u0026html5_check_segnum_discontinuity=true\u0026enable_svg_mode_on_embed_mobile=true\u0026html5_encourage_array_coalescing=true\u0026enable_cookie_reissue_iframe=true\u0026html5_subsegment_readahead_seek_latency_fudge=0.5\u0026log_js_exceptions_fraction=1.0\u0026html5_player_autonav_logging=true\u0026web_player_inline_botguard=true\u0026html5_restrict_streaming_xhr_on_sqless_requests=true\u0026html5_max_headm_for_streaming_xhr=0\u0026html5_set_ended_in_pfx_live=true\u0026html5_new_elem_on_hidden=true\u0026web_player_no_endscreen_crop=true\u0026html5_log_playback_rate_change_killswitch=true\u0026html5_readahead_ratelimit=3000\u0026html5_allowable_liveness_drift_chunks=2\u0026hoffle_max_video_duration_secs=0\u0026html5_post_interrupt_readahead=20\u0026disable_thumbnail_preloading=true\u0026player_allow_autonav_after_playlist=true\u0026polymer_verifiy_app_state=true\u0026web_deprecate_service_ajax_map_dependency=true\u0026self_podding_midroll_choice_string_template=self_podding_midroll_choice\u0026html5_sync_seeking_state=true\u0026html5_qoe_user_intent_match_health=true\u0026autoplay_time=8000\u0026html5_license_server_error_retry_limit=3\u0026gvi_channel_client_screen=true\u0026web_player_touch_mode_improvements=true\u0026html5_sticky_reduces_discount_by=0.0\u0026web_wn_macro_markers=true\u0026self_podding_pod_choice_string_template=self_podding_pod_choice\u0026html5_safari_desktop_eme_min_version=0\u0026enable_client_page_id_header_for_first_party_pings=true\u0026html5_deadzone_multiplier=1.0\u0026html5_live_abr_head_miss_fraction=0.0\u0026html5_ignore_start_seconds_for_ads_killswitch=true\u0026html5_release_on_error=true\u0026html5_delay_initial_loading=true\u0026delay_ads_gvi_call_on_bulleit_living_room_ms=0\u0026midroll_notify_time_seconds=5\u0026html5_subsegment_readahead_load_speed_check_interval=0.5\u0026enable_mixed_direction_formatted_strings=true\u0026html5_video_tbd_min_kb=0\u0026web_player_response_fairplay_config_killswitch=true\u0026html5_subsegment_readahead_min_load_speed=1.5\u0026html5_request_sizing_multiplier=0.8\u0026html5_seek_set_cmt_delay_ms=2000\u0026html5_log_timestamp_offset=true\u0026tvhtml5_disable_live_prefetch=true\u0026desktop_image_companion_wta_support=true\u0026html5_gl_fps_threshold=0\u0026html5_performance_cap_floor=360\u0026html5_platform_minimum_readahead_seconds=0.0\u0026html5_manifestless_max_segment_history=0\u0026allow_poltergust_autoplay=true\u0026delay_gel_until_config_ready=true\u0026enable_device_forwarding_from_polymer_network_manager=true\u0026set_interstitial_start_button=true\u0026kevlar_miniplayer=true\u0026enable_ypc_clickwrap_on_living_room=true\u0026set_interstitial_advertisers_question_text=true\u0026html5_suspend_loader=true\u0026html5_max_drift_per_track_secs=0.0\u0026html5_player_dynamic_bottom_gradient=true\u0026html5_gapless_error_check_killswitch=true\u0026render_enhanced_overlays_as_ctas_for_desktop_style=unset\u0026web_player_include_innertube_commands=true\u0026enable_drm_ssdai=true\u0026networkless_request_age_limit=30\u0026html5_vp9_mime_full_range_flag=true\u0026polymer_bad_build_labels=true\u0026html5_max_readbehind_secs=0\u0026web_macro_markers_snapping_threshold=4\u0026html5_min_upgrade_health=0\u0026html5_decoder_freeze_timeout_delay_ms=0\u0026log_js_error_clusters=1.0\u0026html5_av1_thresh_arm=240\u0026enable_ad_pod_specific_ui=true\u0026web_gel_debounce_ms=10000\u0026html5_aspect_from_adaptive_format=true\u0026should_clear_video_data_on_player_cued_unstarted=true\u0026html5_seek_jiggle_cmt_delay_ms=8000\u0026use_inlined_player_rpc=true\u0026web_foreground_heartbeat_interval_ms=28000\u0026manifestless_post_live_ufph=true\u0026html5_live_abr_repredict_fraction=0.0\u0026manifestless_post_live=true\u0026html5_autonav_quality_cap=0\u0026web_player_bigger_buttons=true\u0026hfr_dropped_framerate_fallback_threshold=0\u0026web_api_url=true\u0026html5_disable_subscribe_new_vis=true\u0026html5_probe_primary_delay_base_ms=0\u0026web_gel_timeout_cap=true\u0026align_ad_to_video_player_lifecycle_for_bulleit=true\u0026web_screen_associated_all_layers=true\u0026html5_unreported_seek_reseek_delay_ms=0\u0026html5_max_readahead_bandwidth_cap=0\u0026web_player_response_overlay_parsing=false\u0026html5_maximum_readahead_seconds=0.0\u0026html5_manifestless_vp9_otf=true\u0026html5_bandwidth_window_size=0\u0026html5_remove_not_servable_check_killswitch=true\u0026networkless_retry_attempts=1\u0026html5_long_rebuffer_threshold_ms=30000\u0026html5_gapless_ad_byterate_multiplier=1.6\u0026autoplay_time_for_music_content_after_autoplayed_video=-1\u0026botguard_async_snapshot_timeout_ms=3000\u0026html5_gapless_max_played_ranges=12\u0026html5_source_buffer_attach_retry_limit=0\u0026html5_perf_cap_override_sticky=true\u0026bulleit_use_touch_events_for_skip=true\u0026web_player_icons=true\u0026web_client_counter_random_seed=true\u0026web_log_connection=true\u0026ignore_empty_xhr=true\u0026web_log_app_install_experiments=true\u0026html5_hls_initial_bitrate=0\u0026overwrite_polyfill_on_logging_lib_loaded=true\u0026web_op_endpoint_banlist=()\u0026ensure_only_one_resolved_midroll_response_on_web=true\u0026embeds_enable_embed_module=true\u0026suppress_sparkles_for_whitelisted_instream_on_desktop=true\u0026custom_csi_timeline_use_gel=true\u0026web_player_ios_mweb_resizing=true\u0026web_player_watch_next_response_parsing=true\u0026html5_use_current_media_time_for_glrem_gllat=true\u0026html5_hack_gapless_init=true\u0026html5_log_experiment_id_from_player_response_to_ctmp=\u0026use_ivar_to_extract_ad_video_id=true\u0026html5_unify_sqless_flow=true\u0026kevlar_miniplayer_expand_top=true\u0026html5_quality_cap_min_age_secs=0\u0026html5_experiment_id_label=0\u0026html5_ios4_seek_above_zero=true\u0026debug_sherlog_username=\u0026web_player_live_monitor_env_killswitch=true\u0026html5_gapless_ended_transition_buffer_ms=200\u0026pair_servlet_deprecation_warning_enabled=true\u0026botguard_eval_with_script_tag=true\u0026html5_jumbo_ull_subsegment_readahead_target=1.3\u0026disable_legacy_desktop_remote_queue=true\u0026html5_seek_timeout_delay_ms=20000\u0026kabuki_pangea_prefer_audio_only_for_atv_and_uploads=true\u0026use_video_ad_break_offset_ms_int64=true\u0026player_bootstrap_method=true\u0026disable_new_pause_state3=true\u0026html5_media_fullscreen=true\u0026dash_manifest_version=5\u0026kevlar_playback_associated_queue=true\u0026suppress_gen_204=true\u0026www_for_videostats=true\u0026html5_long_rebuffer_jiggle_cmt_delay_ms=0\u0026ad_pod_disable_companion_persist_ads_quality=true\u0026html5_manifestless_vp9=true\u0026desktop_sparkles_light_cta_button=true\u0026html5_time_based_consolidation_ms=10\u0026html5_enable_ac3=true\u0026html5_no_placeholder_rollbacks=true\u0026mweb_cougar_big_controls=true\u0026ensure_vis_persists_in_full_screen_for_mweb=true\u0026html5_disable_preserve_reference=true\u0026html5_disable_move_pssh_to_moov=true\u0026variable_buffer_timeout_ms=0\u0026html5_enable_embedded_player_visibility_signals=true\u0026web_player_live_monitor_env_killswitch2=true\u0026html5_subsegment_readahead_timeout_secs=2.0\u0026mweb_muted_autoplay_animation=shrink\u0026log_window_onerror_fraction=0.1\u0026networkless_ytidb_version=1\u0026html5_live_quality_cap=0\u0026html5_peak_shave=true\u0026unplugged_tvhtml5_video_preload_on_focus_delay_ms=0\u0026web_logging_max_batch=150\u0026release_player_on_abandon_for_bulleit_lr_ads_frontend=true\u0026html5_background_cap_idle_secs=60\u0026html5_not_vp9_supported_quality_cap=0\u0026html5_static_abr_resolution_shelf=0\u0026html5_log_rebuffer_events=5";}ytcfg.set({'WEB_PLAYER_CONTEXT_CONFIGS': configs});})();</script>

  <script >
    (function() {
      var setFiller = function() {
        var fillerData = {
          browse: {
            filler: true,
            page: 'browse'
          },
          home: {
            filler: true,
            page: 'home',
            endpoint: {
              commandMetadata: {
                webCommandMetadata: {
                  url: "/",
                  webPageType: "WEB_PAGE_TYPE_BROWSE"
                }
              },
              urlEndpoint: {
                url: "/"
              }
            },
            response: {
              contents: {
                twoColumnBrowseResultsRenderer: {
                  tabs: [{
                    tabRenderer: {
                      selected: true,
                      content: {
                        richGridRenderer: {
                          contents: [],
                          continuations: [{
                            nextContinuationData: {continuation: ''}
                          }]
                        }
                      }
                    }
                  }]
                }
              }
            }
          },
          search: {
            filler: true,
            page: 'search',
            endpoint: {
              commandMetadata: {
                webCommandMetadata: {
                  url: "/results",
                  webPageType: "WEB_PAGE_TYPE_SEARCH"
                }
              },
              urlEndpoint: {
                url: "/results"
              }
            },
            response: {
              contents: {
                twoColumnSearchResultsRenderer: {
                  primaryContents: {
                    sectionListRenderer: {
                      contents: [],
                      subMenu: {
                        searchSubMenuRenderer: {}
                      }
                    }
                  },
                  secondaryContents: {
                    secondarySearchContainerRenderer: {
                      contents: []
                    }
                  }
                }
              }
            }
          },
          watch: {
            filler: true,
            page: 'watch',
            endpoint: {
              commandMetadata: {
                webCommandMetadata: {
                  url: "/watch",
                  webPageType: "WEB_PAGE_TYPE_WATCH"
                }
              },
              urlEndpoint: {
                url: "/watch"
              }
            },
            playerResponse: {
              playabilityStatus: {
                status: 'OK'
              }
            },
            response: {
              contents: {
                twoColumnWatchNextResults: {
                  results: {
                    results: {
                      contents: [{
                        videoPrimaryInfoRenderer: {},
                        videoSecondaryInfoRenderer: {}
                      }]
                    }
                  },
                  secondaryResults: {
                    secondaryResults: {}
                  }
                }
              }
            }
          }
        };

        window.ytcfg.set('FILLER_DATA', fillerData);
      };

        window.getPageData = function() {
          if (window.ytcsi) {window.ytcsi.tick("pr", null, '');}
          var endpoint = null;
            endpoint = {"commandMetadata":{"webCommandMetadata":{"url":"/watch?v=vKLN5UKo87c\u0026feature=youtu.be%0A","webPageType":"WEB_PAGE_TYPE_WATCH","rootVe":3832}},"urlEndpoint":{"url":"/watch?v=vKLN5UKo87c\u0026feature=youtu.be%0A"}};
          var data = {
              page: "watch",
              player: ytplayer.config,
              playerResponse: window.ytInitialPlayerResponse,
                url: "\/watch?v=vKLN5UKo87c\u0026feature=youtu.be%0A",
              response: window.ytInitialData,
              endpoint: endpoint
          };
          return {
            data: data,
            endpoint: endpoint
          };
        };

        if (window.loadDataHook) {
          var pageData = window.getPageData();
          window.loadDataHook(pageData.endpoint, pageData.data);
          window.loadDataHook = null;
        }
        setFiller();

    })();

      var meta = document.createElement('meta');
      meta.name = 'referrer';
      meta.content = 'origin';
      document.getElementsByTagName('head')[0].appendChild(meta);
      var noindexMeta = document.createElement('meta');
      meta.name = 'robots';
      meta.content = 'noindex';
      document.getElementsByTagName('head')[0].appendChild(meta);

  </script>
  
<script >if (window.ytcsi) {window.ytcsi.info("st", 97, '');}</script></body></html>