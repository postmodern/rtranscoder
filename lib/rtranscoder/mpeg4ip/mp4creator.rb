require 'rtranscoder/mpeg4ip/mp4creator_task'
require 'rtranscoder/extensions'

require 'rprogram/program'

module RTranscoder
  module MPEG4IP
    class MP4Creator < RProgram::Program

      name_program :mp4creator

      #
      # Creates a new MP4Creator object with the specified _path_ of the
      # +mp4creator+ program.
      #
      def initialize(path)
        super(path)
      end

      #
      # See MP4Creator#play.
      #
      def self.play(options={},&block)
        self.find.play(options,&block)
      end

      #
      # Runs the +mp4creator+ program with the given _options_ and the given
      # _block_ using MP4CreatorTask.
      #
      def play(options={},&block)
        run_task(MP4CreatorTask.new(options,&block))
      end

    end
  end
end
