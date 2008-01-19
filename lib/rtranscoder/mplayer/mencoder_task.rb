require 'rtranscoder/mplayer/mplayer_common_task'

module RTranscoder
  class MEncoderTask < MPlayerCommonTask

    # General Encoding options
    long_option :flag => '-audio-delay'
    long_option :flag => '-audio-density'
    long_option :flag => '-audio-preload'
    long_option :flag => '-fafmttag', :name => :audio_tag_format
    long_option :flag => '-ffourcc', :name => :video_fourcc
    long_option :flag => '-force-avi-aspect'
    long_option :flag => '-hr-edl-seek', :name => :hires_edl_seek
    sub_options :flag => '-info'
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

    protected

    def self.codec_options(name)
      long_option :flag => "-#{name}opts", :name => name, :separator => ',', :sub_options => true
    end

    # Codec Specific Encoding options
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

    non_option :tailing => true, :name => :input
    non_option :tailing => true, :name => :output_file
    non_option :tailing => true, :name => :smb_output

  end
end
