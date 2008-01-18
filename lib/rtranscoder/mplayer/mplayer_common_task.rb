require 'rprogram/task'

module RTranscoder
  class MPlayerCommonTask < RProgram::Task

    # General options
    long_option :flag => '-codecs-file'
    long_option :flag => '-include'
    long_option :flag => '-list-options'
    long_option :flag => '-msgcharset', :name => :message_charset
    long_option :flag => '-msglevel', :name => :message_verbose
    long_option :flag => '-quiet'
    long_option :flag => '-priority'
    long_option :flag => '-profile'
    long_option :flag => '-really-quiet'
    long_option :flag => '-show-profile'
    long_option :flag => '-use-filedir-conf'
    short_option :flag => '-o', :name => :output
    short_option :flag => '-v', :name => :verbose

    # Demuxer/Stream options
    long_option :flag => '-a52drc'
    long_option :flag => '-aid', :name => :audio_channel
    long_option :flag => '-alang', :name => :audio_language
    long_option :flag => '-audio-demuxer'
    long_option :flag => '-audiofile', :name => :audio_file
    long_option :flag => '-audiofile-cache', :name => :audio_file_cache
    long_option :flag => '-reuse-socket'
    long_option :flag => '-bandwidth'
    long_option :flag => '-cache'
    long_option :flag => '-nocache'
    long_option :flag => '-cache-min', :name => :cache_minimum
    long_option :flag => '-cache-seek-min', :name => :cache_seek_minimum
    long_option :flag => '-cdda'
    long_option :flag => '-cdrom-device'
    long_option :flag => '-channels'
    long_option :flag => '-chapter'
    long_option :flag => '-cookies'
    long_option :flag => '-cookies-file'
    long_option :flag => '-delay'
    long_option :flag => '-ignore-start'
    long_option :flag => '-demuxer'
    long_option :flag => '-dvbin'
    long_option :flag => '-dvd-device'
    long_option :flag => '-dvd-speed'
    long_option :flag => '-dvdangle', :name => :dvd_angle
    long_option :flag => '-edl'
    long_option :flag => '-endpos', :name => :end_position
    long_option :flag => '-forceidx', :name => :force_index
    long_option :flag => '-fps'
    long_option :flag => '-frames'
    long_option :flag => '-hr-mp3-seek', :name => :hires_mp3_seeking
    long_option :flag => '-idx', :name => :index
    long_option :flag => '-noidx', :name => :skip_index
    long_option :flag => '-ipv4-only-proxy'
    long_option :flag => '-loadidx', :name => :load_index
    long_option :flag => '-mc' # TODO: add formating
    long_option :flag => '-mf' # TODO: add formating
    long_option :flag => '-ni', :name => :non_interleaved_avi_parser
    long_option :flag => '-nobps', :name => :disable_bps
    long_option :flag => '-noextbased', :name => :disable_ext_based_demuxer
    long_option :flag => '-passwd', :name => :http_password
    long_option :flag => '-prefer-ipv4'
    long_option :flag => '-prefer-ipv6'
    long_option :flag => '-psprobe', :name => :probe_into_stream
    long_option :flag => '-pvr' # TODO: add formating
    long_option :flag => '-radio' # TODO: add formating
    long_option :flag => '-rawaudio', :name => :raw_audio # TODO: add formating
    long_option :flag => '-rawvideo', :name => :raw_video # TODO: add formating
    long_option :flag => '-rtsp-port'
    long_option :flag => '-rtsp-destination'
    long_option :flag => '-rtsp-stream-over-tcp'
    long_option :flag => '-saveidx', :name => :save_index
    long_option :flag => '-sb', :name => :seek_to_byte
    long_option :flag => '-speed'
    long_option :flag => '-srate', :name => :output_sample_rate
    long_option :flag => '-ss', :name => :seek_to_time
    long_option :flag => '-tskeepbroken', :name => :ignore_broken_ts_packets
    long_option :flag => '-tsprobe', :name => :probe_into_ts_stream
    long_option :flag => '-tsprog', :name => :ts_program
    long_option :flag => '-tv' # TODO: add formating
    long_option :flag => '-tvscan', :name => :tv_scan # TODO: add formating
    long_option :flag => '-user', :name => :http_username
    long_option :flag => '-user-agent', :name => :http_user_agent
    long_option :flag => '-vid', :name => :video_channel
    long_option :flag => '-vivo', :name => :vivo_audio_parameters

  end
end
