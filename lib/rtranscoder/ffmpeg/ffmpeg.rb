require 'rtranscoder/ffmpeg/ffmpeg_task'
require 'rtranscoder/extensions'

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
      self.find.encode(options,&block)
    end

    #
    # See FFmpeg#thumbnail.
    #
    def self.thumbnail(options={})
      self.find.thumbnail(options)
    end

    #
    # Runs the +ffmpeg+ program with the given _options_ and the given
    # _block_ using FFmpegTask.
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
    # <tt>:frames</tt>:: Number of video frames to record.
    # <tt>:fps</tt>:: The FPS to use, defaults to 1.
    # <tt>:width</tt>:: The width of the thumbnail.
    # <tt>:height</tt>:: The height of the thumbnail.
    # <tt>:image</tt>:: The output thumbnail image.
    #
    def thumbnail(options={})
      image = File.expand_path(options[:image])

      encode do |ffmpeg|
        ffmpeg.input = options[:video]
        ffmpeg.record_start_time = options[:start]
        ffmpeg.record_for = options[:length]
        ffmpeg.video_frames = options[:frames]
        ffmpeg.fps = (options[:fps] || 1)
        ffmpeg.video_frame_size = "#{options[:width]}x#{options[:height]}"
        ffmpeg.disable_audio = true
        ffmpeg.overwrite_output_files = true
        ffmpeg.output = image
      end

      image_search = image.split('%d').map { |part|
        Regexp.escape(part)
      }.join('*')

      return Dir[image_search]
    end

  end
end
