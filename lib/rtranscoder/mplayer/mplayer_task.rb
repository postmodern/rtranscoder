require 'rtranscoder/mplayer/mplayer_common_task'

module RTranscoder
  #
  # ==MPlayer options:
  #
  # <tt>-screenw</tt>:: <tt>mplayer.horizontal_resolution</tt>
  # <tt>-dr</tt>:: <tt>mplayer.enable_direct_rendering</tt>
  # <tt>-correct-pts</tt>:: <tt>mplayer.correct_pts</tt>
  # <tt>-noconsolecontrols</tt>:: <tt>mplayer.disable_console_controls</tt>
  # <tt>-geometry</tt>:: <tt>mplayer.geometry</tt>
  # <tt>-zrxdoff</tt>:: <tt>mplayer.zr_x_offset</tt>
  # <tt>-panscanrange</tt>:: <tt>mplayer.pan_and_scan_range</tt>
  # <tt>-no-gui</tt>:: <tt>mplayer.disable_gui</tt>
  # <tt>-playlist</tt>:: <tt>mplayer.playlist</tt>
  # <tt>-bpp</tt>:: <tt>mplayer.video_bpp</tt>
  # <tt>-zrfd</tt>:: <tt>mplayer.zr_force_decimation</tt>
  # <tt>-nodouble</tt>:: <tt>mplayer.disable_double_buffer</tt>
  # <tt>-nocolorkey</tt>:: <tt>mplayer.no_color_key</tt>
  # <tt>-menu-chroot</tt>:: <tt>mplayer.menu_chroot</tt>
  # <tt>-mixer-channel</tt>:: <tt>mplayer.audio_mixer_channel</tt>
  # <tt>-wid</tt>:: <tt>mplayer.window</tt>
  # <tt>-monitor-vfreq</tt>:: <tt>mplayer.monitor_vfreq</tt>
  # <tt>-fs</tt>:: <tt>mplayer.fullscreen</tt>
  # <tt>-identify</tt>:: <tt>mplayer.identify</tt>
  # <tt>-playing-msg</tt>:: <tt>mplayer.playing_message</tt>
  # <tt>-screenh</tt>:: <tt>mplayer.vertical_resolution</tt>
  # <tt>-display</tt>:: <tt>mplayer.x11_display</tt>
  # <tt>-benchmark</tt>:: <tt>mplayer.benchmark</tt>
  # <tt>-loop</tt>:: <tt>mplayer.loop</tt>
  # <tt>-menu-keepdir</tt>:: <tt>mplayer.menu_keep_directory</tt>
  # <tt>-slave</tt>:: <tt>mplayer.slave</tt>
  # <tt>-zrvdec</tt>:: <tt>mplayer.zr_vertical_decimation</tt>
  # <tt>-panscan</tt>:: <tt>mplayer.pan_and_scan</tt>
  # <tt>-adapter</tt>:: <tt>mplayer.video_adapter</tt>
  # <tt>-gui</tt>:: <tt>mplayer.enable_gui</tt>
  # <tt>-rtc</tt>:: <tt>mplayer.rtc</tt>
  # <tt>-zrdev</tt>:: <tt>mplayer.zr_output</tt>
  # <tt>-monitorpixelaspect</tt>:: <tt>mplayer.monitor_pixel_aspect</tt>
  # <tt>-mixer</tt>:: <tt>mplayer.audio_mixer</tt>
  # <tt>-colorkey</tt>:: <tt>mplayer.color_key</tt>
  # <tt>-menu</tt>:: <tt>mplayer.menu</tt>
  # <tt>-vsync</tt>:: <tt>mplayer.video_sync</tt>
  # <tt>-monitor-hfreq</tt>:: <tt>mplayer.monitor_hfreq</tt>
  # <tt>-fbmodeconfig</tt>:: <tt>mplayer.override_frame_buffer</tt>
  # <tt>-enqueue</tt>:: <tt>mplayer.enqueue</tt>
  # <tt>-nomouseinput</tt>:: <tt>mplayer.disable_mouse_input</tt>
  # <tt>-saturation</tt>:: <tt>mplayer.video_saturation</tt>
  # <tt>-skin</tt>:: <tt>mplayer.skin</tt>
  # <tt>-contrast</tt>:: <tt>mplayer.video_contrast</tt>
  # <tt>-menu-cfg</tt>:: <tt>mplayer.menu_config</tt>
  # <tt>-zrquality</tt>:: <tt>mplayer.zr_quality</tt>
  # <tt>-ontop</tt>:: <tt>mplayer.always_on_top</tt>
  # <tt>-ao</tt>:: <tt>mplayer.audio_options</tt>
  # <tt>-framedrop</tt>:: <tt>mplayer.frame_drop</tt>
  # <tt>-mouse-movements</tt>:: <tt>mplayer.mouse_movements</tt>
  # <tt>-zrcrop</tt>:: <tt>mplayer.zr_video</tt>
  # <tt>-monitoraspect</tt>:: <tt>mplayer.monitor_aspect</tt>
  # <tt>-format</tt>:: <tt>mplayer.audio_format</tt>
  # <tt>-autosync</tt>:: <tt>mplayer.auto_sync</tt>
  # <tt>-list-properties</tt>:: <tt>mplayer.list_properties</tt>
  # <tt>-vm</tt>:: <tt>mplayer.video_mode</tt>
  # <tt>-nolirc</tt>:: <tt>mplayer.disable_lirc</tt>
  # <tt>-monitor-dotclock</tt>:: <tt>mplayer.monitor_dotclock</tt>
  # <tt>-fbmode</tt>:: <tt>mplayer.frame_buffer</tt>
  # <tt>-doubleclick-time</tt>:: <tt>mplayer.doubleclick_time</tt>
  # <tt>-vo</tt>:: <tt>mplayer.video_output</tt>
  # <tt>-rootwin</tt>:: <tt>mplayer.root_window</tt>
  # <tt>-input</tt>:: <tt>mplayer.input</tt>
  # <tt>-lircconf</tt>:: <tt>mplayer.lirc_config</tt>
  # <tt>-shuffle</tt>:: <tt>mplayer.shuffle</tt>
  # <tt>-brightness</tt>:: <tt>mplayer.video_brightness</tt>
  # <tt>-zrhelp</tt>:: <tt>mplayer.zr_help</tt>
  # <tt>-nokeepaspect</tt>:: <tt>mplayer.disable_keep_aspect</tt>
  # <tt>-menu-startup</tt>:: <tt>mplayer.menu_startup</tt>
  # <tt>-volstep</tt>:: <tt>mplayer.audio_volume_step</tt>
  # <tt>-fixed-vo</tt>:: <tt>mplayer.fixed_video_output</tt>
  # <tt>-zrbw</tt>:: <tt>mplayer.zr_black_and_white</tt>
  # <tt>-key-fifo-size</tt>:: <tt>mplayer.key_fifo_size</tt>
  # <tt>-sstep</tt>:: <tt>mplayer.skip_step</tt>
  # <tt>-autoq</tt>:: <tt>mplayer.auto_quality</tt>
  # <tt>-guiwid</tt>:: <tt>mplayer.gui_window</tt>
  # <tt>stop-xscreensaver</tt>:: <tt>mplayer.disable_xscreensaver</tt>
  # <tt>-nojoystick</tt>:: <tt>mplayer.disable_joy_stick</tt>
  # <tt>-hue</tt>:: <tt>mplayer.hue</tt>
  # <tt>--help</tt>:: <tt>mplayer.help</tt>
  # <tt>-dxr2</tt>:: <tt>mplayer.dxr2_options</tt>
  # <tt>-crash-debug</tt>:: <tt>mplayer.crash_debug</tt>
  # <tt>-zrydoff</tt>:: <tt>mplayer.zr_y_offset</tt>
  # <tt>-refreshrate</tt>:: <tt>mplayer.refresh_rate</tt>
  # <tt>-hardframedrop</tt>:: <tt>mplayer.hard_frame_drop</tt>
  # <tt>-rtc-device</tt>:: <tt>mplayer.rtc_device</tt>
  # <tt>-border</tt>:: <tt>mplayer.video_border</tt>
  # <tt>-zrhdec</tt>:: <tt>mplayer.zr_horizontal_decimation</tt>
  # <tt>-nograbpointer</tt>:: <tt>mplayer.disable_pointer_grabbing</tt>
  # <tt>-edlout</tt>:: <tt>mplayer.edl_output</tt>
  # <tt>-menu-root</tt>:: <tt>mplayer.menu_root</tt>
  # <tt>-softvol</tt>:: <tt>mplayer.audio_software_mixer</tt>
  # <tt>-xineramascreen</tt>:: <tt>mplayer.xinerama_screen</tt>
  # <tt>-fstype</tt>:: <tt>mplayer.fs_type</tt>
  # <tt>-idle</tt>:: <tt>mplayer.idle</tt>
  # <tt>-softsleep</tt>:: <tt>mplayer.soft_sleep</tt>
  #
  class MPlayerTask < MPlayerCommonTask

    # Player options
    long_option :flag => '-autoq', :name => :auto_quality
    long_option :flag => '-autosync', :name => :auto_sync
    long_option :flag => '-benchmark'
    long_option :flag => '-colorkey', :name => :color_key
    long_option :flag => '-nocolorkey', :name => :no_color_key
    long_option :flag => '-correct-pts'
    long_option :flag => '-crash-debug'
    long_option :flag => '-doubleclick-time'
    long_option :flag => '-edlout', :name => :edl_output
    long_option :flag => '-enqueue'
    long_option :flag => '-fixed-vo', :name => :fixed_video_output
    long_option :flag => '-framedrop', :name => :frame_drop
    long_option :flag => '-gui', :name => :enable_gui
    long_option :flag => '-no-gui', :name => :disable_gui
    long_option :flag => '--help'
    long_option :flag => '-hardframedrop', :name => :hard_frame_drop
    long_option :flag => '-identify'
    long_option :flag => '-idle'
    long_option :flag => '-input'
    long_option :flag => '-key-fifo-size'
    long_option :flag => '-lircconf', :name => :lirc_config
    long_option :flag => '-list-properties'
    long_option :flag => '-loop'
    long_option :flag => '-menu'
    long_option :flag => '-menu-cfg', :name => :menu_config
    long_option :flag => '-menu-chroot'
    long_option :flag => '-menu-keepdir', :name => :menu_keep_directory
    long_option :flag => '-menu-root'
    long_option :flag => '-menu-startup'
    long_option :flag => '-mouse-movements'
    long_option :flag => '-noconsolecontrols', :name => :disable_console_controls
    long_option :flag => '-nojoystick', :name => :disable_joy_stick
    long_option :flag => '-nolirc', :name => :disable_lirc
    long_option :flag => '-nomouseinput', :name => :disable_mouse_input
    long_option :flag => '-rtc'
    long_option :flag => '-playing-msg', :name => :playing_message
    long_option :flag => '-playlist'
    long_option :flag => '-rtc-device'
    long_option :flag => '-shuffle'
    long_option :flag => '-skin'
    long_option :flag => '-slave'
    long_option :flag => '-softsleep', :name => :soft_sleep
    long_option :flag => '-sstep', :name => :skip_step

    # Audio Output options
    long_option :flag => '-format', :name => :audio_format
    long_option :flag => '-mixer', :name => :audio_mixer
    long_option :flag => '-mixer-channel', :name => :audio_mixer_channel
    long_option :flag => '-softvol', :name => :audio_software_mixer
    long_option :flag => '-volstep', :name => :audio_volume_step

    # Audio Output Drivers
    priority_list :flag => '-ao', :name => :audio_options

    # Video Output options
    long_option :flag => '-adapter', :name => :video_adapter
    long_option :flag => '-bpp', :name => :video_bpp
    long_option :flag => '-border', :name => :video_border
    long_option :flag => '-brightness', :name => :video_brightness
    long_option :flag => '-contrast', :name => :video_contrast
    long_option :flag => '-display', :name => :x11_display
    long_option :flag => '-dr', :name => :enable_direct_rendering
    sub_options :flag => '-dxr2', :name => :dxr2_options
    long_option :flag => '-fbmode', :name => :frame_buffer
    long_option :flag => '-fbmodeconfig', :name => :override_frame_buffer
    long_option :flag => '-fs', :name => :fullscreen
    long_option :flag => '-fstype', :name => :fs_type
    long_option :flag => '-geometry'
    long_option :flag => '-guiwid', :name => :gui_window
    long_option :flag => '-hue'
    long_option :flag => '-monitor-dotclock'
    long_option :flag => '-monitor-hfreq'
    long_option :flag => '-monitor-vfreq'
    long_option :flag => '-monitoraspect', :name => :monitor_aspect
    long_option :flag => '-monitorpixelaspect', :name => :monitor_pixel_aspect
    long_option :flag => '-nodouble', :name => :disable_double_buffer
    long_option :flag => '-nograbpointer', :name => :disable_pointer_grabbing
    long_option :flag => '-nokeepaspect', :name => :disable_keep_aspect
    long_option :flag => '-ontop', :name => :always_on_top
    long_option :flag => '-panscan', :name => :pan_and_scan
    long_option :flag => '-panscanrange', :name => :pan_and_scan_range
    long_option :flag => '-refreshrate', :name => :refresh_rate
    long_option :flag => '-rootwin', :name => :root_window
    long_option :flag => '-saturation', :name => :video_saturation
    long_option :flag => '-screenh', :name => :vertical_resolution
    long_option :flag => '-screenw', :name => :horizontal_resolution
    long_option :flag => 'stop-xscreensaver', :name => :disable_xscreensaver
    long_option :flag => '-vm', :name => :video_mode
    long_option :flag => '-vsync', :name => :video_sync
    long_option :flag => '-wid', :name => :window
    long_option :flag => '-xineramascreen', :name => :xinerama_screen
    long_option :flag => '-zrbw', :name => :zr_black_and_white
    long_option :flag => '-zrcrop', :name => :zr_video
    long_option :flag => '-zrdev', :name => :zr_output
    long_option :flag => '-zrfd', :name => :zr_force_decimation
    long_option :flag => '-zrhdec', :name => :zr_horizontal_decimation
    long_option :flag => '-zrhelp', :name => :zr_help
    long_option :flag => '-zrquality', :name => :zr_quality
    long_option :flag => '-zrvdec', :name => :zr_vertical_decimation
    long_option :flag => '-zrxdoff', :name => :zr_x_offset
    long_option :flag => '-zrydoff', :name => :zr_y_offset

    # Video Output Driver options
    priority_list :flag => '-vo', :name => :video_output

    non_option :tailing => true, :name => :media

  end
end
