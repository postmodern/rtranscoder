require 'rprogram/task'

module RTranscoder
  #
  # MPlayer Common options:
  #
  # <tt>-lavdopts</tt>:: <tt>mplayer.libavcodec</tt>
  # <tt>-field-dominance</tt>:: <tt>mplayer.field_dominance</tt>
  # <tt>-msglevel</tt>:: <tt>mplayer.message_verbose</tt>
  # <tt>-demuxer</tt>:: <tt>mplayer.demuxer</tt>
  # <tt>-rawaudio</tt>:: <tt>mplayer.raw_audio</tt>
  # <tt>-list-options</tt>:: <tt>mplayer.list_options</tt>
  # <tt>-vf-pre</tt>:: <tt>mplayer.prepend_video_filters</tt>
  # <tt>-ac</tt>:: <tt>mplayer.audio_codecs</tt>
  # <tt>-chapter</tt>:: <tt>mplayer.chapter</tt>
  # <tt>-ni</tt>:: <tt>mplayer.non_interleaved_avi_parser</tt>
  # <tt>-rtsp-port</tt>:: <tt>mplayer.rtsp_port</tt>
  # <tt>-vfm</tt>:: <tt>mplayer.video_codec_families</tt>
  # <tt>-tvscan</tt>:: <tt>mplayer.tv_scan</tt>
  # <tt>-bandwidth</tt>:: <tt>mplayer.bandwidth</tt>
  # <tt>-endpos</tt>:: <tt>mplayer.end_position</tt>
  # <tt>-mf</tt>:: <tt>mplayer.mf</tt>
  # <tt>-pp</tt>:: <tt>mplayer.dll_postprocess_level</tt>
  # <tt>-srate</tt>:: <tt>mplayer.output_sample_rate</tt>
  # <tt>-show-profile</tt>:: <tt>mplayer.show_profile</tt>
  # <tt>-audiofile</tt>:: <tt>mplayer.audio_file</tt>
  # <tt>-edl</tt>:: <tt>mplayer.edl</tt>
  # <tt>-noaspect</tt>:: <tt>mplayer.disable_aspect_ratio</tt>
  # <tt>-tv</tt>:: <tt>mplayer.tv</tt>
  # <tt>-codecs-file</tt>:: <tt>mplayer.codecs_file</tt>
  # <tt>-msgcharset</tt>:: <tt>mplayer.message_charset</tt>
  # <tt>-ignore-start</tt>:: <tt>mplayer.ignore_start</tt>
  # <tt>-psprobe</tt>:: <tt>mplayer.probe_into_stream</tt>
  # <tt>-vf-add</tt>:: <tt>mplayer.append_video_filters</tt>
  # <tt>-vivo</tt>:: <tt>mplayer.vivo_audio_parameters</tt>
  # <tt>-include</tt>:: <tt>mplayer.include</tt>
  # <tt>-radio</tt>:: <tt>mplayer.radio</tt>
  # <tt>-channels</tt>:: <tt>mplayer.channels</tt>
  # <tt>-loadidx</tt>:: <tt>mplayer.load_index</tt>
  # <tt>-vc</tt>:: <tt>mplayer.video_codecs</tt>
  # <tt>-tsprog</tt>:: <tt>mplayer.ts_program</tt>
  # <tt>-reuse-socket</tt>:: <tt>mplayer.reuse_socket</tt>
  # <tt>-dvdangle</tt>:: <tt>mplayer.dvd_angle</tt>
  # <tt>-mc</tt>:: <tt>mplayer.mc</tt>
  # <tt>-zoom</tt>:: <tt>mplayer.zoom</tt>
  # <tt>-novideo</tt>:: <tt>mplayer.disable_video</tt>
  # <tt>-sb</tt>:: <tt>mplayer.seek_to_byte</tt>
  # <tt>-really-quiet</tt>:: <tt>mplayer.really_quiet</tt>
  # <tt>-alang</tt>:: <tt>mplayer.audio_language</tt>
  # <tt>-cache</tt>:: <tt>mplayer.cache</tt>
  # <tt>-dvd-speed</tt>:: <tt>mplayer.dvd_speed</tt>
  # <tt>-aspect</tt>:: <tt>mplayer.aspect_ratio</tt>
  # <tt>-speed</tt>:: <tt>mplayer.speed</tt>
  # <tt>-passwd</tt>:: <tt>mplayer.http_password</tt>
  # <tt>-delay</tt>:: <tt>mplayer.delay</tt>
  # <tt>-vf</tt>:: <tt>mplayer.video_filters</tt>
  # <tt>-vid</tt>:: <tt>mplayer.video_channel</tt>
  # <tt>-pvr</tt>:: <tt>mplayer.pvr</tt>
  # <tt>-cdrom-device</tt>:: <tt>mplayer.cdrom_device</tt>
  # <tt>-noidx</tt>:: <tt>mplayer.skip_index</tt>
  # <tt>-sws</tt>:: <tt>mplayer.software_scaler_algorithm</tt>
  # <tt>-tsprobe</tt>:: <tt>mplayer.probe_into_ts_stream</tt>
  # <tt>-ipv4-only-proxy</tt>:: <tt>mplayer.ipv4_only_proxy</tt>
  # <tt>-audio-demuxer</tt>:: <tt>mplayer.audio_demuxer</tt>
  # <tt>-cache-seek-min</tt>:: <tt>mplayer.cache_seek_minimum</tt>
  # <tt>-stereo</tt>:: <tt>mplayer.stereo</tt>
  # <tt>-nosound</tt>:: <tt>mplayer.disable_sound</tt>
  # <tt>-dvd-device</tt>:: <tt>mplayer.dvd_device</tt>
  # <tt>-saveidx</tt>:: <tt>mplayer.save_index</tt>
  # <tt>-profile</tt>:: <tt>mplayer.profile</tt>
  # <tt>-aid</tt>:: <tt>mplayer.audio_channel</tt>
  # <tt>-vf-clr</tt>:: <tt>mplayer.clear_video_filters</tt>
  # <tt>-afm</tt>:: <tt>mplayer.audio_codec_families</tt>
  # <tt>-noextbased</tt>:: <tt>mplayer.disable_ext_based_demuxer</tt>
  # <tt>-rtsp-stream-over-tcp</tt>:: <tt>mplayer.rtsp_stream_over_tcp</tt>
  # <tt>-cookies-file</tt>:: <tt>mplayer.cookies_file</tt>
  # <tt>-af</tt>:: <tt>mplayer.audio_filters</tt>
  # <tt>-user-agent</tt>:: <tt>mplayer.http_user_agent</tt>
  # <tt>-hr-mp3-seek</tt>:: <tt>mplayer.hires_mp3_seeking</tt>
  # <tt>-prefer-ipv6</tt>:: <tt>mplayer.prefer_ipv6</tt>
  # <tt>-cdda</tt>:: <tt>mplayer.cdda</tt>
  # <tt>-ssf</tt>:: <tt>mplayer.software_scaler</tt>
  # <tt>-tskeepbroken</tt>:: <tt>mplayer.ignore_broken_ts_packets</tt>
  # <tt>-cache-min</tt>:: <tt>mplayer.cache_minimum</tt>
  # <tt>-frames</tt>:: <tt>mplayer.frames</tt>
  # <tt>-o</tt>:: <tt>mplayer.output</tt>
  # <tt>-a52drc</tt>:: <tt>mplayer.a52drc</tt>
  # <tt>-noslices</tt>:: <tt>mplayer.disable_slices</tt>
  # <tt>-flip</tt>:: <tt>mplayer.flip</tt>
  # <tt>-dvbin</tt>:: <tt>mplayer.dvbin</tt>
  # <tt>-rawvideo</tt>:: <tt>mplayer.raw_video</tt>
  # <tt>-quiet</tt>:: <tt>mplayer.quiet</tt>
  # <tt>-v</tt>:: <tt>mplayer.verbose</tt>
  # <tt>-vf-del</tt>:: <tt>mplayer.delete_video_filters</tt>
  # <tt>-af-adv</tt>:: <tt>mplayer.advanced_audio_filtering</tt>
  # <tt>-cookies</tt>:: <tt>mplayer.cookies</tt>
  # <tt>-nobps</tt>:: <tt>mplayer.disable_bps</tt>
  # <tt>-rtsp-destination</tt>:: <tt>mplayer.rtsp_destination</tt>
  # <tt>-xvidopts</tt>:: <tt>mplayer.xvid_decoding</tt>
  # <tt>-user</tt>:: <tt>mplayer.http_username</tt>
  # <tt>-nocache</tt>:: <tt>mplayer.nocache</tt>
  # <tt>-forceidx</tt>:: <tt>mplayer.force_index</tt>
  # <tt>-prefer-ipv4</tt>:: <tt>mplayer.prefer_ipv4</tt>
  # <tt>-idx</tt>:: <tt>mplayer.index</tt>
  # <tt>-pphelp</tt>:: <tt>mplayer.postprocess_help</tt>
  # <tt>-ss</tt>:: <tt>mplayer.seek_to_time</tt>
  # <tt>-audiofile-cache</tt>:: <tt>mplayer.audio_file_cache</tt>
  # <tt>-fps</tt>:: <tt>mplayer.fps</tt>
  # <tt>-priority</tt>:: <tt>mplayer.priority</tt>
  # <tt>-use-filedir-conf</tt>:: <tt>mplayer.use_filedir_conf</tt>
  class MPlayerCommonTask < RProgram::Task

    protected

    def self.sub_options(opts={})
      long_option :flag => opts[:flag], :name => opts[:name], :separator => ',', :sub_options => true
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
