require 'rtranscoder/mplayer/mplayer_common_task'

module RTranscoder
  class MPlayerTask < MPlayerCommonTask

    # Player Options
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

    # Audio Output Options
    long_option :flag => '-format', :name => :audio_format
    long_option :flag => '-mixer', :name => :audio_mixer
    long_option :flag => '-mixer-channel', :name => :audio_mixer_channel
    long_option :flag => '-softvol', :name => :audio_software_mixer
    long_option :flag => '-volstep', :name => :audio_volume_step

    # Audio Output Options
    long_option :flag => '-ao', :name => :audio_options

    # Video Output Options
    long_option :flag => '-adapter', :name => :video_adapter
    long_option :flag => '-bpp', :name => :video_bpp
    long_option :flag => '-border', :name => :video_border
    long_option :flag => '-brightness', :name => :video_brightness
    long_option :flag => '-contrast', :name => :video_contrast
    long_option :flag => '-display', :name => :x11_display
    long_option :flag => '-dr', :name => :enable_direct_rendering
    long_option :flag => '-dxr2', :name => :dxr2_options
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

    # Video Output Drivers
    long_option :flag => '-vo', :name => :video_output

    non_option :tailing => true, :name => :media

  end
end
