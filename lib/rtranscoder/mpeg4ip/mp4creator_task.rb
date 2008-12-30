require 'rprogram/task'

module RTranscoder
  module MPEG4IP
    #
    # == MP4Creator Options:
    #
    # <tt>-aac-old-file-format</tt>:: <tt>mp4creator.aac_old_file_format</tt>.
    # <tt>-aac-profile</tt>:: <tt>mp4creator.aac_profile</tt>
    # <tt>-create</tt>:: <tt>mp4creator.create</tt>
    # <tt>-extract</tt>:: <tt>mp4creator.extract</tt>
    # <tt>-delete</tt>:: <tt>mp4creator.delete</tt>
    # <tt>-hint</tt>:: <tt>mp4creator.hint</tt>
    # <tt>-interleave</tt>:: <tt>mp4creator.interleave</tt>
    # <tt>-list</tt>:: <tt>mp4creator.list</tt>
    # <tt>-mut</tt>:: <tt>mp4creator.mut</tt>
    # <tt>-mpeg4-video-profile</tt>:: <tt>mp4creator.mpeg4_video_profile</tt>
    # <tt>-optimize</tt>:: <tt>mp4creator.optimize</tt>
    # <tt>-rate</tt>:: <tt>mp4creator.rate</tt>
    # <tt>-use64bitstime</tt>:: <tt>mp4creator.use_64bit_timestamps</tt>
    # <tt>-verbosity</tt>:: <tt>mp4creator.verbosity</tt>
    # <tt>-help</tt>:: <tt>mp4creator.help</tt>
    # <tt>FILE</tt>:: <tt>mp4creator.file</tt>
    #
    class MP4CreatorTask < RProgram::Task

      long_option :flag => '-aac-old-file-format'
      long_option :flag => '-aac-profile', :equals => true
      long_option :flag => '-create', :equals => true
      long_option :flag => '-extract', :equals => true
      long_option :flag => '-delete', :equals => true
      long_option :flag => '-hint', :equals => true
      long_option :flag => '-interleave'
      long_option :flag => '-list'
      long_option :flag => '-mut', :equals => true
      long_option :flag => '-mpeg4-video-profile', :equals => true
      long_option :flag => '-optimize'
      long_option :flag => '-rate', :equals => true
      long_option :flag => '-use64bitstime', :name => :use_64bit_timestamps
      long_option :flag => '-verbosity', :equals => true
      long_option :flag => '-help'

      non_option :tailing => true, :name => :file

    end
  end
end
