require 'rtranscoder/ffmpeg/ffmpeg_task'
require 'rtranscoder/ffmpeg/extensions'

require 'rprogram/program'

module RTranscoder
  class FFmpeg < RProgram::Program

    name_program 'ffmpeg'

    #
    # Creates a new FFmpeg object with the specified _path_ of the +ffmpeg+
    # program.
    #
    def initialize(path)
      super(path)
    end

    #
    # See FFmpeg#encode.
    #
    def self.encode(options={},&block)
      self.create.encode(options,&block)
    end

    #
    # See FFmpeg#thumbnail.
    #
    def self.thumbnail(options={})
      self.create.thumbnail(options)
    end

    #
    # Runs +ffmpeg+ with the given _options_ and _block_ using FFmpegTask.
    #
    def encode(options={},&block)
      run_with_task(FFmpegTask.new(options,&block))
    end

    #
    # Extracts a thumbnail using the given _options_.
    #
    # _options_ may contain the following keys:
    # <tt>:video</tt>:: The input video file.
    # <tt>:start</tt>:: The start timestamp of the thumbnail.
    # <tt>:length</tt>:: The duration time of the thumbnail.
    # <tt>:fps</tt>:: The FPS to use, defaults to 1.
    # <tt>:dimension</tt>:: The dimension of the thumbnail.
    # <tt>:image</tt>:: The output thumbnail image.
    #
    def thumbnail(options={})
      encode do |ffmpeg|
        ffmpeg.input = options[:video]
        ffmpeg.disable_audio = true
        ffmpeg.record_start_time = options[:start]
        ffmpeg.record_for = options[:length]
        ffmpeg.record_fps = (options[:fps] || 1)
        ffmpeg.overwrite_file = true
        ffmpeg.output_dimension = options[:dimension]
        ffmpeg.output = options[:image]
      end
    end

  end
end
