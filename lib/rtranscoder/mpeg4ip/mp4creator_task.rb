require 'rprogram/task'

module RTranscoder
  module MPEG4IP
    class MP4CreatorTask < RProgram::Task

      # Options
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

    end
  end
end
