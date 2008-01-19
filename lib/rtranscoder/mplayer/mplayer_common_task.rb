require 'rprogram/task'

module RTranscoder
  class MPlayerCommonTask < RProgram::Task

    protected

    def self.sub_options(opts={})
      long_option :flag => opts[:flag], :name => opts[:name], :separator => ':', :sub_options => true
    end

    def self.priority_list(opts={})
      long_option :flag => opts[:flag], :name => opts[:name], :separator => ','
    end

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
    sub_options :flag => '-cdda'
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
    long_option :flag => '-mc'
    sub_options :flag => '-mf'
    long_option :flag => '-ni', :name => :non_interleaved_avi_parser
    long_option :flag => '-nobps', :name => :disable_bps
    long_option :flag => '-noextbased', :name => :disable_ext_based_demuxer
    long_option :flag => '-passwd', :name => :http_password
    long_option :flag => '-prefer-ipv4'
    long_option :flag => '-prefer-ipv6'
    long_option :flag => '-psprobe', :name => :probe_into_stream
    sub_options :flag => '-pvr'
    sub_options :flag => '-radio'
    sub_options :flag => '-rawaudio', :name => :raw_audio
    sub_options :flag => '-rawvideo', :name => :raw_video
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
    sub_options :flag => '-tv'
    sub_options :flag => '-tvscan', :name => :tv_scan
    long_option :flag => '-user', :name => :http_username
    long_option :flag => '-user-agent', :name => :http_user_agent
    long_option :flag => '-vid', :name => :video_channel
    long_option :flag => '-vivo', :name => :vivo_audio_parameters

    # Decoding/Filtering options
    priority_list :flag => '-ac', :name => :audio_codecs
    sub_options :flag => '-af-adv', :name => :advanced_audio_filtering
    priority_list :flag => '-afm', :name => :audio_codec_families
    long_option :flag => '-aspect', :name => :aspect_ratio
    long_option :flag => '-noaspect', :name => :disable_aspect_ratio
    long_option :flag => '-field-dominance'
    long_option :flag => '-flip'
    sub_options :flag => '-lavdopts', :name => :libavcodec
    long_option :flag => '-noslices', :name => :disable_slices
    long_option :flag => '-nosound', :name => :disable_sound
    long_option :flag => '-novideo', :name => :disable_video
    long_option :flag => '-pp', :name => :dll_postprocess_level
    long_option :flag => '-pphelp', :name => :postprocess_help
    long_option :flag => '-ssf', :name => :software_scaler
    long_option :flag => '-stereo'
    long_option :flag => '-sws', :name => :software_scaler_algorithm
    priority_list :flag => '-vc', :name => :video_codecs
    priority_list :flag => '-vfm', :name => :video_codec_families
    sub_options :flag => '-xvidopts', :name => :xvid_decoding
    long_option :flag => '-zoom'

    # Audio Filters
    sub_options :flag => '-af', :name => :audio_filters

    # Video Filters
    sub_options :flag => '-vf', :name => :video_filters
    long_option :flag => '-vf-add', :name => :append_video_filters, :separator => ','
    long_option :flag => '-vf-pre', :name => :prepend_video_filters, :separator => ','
    long_option :flag => '-vf-del', :name => :delete_video_filters, :separator => ','
    long_option :flag => '-vf-clr', :name => :clear_video_filters

  end
end
