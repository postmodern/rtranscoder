require 'rtranscoder/mplayer/mplayer_common_task'

module RTranscoder
  #
  # ==MEncoder options:
  #
  # <tt>-toolameopts</tt>:: <tt>mencoder.toolame</tt>
  # <tt>-ofps</tt>:: <tt>mencoder.output_fps</tt>
  # <tt>-audio-density</tt>:: <tt>mencoder.audio_density</tt>
  # <tt>-mpegopts</tt>:: <tt>mencoder.mpeg</tt>
  # <tt>-vobsuboutindex</tt>:: <tt>mencoder.vob_output_subtitle_index</tt>
  # <tt>-noencodedups</tt>:: <tt>mencoder.ignore_duplicate_frames</tt>
  # <tt>-twolameopts</tt>:: <tt>mencoder.twolame</tt>
  # <tt>-ovc</tt>:: <tt>mencoder.output_video_codec</tt>
  # <tt>-audio-preload</tt>:: <tt>mencoder.audio_preload</tt>
  # <tt>-lavfopts</tt>:: <tt>mencoder.lavf</tt>
  # <tt>-noodml</tt>:: <tt>mencoder.disable_open_dml_index</tt>
  # <tt>-nuvopts</tt>:: <tt>mencoder.nuv</tt>
  # <tt>-passlogfile</tt>:: <tt>mencoder.pass_log_file</tt>
  # <tt>-o</tt>:: <tt>mencoder.output</tt>
  # <tt>-force-avi-aspect</tt>:: <tt>mencoder.force_avi_aspect</tt>
  # <tt>-fafmttag</tt>:: <tt>mencoder.audio_tag_format</tt>
  # <tt>-lavcopts</tt>:: <tt>mencoder.lavc</tt>
  # <tt>-noskip</tt>:: <tt>mencoder.disable_frame_skipping</tt>
  # <tt>-xvfwopts</tt>:: <tt>mencoder.xvfw</tt>
  # <tt>-skiplimit</tt>:: <tt>mencoder.skip_limit</tt>
  # <tt>-info</tt>:: <tt>mencoder.info</tt>
  # <tt>-ffourcc</tt>:: <tt>mencoder.video_fourcc</tt>
  # <tt>-xvidencopts</tt>:: <tt>mencoder.xvidenc</tt>
  # <tt>-oac</tt>:: <tt>mencoder.output_audio_codec</tt>
  # <tt>-faacopts</tt>:: <tt>mencoder.faac</tt>
  # <tt>-vobsubout</tt>:: <tt>mencoder.vob_output_basename</tt>
  # <tt>-hr-edl-seek</tt>:: <tt>mencoder.hires_edl_seek</tt>
  # <tt>-lameopts</tt>:: <tt>mencoder.lame</tt>
  # <tt>-of</tt>:: <tt>mencoder.output_container</tt>
  # <tt>-audio-delay</tt>:: <tt>mencoder.audio_delay</tt>
  # <tt>-x264encopts</tt>:: <tt>mencoder.x264enc</tt>
  # <tt>-vobsuboutid</tt>:: <tt>mencoder.vob_output_subtitle_language</tt>
  # <tt>-noautoexpand</tt>:: <tt>mencoder.disable_auto_expand</tt>
  #
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
      long_option :flag => "-#{name}opts", :name => name, :separator => ':', :sub_options => true
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
