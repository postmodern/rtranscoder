require 'rtranscoder/mplayer/mplayer_common_task'

module RTranscoder
  class MEncoderTask < MPlayerCommonTask

    # Decoding/Filtering options
    long_option :flag => '-ac', :name => :audio_codecs # TODO: add formating
    long_option :flag => '-af-adv', :name => :advanced_audio_filtering # TODO: add formating
    long_option :flag => '-afm', :name => :audio_codec_families # TODO: add formating
    long_option :flag => '-aspect', :name => :aspect_ratio
    long_option :flag => '-noaspect', :name => :disable_aspect_ratio
    long_option :flag => '-field-dominance'
    long_option :flag => '-flip'
    long_option :flag => '-lavdopts', :name => :libavcodec # TODO: add formating
    long_option :flag => '-noslices', :name => :disable_slices
    long_option :flag => '-nosound', :name => :disable_sound
    long_option :flag => '-novideo', :name => :disable_video
    long_option :flag => '-pp', :name => :dll_postprocess_level
    long_option :flag => '-pphelp', :name => :postprocess_help
    long_option :flag => '-ssf', :name => :software_scaler
    long_option :flag => '-stereo'
    long_option :flag => '-sws', :name => :software_scaler_algorithm
    long_option :flag => '-vc', :name => :video_codecs
    long_option :flag => '-vfm', :name => :video_codec_families
    long_option :flag => '-xvidopts', :name => :xvid_decoding

    # General encoding options
    long_option :flag => '-audio-delay'
    long_option :flag => '-audio-density'
    long_option :flag => '-audio-preload'
    long_option :flag => '-fafmttag', :name => :audio_tag_format
    long_option :flag => '-ffourcc', :name => :video_fourcc
    long_option :flag => '-force-avi-aspect'
    long_option :flag => '-hr-edl-seek', :name => :hires_edl_seek
    long_option :flag => '-info' # TODO: add formating
    long_option :flag => '-noautoexpand', :name => :disable_auto_expand
    long_option :flag => '-noencodedups', :name => :ignore_duplicate_frames
    long_option :flag => '-noodml', :name => :disable_open_dml_index
    long_option :flag => '-noskip', :name => :disable_frame_skipping
    short_option :flag => '-o', :name => :output
    long_option :flag => '-oac', :name => :output_audio_codec
    long_option :flag => '-of', :name => :output_container
    long_option :flag => '-ofps', :name => :output_fps
    long_option :flag => '-ovc', :name => :output_video_codec
    long_option :flag => '-passlogfile', :name => :pass_log_file
    long_option :flag => '-skiplimit', :name => :skip_limit
    long_option :flag => '-vobsubout', :name => :vob_output_basename
    long_option :flag => '-vobsuboutid', :name => :vob_output_subtitle_language
    long_option :flag => '-vobsuboutindex', :name => :vob_output_subtitle_index

    def self.codec_options(name)
      long_option :flag => "-#{name}opts" # TODO: add formating
    end

    # Codec specific encoding options
    codec_options :lavc
    codec_options :xvidenc
    codec_options :lame
    codec_options :toolame
    codec_options :twolame
    codec_options :nuv
    codec_options :xvfw
    codec_options :faac
    codec_options :x264enc
    codec_options :mpeg
    codec_options :lavf

    non_option :leading => true, :name => :input
    non_option :tailing => true, :name => :smb_output

  end
end
