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

  end
end
