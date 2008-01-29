require 'rtranscoder/mplayer/mplayer_common_task'

module RTranscoder
  #
  # ==MEncoder options:
  #
  # <tt>-toolameopts</tt>:: <tt>mplayer.toolame</tt>
  # <tt>-ofps</tt>:: <tt>mplayer.output_fps</tt>
  # <tt>-audio-density</tt>:: <tt>mplayer.audio_density</tt>
  # <tt>-mpegopts</tt>:: <tt>mplayer.mpeg</tt>
  # <tt>-vobsuboutindex</tt>:: <tt>mplayer.vob_output_subtitle_index</tt>
  # <tt>-noencodedups</tt>:: <tt>mplayer.ignore_duplicate_frames</tt>
  # <tt>-twolameopts</tt>:: <tt>mplayer.twolame</tt>
  # <tt>-ovc</tt>:: <tt>mplayer.output_video_codec</tt>
  # <tt>-audio-preload</tt>:: <tt>mplayer.audio_preload</tt>
  # <tt>-lavfopts</tt>:: <tt>mplayer.lavf</tt>
  # <tt>-noodml</tt>:: <tt>mplayer.disable_open_dml_index</tt>
  # <tt>-nuvopts</tt>:: <tt>mplayer.nuv</tt>
  # <tt>-passlogfile</tt>:: <tt>mplayer.pass_log_file</tt>
  # <tt>-o</tt>:: <tt>mplayer.output</tt>
  # <tt>-force-avi-aspect</tt>:: <tt>mplayer.force_avi_aspect</tt>
  # <tt>-fafmttag</tt>:: <tt>mplayer.audio_tag_format</tt>
  # <tt>-lavcopts</tt>:: <tt>mplayer.lavc</tt>
  # <tt>-noskip</tt>:: <tt>mplayer.disable_frame_skipping</tt>
  # <tt>-xvfwopts</tt>:: <tt>mplayer.xvfw</tt>
  # <tt>-skiplimit</tt>:: <tt>mplayer.skip_limit</tt>
  # <tt>-info</tt>:: <tt>mplayer.info</tt>
  # <tt>-ffourcc</tt>:: <tt>mplayer.video_fourcc</tt>
  # <tt>-xvidencopts</tt>:: <tt>mplayer.xvidenc</tt>
  # <tt>-oac</tt>:: <tt>mplayer.output_audio_codec</tt>
  # <tt>-faacopts</tt>:: <tt>mplayer.faac</tt>
  # <tt>-vobsubout</tt>:: <tt>mplayer.vob_output_basename</tt>
  # <tt>-hr-edl-seek</tt>:: <tt>mplayer.hires_edl_seek</tt>
  # <tt>-lameopts</tt>:: <tt>mplayer.lame</tt>
  # <tt>-of</tt>:: <tt>mplayer.output_container</tt>
  # <tt>-audio-delay</tt>:: <tt>mplayer.audio_delay</tt>
  # <tt>-x264encopts</tt>:: <tt>mplayer.x264enc</tt>
  # <tt>-vobsuboutid</tt>:: <tt>mplayer.vob_output_subtitle_language</tt>
  # <tt>-noautoexpand</tt>:: <tt>mplayer.disable_auto_expand</tt>
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
