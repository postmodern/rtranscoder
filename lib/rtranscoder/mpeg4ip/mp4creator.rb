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
      # See MP4Creator#create.
      #
      def self.create(options={},&block)
        self.find.create(options,&block)
      end

      #
      # See MP4Creator#mux.
      #
      def self.mux(options={})
        self.find.mux(options)
      end

      #
      # Runs the +mp4creator+ program with the given _options_ and the given
      # _block_ using MP4CreatorTask.
      #
      def create(options={},&block)
        run_task(MP4CreatorTask.new(options,&block))
      end

      #
      # Muxes audio and video streams together with the specified _options_.
      #
      # _options_ must contain the following keys:
      # <tt>:audio</tt>:: The audio file to add.
      # <tt>:video</tt>:: The video file to add.
      # <tt>:frame_rate</tt>:: The frame rate of the video stream.
      # <tt>:output</tt>:: The output file.
      #
      # _options_ may contain the following key:
      # <tt>:hint</tt>:: Specifies wether to add hints for QuickTime plugins
      #                  to the output file.
      #
      def mux(options={})
        if File.file?(options[:output])
          File.delete(options[:output])
        end

        create do |mp4creator|
          mp4creator.create = options[:audio]
          mp4creator.file = options[:output]
        end

        create do |mp4creator|
          mp4creator.create = options[:video]
          mp4creator.rate = options[:frame_rate].to_f
          mp4creator.file = options[:output]
        end

        if options[:hint]
          create do |mp4creator|
            mp4creator.hint = 1
            mp4creator.file = options[:output]
          end

          create do |mp4creator|
            mp4creator.hint = 2
            mp4creator.file = options[:output]
          end

          create do |mp4creator|
            mp4creator.optimize = true
            mp4creator.file = options[:output]
          end
        end
      end

    end
  end
end
